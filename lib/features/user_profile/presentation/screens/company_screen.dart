import 'package:flutter/material.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/company_content.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_page.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RecordPage(
      title: 'Company information',
      emptyMessage: 'Company information is not available yet.',
      contentBuilder: (session) => CompanyContent(session: session),
    );
  }
}
