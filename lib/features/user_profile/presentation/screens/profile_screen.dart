import 'package:flutter/material.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/profile_content.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_page.dart';

import 'package:easy_localization/easy_localization.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RecordPage(
      title: 'My profile'.tr(),
      emptyMessage: 'Your profile is not available yet.'.tr(),
      contentBuilder: (session) => ProfileContent(session: session),
    );
  }
}
