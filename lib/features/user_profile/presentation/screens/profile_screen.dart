import 'package:flutter/material.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/profile_content.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RecordPage(
      title: 'My profile',
      emptyMessage: 'Your profile is not available yet.',
      contentBuilder: (session) => ProfileContent(session: session),
    );
  }
}
