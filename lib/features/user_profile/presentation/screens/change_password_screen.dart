import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_exception.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ChangePasswordScreen> createState() =>
      _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isSubmitting = false;
  bool _showOldPassword = false;
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final form = _formKey.currentState;
    if (form == null || !form.validate()) return;

    setState(() => _isSubmitting = true);
    try {
      final apiService = ref.read(apiServiceProvider);
      final response = await apiService.put<Map<String, dynamic>>(
        '/api/v1/users/changepassword',
        data: {
          'oldpassword': _oldPasswordController.text,
          'password': _newPasswordController.text,
          'confirmpassword': _confirmPasswordController.text,
        },
        parser: (data) => data is Map<String, dynamic>
            ? data
            : Map<String, dynamic>.from(data as Map),
      );

      if (!mounted) return;
      await _showSuccessDialog(_messageFromResponse(response));
      if (mounted) Navigator.of(context).pop();
    } catch (error) {
      if (!mounted) return;
      context.showErrorSnackBar(_friendlyErrorMessage(error));
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  Future<void> _showSuccessDialog(String message) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(
          Icons.check_circle_outline_rounded,
          color: Theme.of(dialogContext).colorScheme.primary,
          size: 44,
        ),
        title: const Text('Password Changed'),
        content: Text(message),
        actions: [
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Change Password'), centerTitle: true),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppSizes.borderRadiusSm,
                      ),
                      side: BorderSide(
                        color: theme.colorScheme.outline.withValues(
                          alpha: 0.18,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Update Account Password',
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Enter your current password and choose a new password for your account.',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: 24),
                          _PasswordField(
                            controller: _oldPasswordController,
                            label: 'Old Password',
                            visible: _showOldPassword,
                            textInputAction: TextInputAction.next,
                            onToggleVisibility: () => setState(
                              () => _showOldPassword = !_showOldPassword,
                            ),
                            validator: (value) =>
                                _requiredPassword(value, label: 'old password'),
                          ),
                          const SizedBox(height: 16),
                          _PasswordField(
                            controller: _newPasswordController,
                            label: 'New Password',
                            visible: _showNewPassword,
                            textInputAction: TextInputAction.next,
                            onToggleVisibility: () => setState(
                              () => _showNewPassword = !_showNewPassword,
                            ),
                            validator: (value) {
                              final required = _requiredPassword(
                                value,
                                label: 'new password',
                              );
                              if (required != null) return required;
                              if (value == _oldPasswordController.text) {
                                return 'New password must be different from old password';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          _PasswordField(
                            controller: _confirmPasswordController,
                            label: 'Confirm Password',
                            visible: _showConfirmPassword,
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (_) => _submit(),
                            onToggleVisibility: () => setState(
                              () =>
                                  _showConfirmPassword = !_showConfirmPassword,
                            ),
                            validator: (value) {
                              final required = _requiredPassword(
                                value,
                                label: 'confirm password',
                              );
                              if (required != null) return required;
                              if (value != _newPasswordController.text) {
                                return 'Confirm password does not match';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FilledButton.icon(
                    onPressed: _isSubmitting ? null : _submit,
                    icon: _isSubmitting
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.lock_reset_rounded),
                    label: Text(
                      _isSubmitting ? 'Updating...' : 'Update Password',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    required this.controller,
    required this.label,
    required this.visible,
    required this.onToggleVisibility,
    required this.validator,
    required this.textInputAction,
    this.onFieldSubmitted,
  });

  final TextEditingController controller;
  final String label;
  final bool visible;
  final VoidCallback onToggleVisibility;
  final FormFieldValidator<String> validator;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: !visible,
      enableSuggestions: false,
      autocorrect: false,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: const Icon(Icons.lock_outline_rounded),
        suffixIcon: IconButton(
          onPressed: onToggleVisibility,
          icon: Icon(
            visible ? Icons.visibility_off_outlined : Icons.visibility_outlined,
          ),
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}

String? _requiredPassword(String? value, {required String label}) {
  if (value == null || value.trim().isEmpty) {
    return 'Please enter your $label';
  }
  return null;
}

String _messageFromResponse(Map<String, dynamic> response) {
  final message = response['message'];
  if (message is List && message.isNotEmpty) return message.first.toString();
  if (message is String && message.trim().isNotEmpty) return message;
  return 'Password changed successfully';
}

String _friendlyErrorMessage(Object error) {
  if (error is ApiException) {
    switch (error.type) {
      case ApiErrorType.unauthorized:
      case ApiErrorType.forbidden:
        return 'Your current password is incorrect.';
      case ApiErrorType.badRequest:
      case ApiErrorType.validationError:
        return _passwordValidationMessage(error.message);
      case ApiErrorType.networkError:
      case ApiErrorType.timeout:
        return error.message;
      case ApiErrorType.serverError:
        return 'Unable to change password right now. Please try again later.';
      case ApiErrorType.notFound:
      case ApiErrorType.conflict:
      case ApiErrorType.cancelled:
      case ApiErrorType.parsingError:
      case ApiErrorType.unknown:
        return 'Unable to change password. Please check your details and try again.';
    }
  }

  return 'Unable to change password. Please try again.';
}

String _passwordValidationMessage(String message) {
  final lower = message.toLowerCase();
  if (lower.contains('old') || lower.contains('current')) {
    return 'Your current password is incorrect.';
  }
  if (lower.contains('confirm') || lower.contains('match')) {
    return 'New password and confirm password must match.';
  }
  if (lower.contains('short') || lower.contains('length')) {
    return 'Please choose a stronger password.';
  }
  return 'Please check your password details and try again.';
}
