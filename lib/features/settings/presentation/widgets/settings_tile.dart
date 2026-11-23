import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';

enum SettingsTileAccessory { none, chevron, value }

/// A compact settings row: plain icon, title, optional subtitle and a
/// trailing value, control or chevron.
class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.value,
    this.trailing,
    this.onTap,
    this.enabled = true,
    this.destructive = false,
    this.accessory = SettingsTileAccessory.chevron,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final String? value;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool enabled;
  final bool destructive;
  final SettingsTileAccessory accessory;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final muted = enabled ? theme.detailMuted : theme.detailInk(0.44);
    final destructiveInk = theme.brightness == Brightness.dark
        ? const Color(0xFFFFB4AB)
        : colors.error;
    final showValue = value != null && accessory != SettingsTileAccessory.none;
    final showChevron =
        accessory == SettingsTileAccessory.chevron &&
        onTap != null &&
        trailing == null;

    return ListTile(
      onTap: onTap,
      enabled: enabled,
      minTileHeight: kMinInteractiveDimension,
      minVerticalPadding: AppSizes.xxs,
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.center,
      minLeadingWidth: 0,
      horizontalTitleGap: AppSizes.sm,
      leading: Icon(icon, size: AppSizes.iconMd, color: muted),
      title: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 15,
                fontWeight: destructive ? FontWeight.w600 : FontWeight.w500,
                letterSpacing: 0,
                color: !enabled
                    ? theme.disabledColor
                    : destructive
                    ? destructiveInk
                    : colors.onSurface,
              ),
            ),
          ),
          if (showValue) ...[
            const SizedBox(width: AppSizes.xs),
            Expanded(
              flex: 4,
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  value!,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: muted,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
      subtitle: subtitle == null
          ? null
          : Padding(
              padding: const EdgeInsets.only(top: AppSizes.xxxxs),
              child: Text(
                subtitle!,
                style: theme.textTheme.bodySmall?.copyWith(color: muted),
              ),
            ),
      trailing:
          trailing ??
          (showChevron
              ? Icon(
                  Icons.chevron_right_rounded,
                  color: muted,
                  size: 18,
                  textDirection: Directionality.of(context),
                )
              : null),
    );
  }
}

/// [SettingsTile] with a switch as its control.
class SettingsSwitchTile extends StatelessWidget {
  const SettingsSwitchTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.value,
    required this.onChanged,
    this.enabled = true,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      icon: icon,
      title: title,
      subtitle: subtitle,
      enabled: enabled,
      accessory: SettingsTileAccessory.none,
      // Tapping the row toggles the switch, which is easier to reach.
      onTap: enabled ? () => onChanged(!value) : null,
      trailing: SettingsToggle(
        value: value,
        onChanged: enabled ? onChanged : null,
      ),
    );
  }
}

/// The native Material control and its full hit target, drawn a little smaller
/// so the state is visible without overpowering the label.
class SettingsToggle extends StatelessWidget {
  const SettingsToggle({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Transform.scale(
      scale: 0.80,
      alignment: AlignmentDirectional.centerEnd,
      transformHitTests: false,
      child: Switch(
        value: value,
        onChanged: onChanged,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        activeTrackColor: Color.lerp(colors.primary, colors.onSurface, 0.22),
        activeThumbColor: colors.onPrimary,
        inactiveTrackColor: theme.detailInk(0.08),
        inactiveThumbColor: theme.detailInk(0.52),
        trackOutlineColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.transparent;
          return theme.detailInk(
            states.contains(WidgetState.disabled) ? 0.16 : 0.30,
          );
        }),
      ),
    );
  }
}
