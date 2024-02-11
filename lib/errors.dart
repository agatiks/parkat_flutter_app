class AppErrors {
  static final errors = {
    AppErrorKey.LOCATION_SERVICE_DISABLED: 'Сервисы геолокации отключены.',
  };
  static get(AppErrorKey key) => AppError(key, errors[key]);
}

enum AppErrorKey {
  LOCATION_SERVICE_DISABLED,
  LOCATION_PERMISSION_DENIED
}

class AppError {
  final AppErrorKey key;
  final String? message;
  AppError(this.key, this.message);
}

