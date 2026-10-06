Object? readMongoId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];

Map<String, dynamic> readEnvelope(dynamic data) {
  if (data is Map<String, dynamic>) {
    final inner = data['data'];
    if (inner is Map<String, dynamic>) return inner;
    return data;
  }
  return <String, dynamic>{};
}

List<dynamic> readListEnvelope(dynamic data) {
  if (data is List) return data;
  if (data is Map<String, dynamic>) {
    final inner = data['data'];
    if (inner is List) return inner;
  }
  return const <dynamic>[];
}
