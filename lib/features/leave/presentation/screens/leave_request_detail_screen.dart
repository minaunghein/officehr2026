import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/widgets/detail_row.dart';
import 'package:office_hr/core/widgets/detail_section_card.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/utils/leave_formatters.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_attachment_preview.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_request_detail_header.dart';

class LeaveRequestDetailScreen extends HookConsumerWidget {
  const LeaveRequestDetailScreen({super.key, required this.initial});

  final LeaveRequest initial;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requests = ref.watch(leaveRequestsProvider).value;
    final request = _resolveLatest(requests, initial);
    final hasTimeline =
        request.createdAt != null ||
        request.updatedAt != null ||
        (request.approvedBy?.trim().isNotEmpty ?? false);

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Leave Details')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          LeaveRequestDetailHeader(request: request),
          const SizedBox(height: 16),
          DetailSectionCard(
            title: 'Request',
            icon: Icons.description_outlined,
            children: [
              DetailRow(
                label: 'Leave type',
                value: request.leaveType?.displayTitle ?? '-',
              ),
              DetailRow(
                label: 'Start date',
                value: formatLeaveDateFromIso(request.startDate),
              ),
              DetailRow(
                label: 'End date',
                value: formatLeaveDateFromIso(request.endDate),
              ),
              DetailRow(
                label: 'Half day',
                value: request.isHalfDay
                    ? 'Yes · ${request.halfDayPeriod.label}'
                    : 'No',
              ),
              DetailRow(
                label: 'Total days',
                value: formatDays(request.totalDays),
              ),
              DetailRow(
                label: 'Reason',
                value: request.reason.trim().isEmpty ? '-' : request.reason,
                multiline: true,
              ),
            ],
          ),
          if (request.hasAttachment) ...[
            const SizedBox(height: 16),
            DetailSectionCard(
              title: 'Attachment',
              icon: Icons.attach_file_rounded,
              children: [
                LeaveAttachmentPreview(
                  imageUrl: request.attachmentUrl,
                  width: double.infinity,
                  height: 200,
                ),
              ],
            ),
          ],
          if (hasTimeline) ...[
            const SizedBox(height: 16),
            DetailSectionCard(
              title: 'Timeline',
              icon: Icons.timeline_rounded,
              children: [
                if (request.createdAt != null)
                  DetailRow(
                    label: 'Requested',
                    value: formatLeaveDateTimeFromIso(request.createdAt),
                  ),
                if (request.updatedAt != null)
                  DetailRow(
                    label: 'Last updated',
                    value: formatLeaveDateTimeFromIso(request.updatedAt),
                  ),
                if (request.approvedBy?.trim().isNotEmpty ?? false)
                  DetailRow(label: 'Approved by', value: request.approvedBy!),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

LeaveRequest _resolveLatest(
  List<LeaveRequest>? requests,
  LeaveRequest fallback,
) {
  if (requests == null) return fallback;
  for (final request in requests) {
    if (request.id == fallback.id) return request;
  }
  return fallback;
}
