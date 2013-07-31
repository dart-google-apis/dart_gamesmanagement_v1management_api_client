library gamesmanagement_v1management_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_gamesmanagement_v1management_api/src/cloud_api_browser.dart';
import "package:google_gamesmanagement_v1management_api/gamesmanagement_v1management_api_client.dart";

/** The Management API for Google Play Game Services. */
class GamesManagement extends Client with BrowserClient {

  /** OAuth Scope2: Know your name, basic info, and list of people you're connected to on Google+ */
  static const String PLUS_LOGIN_SCOPE = "https://www.googleapis.com/auth/plus.login";

  final oauth.OAuth2 auth;

  GamesManagement([oauth.OAuth2 this.auth]);
}
