import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:office_hr/core/router/app_router.dart';

class QrScannerScreen extends ConsumerStatefulWidget {
  const QrScannerScreen({super.key});

  @override
  ConsumerState<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends ConsumerState<QrScannerScreen> {
  late final MobileScannerController _controller;
  bool _handling = false;
  String? _message;

  @override
  void initState() {
    super.initState();
    _controller = MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
      formats: const [BarcodeFormat.qrCode],
      facing: CameraFacing.back,
      autoStart: true,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _onDetect(BarcodeCapture capture) async {
    if (_handling) return;
    final raw = capture.barcodes
        .map((barcode) => barcode.rawValue)
        .firstWhere((value) => value != null && value.trim().isNotEmpty, orElse: () => null);
    if (raw == null) return;

    final userId = _extractUserId(raw);
    _handling = true;

    if (userId == null) {
      HapticFeedback.heavyImpact();
      setState(() => _message = 'This is not a valid Office HR ID code.');
      await Future<void>.delayed(const Duration(milliseconds: 1600));
      if (!mounted) return;
      setState(() => _message = null);
      _handling = false;
      return;
    }

    await _controller.stop();
    HapticFeedback.mediumImpact();
    if (!mounted) return;

    await context.push('${AppRoutes.userDetails}/$userId');
    if (!mounted) return;
    _handling = false;
    setState(() => _message = null);
    await _controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: MobileScanner(
              controller: _controller,
              onDetect: _onDetect,
              errorBuilder: (context, error) => _ScannerError(error: error),
              placeholderBuilder: (context) => const ColoredBox(
                color: Colors.black,
                child: Center(
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              ),
            ),
          ),
          const Positioned.fill(
            child: _ScannerOverlay(color: Color(0xFF4C8DFF)),
          ),
          _TopControls(controller: _controller),
          _BottomPanel(message: _message),
        ],
      ),
    );
  }
}

class _TopControls extends StatelessWidget {
  const _TopControls({required this.controller});

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              _CircleButton(
                icon: Icons.close_rounded,
                onTap: () => context.pop(),
              ),
              const Spacer(),
              _CircleButton(
                icon: Icons.flashlight_on_rounded,
                onTap: () => controller.toggleTorch(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withValues(alpha: 0.45),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Icon(icon, color: Colors.white, size: 22),
        ),
      ),
    );
  }
}

class _BottomPanel extends StatelessWidget {
  const _BottomPanel({required this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: message == null
                    ? Container(
                        key: const ValueKey('hint'),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.55),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.qr_code_scanner_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                'Align the QR code within the frame to scan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        key: const ValueKey('error'),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF7F1D1D),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.error_outline_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                message!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ScannerOverlay extends StatefulWidget {
  const _ScannerOverlay({required this.color});

  final Color color;

  @override
  State<_ScannerOverlay> createState() => _ScannerOverlayState();
}

class _ScannerOverlayState extends State<_ScannerOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animation = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final size = constraints.biggest;
          final side = math.min(size.width, size.height) * 0.68;
          final rect = Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: side,
            height: side,
          );

          return AnimatedBuilder(
            animation: _animation,
            builder: (context, _) {
              final lineY = rect.top + 12 + (rect.height - 24) * _animation.value;
              return Stack(
                children: [
                  Positioned.fill(
                    child: CustomPaint(
                      painter: _ScannerOverlayPainter(
                        scanWindow: rect,
                        color: widget.color,
                      ),
                    ),
                  ),
                  Positioned(
                    left: rect.left + 12,
                    right: size.width - rect.right + 12,
                    top: lineY,
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            widget.color.withValues(alpha: 0),
                            widget.color,
                            widget.color.withValues(alpha: 0),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: widget.color.withValues(alpha: 0.8),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class _ScannerOverlayPainter extends CustomPainter {
  _ScannerOverlayPainter({required this.scanWindow, required this.color});

  final Rect scanWindow;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final background = Path()..addRect(Offset.zero & size);
    final cutout = Path()
      ..addRRect(
        RRect.fromRectAndRadius(scanWindow, const Radius.circular(24)),
      );
    canvas.drawPath(
      Path.combine(PathOperation.difference, background, cutout),
      Paint()..color = Colors.black.withValues(alpha: 0.62),
    );

    final borderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..color = color;

    const length = 26.0;
    final rect = scanWindow;

    void corner(Offset point, double dx, double dy) {
      final path = Path()
        ..moveTo(point.dx + dx * length, point.dy)
        ..lineTo(point.dx, point.dy)
        ..lineTo(point.dx, point.dy + dy * length);
      canvas.drawPath(path, borderPaint);
    }

    corner(rect.topLeft, 1, 1);
    corner(rect.topRight, -1, 1);
    corner(rect.bottomLeft, 1, -1);
    corner(rect.bottomRight, -1, -1);
  }

  @override
  bool shouldRepaint(_ScannerOverlayPainter oldDelegate) =>
      oldDelegate.scanWindow != scanWindow || oldDelegate.color != color;
}

class _ScannerError extends StatelessWidget {
  const _ScannerError({required this.error});

  final MobileScannerException error;

  @override
  Widget build(BuildContext context) {
    final denied =
        error.errorCode == MobileScannerErrorCode.permissionDenied;
    return ColoredBox(
      color: Colors.black,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.no_photography_outlined,
                color: Colors.white70,
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                denied
                    ? 'Camera permission is required to scan ID cards.'
                    : 'Unable to start the camera.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Enable camera access for Office HR in your device settings, then try again.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String? _extractUserId(String raw) {
  final value = raw.trim();
  if (value.isEmpty) return null;

  final uri = Uri.tryParse(value);
  if (uri != null && uri.hasScheme) {
    final segments = uri.pathSegments.where((s) => s.trim().isNotEmpty);
    if (segments.isEmpty) return null;
    final last = segments.last.trim();
    return _isValidId(last) ? last : null;
  }

  return _isValidId(value) ? value : null;
}

bool _isValidId(String value) => RegExp(r'^[A-Za-z0-9_-]{6,64}$').hasMatch(value);
