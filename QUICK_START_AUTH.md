# Quick Start - Authentication System

## What's Been Implemented

A complete, production-ready authentication system with:
- ✅ Login API integration (`/api/v1/users/login`)
- ✅ Secure token storage and management
- ✅ Route-based auth redirect
- ✅ Form validation and error handling
- ✅ Loading states and user feedback

## Quick Test

### 1. Update API Base URL (if needed)
File: `lib/core/config/api_config.dart`
```dart
const ApiConfig({
  this.baseUrl = 'https://your-actual-api.com/api/v1', // Update this
  // ...
});
```

### 2. Run the App
```bash
flutter run
```

### 3. Test the Login Flow
1. App opens → splash screen → login screen
2. Enter valid credentials:
   - Username: `your_username`
   - Password: `your_password`
3. Tap **LOGIN**
4. On success → navigate to dashboard
5. On error → snackbar with error message

## How It Works

```
User enters credentials
     ↓
Taps LOGIN button
     ↓
LoginScreen calls: ref.read(loginNotifierProvider.notifier).login()
     ↓
State changes to loading (spinner shows)
     ↓
API request sent to /api/v1/users/login
     ↓
Response received: {"token_type", "access_token", "expiresIn", "userid"}
     ↓
Token validated and stored
     ↓
Router automatically redirects to /dashboard
```

## Key Features

### 🔐 Security
- Tokens stored in secure storage (not SharedPreferences)
- Auto-injected in API headers as `Authorization: Bearer {token}`
- Token expiration tracked

### 📱 UX
- Form validation with helpful error messages
- Loading indicator during API call
- Disabled inputs while loading
- Password visibility toggle
- Remember device checkbox (UI ready for implementation)

### 🏗️ Architecture
- Clean separation: Data → Domain → Presentation
- Riverpod for state management
- Repository pattern for data access
- Use cases for business logic

## Accessing Auth State

### In Any Widget/Provider
```dart
// Check if user is logged in
final isAuthenticated = ref.watch(isAuthenticatedProvider);

// Get current user
final user = ref.watch(currentUserProvider);

// Listen to login state
ref.listen(loginNotifierProvider, (prev, next) {
  next.whenData((_) {
    print("Login successful!");
  });
});
```

### Logout
```dart
ref.read(loginNotifierProvider.notifier).logout();
// Router will redirect to login automatically
```

## API Request Format

**Endpoint:** `POST /api/v1/users/login`

**Request Body:**
```json
{
  "username": "user@example.com",
  "password": "password123"
}
```

**Success Response (Status: 200):**
```json
{
  "token_type": "Bearer",
  "access_token": "eyJhbGc...",
  "expiresIn": 28800,
  "userid": "user-id-123"
}
```

**Error Response (Status: 404):**
```json
{
  "error": ["Invalid username or password"],
  "message": "Invalid username or password"
}
```

## Router Protected Routes

Routes automatically protected:
- `/dashboard` - Requires authentication
- `/home` - Requires authentication
- `/login` - Redirects to dashboard if already logged in
- `/` (splash) - Always accessible
- `/company-setup` - Always accessible

## Configuration Checklist

- [ ] Verify API base URL in `lib/core/config/api_config.dart`
- [ ] Confirm `/api/v1/users/login` endpoint exists
- [ ] Test credentials available
- [ ] Network connectivity working
- [ ] Build files generated: `flutter pub get`

## Common Issues & Solutions

| Issue | Solution |
|-------|----------|
| "Login failed" on every attempt | Check API base URL, verify endpoint exists |
| "Invalid username or password" | Verify test credentials are correct |
| Token not persisting | Run `flutter clean` and rebuild |
| Redirect not working | Check GoRouter setup in `app_router.dart` |
| TextFields not showing input | Ensure `flutter_hooks` dependency is installed |

## Next Steps

### Short Term
1. Test with real API credentials
2. Implement "Forgot Password" flow
3. Add "Remember Me" functionality

### Medium Term
4. Add refresh token mechanism
5. Implement biometric login
6. Add 2FA support

### Long Term
7. Session management
8. Multiple device login
9. Device fingerprinting

## File Structure Reference

```
lib/features/auth/
├── data/
│   ├── datasources/auth_remote_datasource.dart
│   ├── models/login_response_model.dart
│   └── repositories/auth_repository_impl.dart
├── domain/
│   ├── entities/auth_user.dart
│   ├── repositories/auth_repository.dart
│   └── usecases/login_usecase.dart
└── presentation/
    ├── providers/auth_providers.dart
    └── screens/login_screen.dart
```

## Debugging Tips

### Enable API Logging
The system includes API logging interceptor (enabled in debug mode).
Check console output to see:
- Request details
- Response data
- Errors

### Check Token Storage
In providers:
```dart
final token = ref.watch(authTokenProvider);
print("Stored token: $token");
```

### Monitor Auth State
```dart
ref.listen(currentUserProvider, (previous, current) {
  print("Auth state changed: $current");
});
```

## Documentation Files

- **`AUTH_IMPLEMENTATION.md`** - Detailed architecture & flow
- **`QUICK_START_AUTH.md`** - This file
- **Code comments** - Inline documentation in source files

---

**Status:** Ready to use! 🚀
