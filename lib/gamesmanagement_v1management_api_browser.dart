library gamesmanagement_v1management_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_gamesmanagement_v1management_api/src/browser_client.dart';
import "package:google_gamesmanagement_v1management_api/gamesmanagement_v1management_api_client.dart";

/** The Management API for Google Play Game Services. */
class GamesManagement extends Client with BrowserClient {

  /** OAuth Scope2: Share your Google+ profile information and view and manage your game activity */
  static const String GAMES_SCOPE = "https://www.googleapis.com/auth/games";

  /** OAuth Scope2: Know your basic profile info and list of people in your circles. */
  static const String PLUS_LOGIN_SCOPE = "https://www.googleapis.com/auth/plus.login";

  final oauth.OAuth2 auth;

  GamesManagement([oauth.OAuth2 this.auth]);
}
