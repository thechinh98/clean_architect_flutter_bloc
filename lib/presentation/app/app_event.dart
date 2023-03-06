abstract class AppEvent{}

class OnSessionExpiredEvent extends AppEvent{}

class OnFirebaseConfigurationEvent extends AppEvent{}

class OnChangeLanguageEvent extends AppEvent{
  OnChangeLanguageEvent({required this.language});
  final String language;
}