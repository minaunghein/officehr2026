/// Waits for a reload triggered by `Ref.invalidateSelf` to settle.
///
/// Reload failures are already exposed through the provider's own
/// `AsyncValue`, so the error is swallowed here. This only lets callers such
/// as `RefreshIndicator` and post-action refreshes await the newest response.
Future<void> settleReload<T>(Future<T> reload) =>
    reload.then<void>((_) {}, onError: (_, _) {});
