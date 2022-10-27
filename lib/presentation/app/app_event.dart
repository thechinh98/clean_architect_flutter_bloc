abstract class AppEvent{}

class OnSessionExpiredEvent extends AppEvent{}

class OnFirebaseConfigurationEvent extends AppEvent{}

class OnChangeLanguageEvent extends AppEvent{
  final String language;
  OnChangeLanguageEvent({required this.language});
}