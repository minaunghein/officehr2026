import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_exception.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final showOldPassword = useState(false);
    final showNewPassword = useState(false);
    final showConfirmPassword = useState(false);
    final isSubmitting = useState(false);

    final changePasswordState = ref.watch(changePasswordProvider);
    final isBusy = isSubmitting.value || changePasswordState.isLoading;

    Future<void> submit() async {
      FocusScope.of(context).unfocus();

      final form = formKey.currentState;
      if (form == null || !form.validate()) return;

      isSubmitting.value = true;
      try {
        final result = await ref
            .read(changePasswordProvider.notifier)
            .submit(
              oldPassword: oldPasswordController.text,
              newPassword: newPasswordController.text,
            );

        if (!context.mounted) return;
        SnackbarUtils.showSuccess(result.message);
        oldPasswordController.clear();
        newPasswordController.clear();
        confirmPasswordController.clear();
        formKey.currentState?.reset();
        isSubmitting.value = false;
      } catch (error) {
        if (!context.mounted) return;
        SnackbarUtils.showError(_friendlyErrorMessage(error));
        isSubmitting.value = false;
      }
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Change Password'), centerTitle: true),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
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
                            controller: oldPasswordController,
                            label: 'Old Password',
                            visible: showOldPassword.value,
                            enabled: !isBusy,
                            textInputAction: TextInputAction.next,
                            onToggleVisibility: () =>
                                showOldPassword.value = !showOldPassword.value,
                            validator: (value) =>
                                _requiredPassword(value, label: 'old password'),
                          ),
                          const SizedBox(height: 16),
                          _PasswordField(
                            controller: newPasswordController,
                            label: 'New Password',
                            visible: showNewPassword.value,
                            enabled: !isBusy,
                            textInputAction: TextInputAction.next,
                            onToggleVisibility: () =>
                                showNewPassword.value = !showNewPassword.value,
                            validator: (value) {
                              final required = _requiredPassword(
                                value,
                                label: 'new password',
                              );
                              if (required != null) return required;
                              if (value == oldPasswordController.text) {
                                return 'New password must be different from old password';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          _PasswordField(
                            controller: confirmPasswordController,
                            label: 'Confirm Password',
                            visible: showConfirmPassword.value,
                            enabled: !isBusy,
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (_) => submit(),
                            onToggleVisibility: () =>
                                showConfirmPassword.value =
                                    !showConfirmPassword.value,
                            validator: (value) {
                              final required = _requiredPassword(
                                value,
                                label: 'confirm password',
                              );
                              if (required != null) return required;
                              if (value != newPasswordController.text) {
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
                    onPressed: isBusy ? null : submit,
                    icon: isBusy
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.lock_reset_rounded),
                    label: Text(isBusy ? 'Updating...' : 'Update Password'),
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
    this.enabled = true,
    this.onFieldSubmitted,
  });

  final TextEditingController controller;
  final String label;
  final bool visible;
  final bool enabled;
  final VoidCallback onToggleVisibility;
  final FormFieldValidator<String> validator;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
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

String _friendlyErrorMessage(Object error) {
  if (error is ApiException) {
    final message = error.message.trim();
    if (message.isNotEmpty) return message;
  }

  final message = error.toString().trim();
  if (message.isNotEmpty && message != 'Exception') return message;

  return 'Unable to change password. Please try again.';
}
