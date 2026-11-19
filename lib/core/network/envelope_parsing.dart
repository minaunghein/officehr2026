/// Reads the row count from a paginated API envelope such as
/// `{ success: true, data: { data: [...], total: n, page, limit, pages } }`.
///
/// Prefers the `total` meta field, then `pending` (clock-request listings),
/// and finally falls back to the length of the returned rows.
int parseEnvelopeTotal(dynamic data) {
  dynamic payload = data;
  if (payload is Map<String, dynamic>) {
    final inner = payload['data'];
    if (inner is Map<String, dynamic>) {
      payload = inner;
    }
  }

  if (payload is Map<String, dynamic>) {
    final total = payload['total'];
    if (total is num) return total.toInt();
    final pending = payload['pending'];
    if (pending is num) return pending.toInt();
    final rows = payload['data'];
    if (rows is List) return rows.length;
    return 0;
  }

  if (payload is List) return payload.length;
  return 0;
}
