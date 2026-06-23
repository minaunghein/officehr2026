# General Data Feature

This feature handles fetching and caching of general application settings and reference data from the `/api/v1/settings/general` endpoint.

## Architecture

Follows clean architecture with three layers:

### Data Layer
- **Models**: Freezed + json_serializable models for API responses
  - `GeneralDataModel` - Main container for all settings
  - `CompanyInfoModel` - Company information
  - `LocalizedOptionModel` - Options with multi-language titles (gender, marital status, etc.)
  - `SimpleOptionModel` - Simple options (currency, benefit mode, etc.)
  - `NrcRegionModel` - National Registration Card region data
  - `DefaultWorkingDayModel` - Default working day configurations

- **Data Sources**:
  - `GeneralDataRemoteDataSource` - Fetches data from API
  - `GeneralDataLocalDataSource` - Caches data in Hive local storage

- **Repository Implementation**: `GeneralDataRepositoryImpl`

### Domain Layer
- **Entities**: Clean domain entities with descriptive naming
  - `GeneralData` - Main entity
  - `CompanyInfo`, `LocalizedOption`, `SimpleOption`, `NrcRegion`, `DefaultWorkingDay`

- **Repository Interface**: `GeneralDataRepository`

- **Use Cases**: `GetGeneralDataUsecase` - implements cache-first strategy

### Presentation Layer
- **Providers** (Riverpod with annotations):
  - `generalDataProvider` - Main provider for general data with cache-first loading

## Usage

### Accessing General Data

```dart
// In a widget
final generalDataAsync = ref.watch(generalDataProvider);

generalDataAsync.when(
  data: (data) {
    if (data == null) return Text('No data available');
    
    // Access company info
    print(data.company.name);
    
    // Access gender options
    final genders = data.gender;
    
    // Access working days
    final workingDays = data.defaultWorkingDays;
  },
  loading: () => CircularProgressIndicator(),
  error: (error, stack) => Text('Error: $error'),
);
```

### Forcing Refresh

```dart
// Force refresh from API
await ref.read(generalDataProvider.notifier).fetchGeneralData(forceRefresh: true);
```

### Clearing Cache

```dart
await ref.read(generalDataProvider.notifier).clearCache();
```

## Cache Strategy

The feature implements a cache-first strategy using Hive local storage:

1. **On App Start**: `SplashScreen` automatically fetches general data
2. **Cache Check**: If data exists in Hive storage, it's returned immediately
3. **API Fetch**: If no cache exists or `forceRefresh: true`, data is fetched from API
4. **Auto-Cache**: Fetched data is automatically cached to Hive for future use

This ensures:
- Fast app startup (no network delay if cached)
- Reduced API calls
- Offline capability with cached data
- Persistent storage across app restarts

## Data Contents

The general data includes:

- **Company Information**: Logo, name, address
- **User Options**: Gender, marital status, nationality, religion, ethnicity, education type
- **Physical Attributes**: Height, weight units, blood type, eye color
- **Location Data**: Countries, states, cities, townships
- **NRC Data**: National Registration Card regions and townships
- **Work Settings**: Default working days, shift configurations, employee status
- **System Options**: Currency units, benefit modes, attendance modes, inbox categories, statuses, overtime types, actions

## File Structure

```
lib/features/general_data/
├── data/
│   ├── datasources/
│   │   ├── general_data_remote_datasource.dart
│   │   └── general_data_local_datasource.dart
│   ├── models/
│   │   ├── general_data_model.dart
│   │   ├── general_data_response_model.dart
│   │   ├── company_info_model.dart
│   │   ├── localized_option_model.dart
│   │   ├── simple_option_model.dart
│   │   ├── nrc_township_model.dart
│   │   └── default_working_day_model.dart
│   ├── mappers/
│   │   └── general_data_mapper.dart
│   └── repositories/
│       └── general_data_repository_impl.dart
├── domain/
│   ├── entities/
│   │   ├── general_data.dart
│   │   ├── company_info.dart
│   │   ├── localized_option.dart
│   │   ├── simple_option.dart
│   │   ├── nrc_region.dart
│   │   └── default_working_day.dart
│   ├── repositories/
│   │   └── general_data_repository.dart
│   └── usecases/
│       └── get_general_data_usecase.dart
└── presentation/
    └── providers/
        └── general_data_providers.dart
```
