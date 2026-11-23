import 'package:flutter/material.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/company_content.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_page.dart';

import 'package:easy_localization/easy_localization.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RecordPage(
      title: 'Company information'.tr(),
      emptyMessage: 'Company information is not available yet.'.tr(),
      contentBuilder: (session) => CompanyContent(session: session),
    );
  }
}
