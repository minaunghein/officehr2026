# Authentication System Implementation

## Overview
Complete authentication system has been implemented for the Office HR application using a clean architecture pattern with proper separation of concerns (Data, Domain, and Presentation layers).

## Architecture Structure

```
lib/features/auth/
├── data/
│   ├── datasources/
│   │   └── auth_remote_datasource.dart       # API communication
│   ├── models/
│   │   └── login_response_model.dart         # Response DTO
│   └── repositories/
│       └── auth_repository_impl.dart         # Repository implementation
├── domain/
│   ├── entities/
│   │   └── auth_user.dart                    # Business entity
│   ├── repositories/
│   │   └── auth_repository.dart              # Repository interface
│   └── usecases/
│       └── login_usecase.dart                # Use case
└── presentation/
    ├── providers/
    │   └── auth_providers.dart               # Riverpod providers
    └── screens/
        └── login_screen.dart                 # Login UI
```

## Components

### 1. **Data Layer**

#### `auth_remote_datasource.dart`
- Handles API communication with `/api/v1/users/login` endpoint
- Converts API response to `LoginResponseModel`
- Throws exceptions on API errors

#### `login_response_model.dart`
- DTO for API response
- Parses JSON: `{"token_type", "access_token", "expiresIn", "userid"}`
- Converts to domain entity

#### `auth_repository_impl.dart`
- Implements `AuthRepository` interface
- Calls remote datasource
- Converts model to domain entity (`AuthUser`)
- Calculates token expiration time

### 2. **Domain Layer**

#### `auth_user.dart` - Business Entity
```dart
AuthUser {
  String userId
  String accessToken
  String tokenType
  DateTime expiresAt
  
  bool get isTokenExpired
  bool get isTokenValid
}
```

#### `auth_repository.dart`
- Abstract interface for authentication operations
- Defines `login()` contract

#### `login_usecase.dart`
- Encapsulates login business logic
- Single responsibility: execute login

### 3. **Presentation Layer**

#### `auth_providers.dart` - State Management
**Providers:**
- `authRemoteDataSourceProvider` - Remote data source
- `authRepositoryProvider` - Repository instance
- `loginUsecaseProvider` - Use case
- `currentUserProvider` - Holds logged-in user state
- `loginNotifierProvider` - Manages login async state
- `isAuthenticatedProvider` - Computed provider for auth status

**LoginNotifier:**
- `login(username, password)` - Perform login
- `logout()` - Clear session

#### `login_screen.dart` - UI
**Features:**
- Username and password input fields
- Password visibility toggle
- Remember device checkbox
- Loading state with spinner
- Error handling with snackbars
- Form validation
- Disabled inputs during loading

### 4. **Router Integration** (`app_router.dart`)

**Redirect Logic:**
```dart
redirect: (context, state) {
  final isAuthenticated = ref.read(isAuthenticatedProvider);
  
  // Redirect to login if not authenticated
  if (!isAuthenticated && 
      state.matchedLocation != AppRoutes.splash &&
      state.matchedLocation != AppRoutes.companySetup &&
      state.matchedLocation != AppRoutes.login) {
    return AppRoutes.login;
  }
  
  // Redirect to dashboard if authenticated & accessing login
  if (isAuthenticated && state.matchedLocation == AppRoutes.login) {
    return AppRoutes.dashboard;
  }
}
```

## API Integration

### Login Endpoint
- **Path:** `/api/v1/users/login`
- **Method:** POST
- **Request:**
  ```json
  {
    "username": "user@example.com",
    "password": "password123"
  }
  ```

### Success Response (200)
```json
{
  "token_type": "Bearer",
  "access_token": "eyJhbGciOiJIew....uhkic",
  "expiresIn": 28800,
  "userid": "6a324754c359234sss30088c5fbd"
}
```

### Error Response (404)
```json
{
  "error": ["Invalid username or password"],
  "message": "Invalid username or password"
}
```

## Flow Diagram

```
LoginScreen
    ↓
User enters credentials & taps LOGIN
    ↓
LoginNotifier.login(username, password)
    ↓
LoginUsecase(username, password)
    ↓
AuthRepository.login()
    ↓
AuthRemoteDataSource.login() → API Call
    ↓
Response parsed to LoginResponseModel
    ↓
Converted to AuthUser domain entity
    ↓
Stored in currentUserProvider
    ↓
Router redirect to Dashboard
```

## Security Features

1. **Token Management**
   - Token stored with expiration time
   - `isTokenValid` checks expiration
   - Automatic token refresh consideration (extensible)

2. **Secure Storage**
   - Uses `flutter_secure_storage` for token persistence
   - Token stored in device's secure storage

3. **Authorization Header**
   - Auto-injected in API requests via Dio interceptor
   - Bearer scheme: `Authorization: Bearer {token}`

4. **Input Validation**
   - Username and password required
   - Error messages on validation failure

## Usage

### Login Flow
1. Navigate to login screen
2. Enter username and password
3. Tap LOGIN button
4. Loading spinner appears
5. On success → navigate to dashboard
6. On error → show error snackbar

### Check Authentication
```dart
// In any provider/widget
final isAuthenticated = ref.watch(isAuthenticatedProvider);
```

### Get Current User
```dart
final user = ref.watch(currentUserProvider);
if (user != null) {
  print(user.userId);
  print(user.accessToken);
}
```

### Logout
```dart
ref.read(loginNotifierProvider.notifier).logout();
```

## Error Handling

**Errors are automatically handled:**
1. Network errors → "Login failed. Please try again."
2. 404 errors → "Invalid username or password"
3. Other errors → "Login failed. Please try again."

## Token Persistence

1. On login success → token stored in secure storage
2. App restart → token retrieved and restored
3. On logout → token cleared from storage

## Future Enhancements

1. **Token Refresh**
   - Implement refresh token mechanism
   - Auto-refresh when token expires

2. **Biometric Authentication**
   - Add fingerprint/face recognition

3. **Remember Me**
   - Persist credentials safely for auto-login

4. **Two-Factor Authentication**
   - Add 2FA support

5. **Session Management**
   - Session timeout handling
   - Multiple device login management

## Testing Considerations

### Unit Tests
- Test LoginUsecase with mock repository
- Test AuthRepository with mock datasource
- Test token expiration logic

### Widget Tests
- Test LoginScreen form validation
- Test error/loading states
- Test navigation on success

### Integration Tests
- Test complete login flow
- Test router redirects
- Test token persistence

## Troubleshooting

**Issue:** Login fails immediately
- **Solution:** Verify API base URL in `api_config.dart`
- Check endpoint path: `/api/v1/users/login`

**Issue:** Token not persisting
- **Solution:** Ensure `flutter_secure_storage` is configured
- Check platform-specific permissions (iOS/Android)

**Issue:** Redirect not working
- **Solution:** Verify `GoRouter` has `redirect` property
- Check route paths match `AppRoutes` constants

## Files Modified/Created

**Created:**
- `data/datasources/auth_remote_datasource.dart`
- `data/models/login_response_model.dart`
- `data/repositories/auth_repository_impl.dart`
- `domain/entities/auth_user.dart`
- `domain/repositories/auth_repository.dart`
- `domain/usecases/login_usecase.dart`
- `presentation/providers/auth_providers.dart`

**Modified:**
- `presentation/screens/login_screen.dart` - Added business logic
- `core/router/app_router.dart` - Added redirect logic

## Configuration

Update `api_config.dart` base URL if needed:
```dart
const ApiConfig({
  this.baseUrl = 'https://your-api-domain.com/api/v1',
  // ...
});
```

---

**Implementation Status:** ✅ Complete and Ready for Testing
