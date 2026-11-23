import 'package:flutter/material.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';

/// The person or organisation name is the page's main heading.
class RecordHeading extends StatelessWidget {
  const RecordHeading(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) => Semantics(
    header: true,
    child: Text(title, style: Theme.of(context).detailPageTitle),
  );
}
