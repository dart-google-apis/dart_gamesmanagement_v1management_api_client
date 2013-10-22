library gamesmanagement_v1management_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_gamesmanagement_v1management_api/src/console_client.dart';

import "package:google_gamesmanagement_v1management_api/gamesmanagement_v1management_api_client.dart";

/** The Management API for Google Play Game Services. */
class GamesManagement extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your game activity */
  static const String GAMES_SCOPE = "https://www.googleapis.com/auth/games";

  /** OAuth Scope2: Know your basic profile info and list of people in your circles. */
  static const String PLUS_LOGIN_SCOPE = "https://www.googleapis.com/auth/plus.login";

  final oauth2.OAuth2Console auth;

  GamesManagement([oauth2.OAuth2Console this.auth]);
}
