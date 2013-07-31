library gamesmanagement_v1management_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_gamesmanagement_v1management_api/src/cloud_api_console.dart';

import "package:google_gamesmanagement_v1management_api/gamesmanagement_v1management_api_client.dart";

/** The Management API for Google Play Game Services. */
class GamesManagement extends Client with ConsoleClient {

  /** OAuth Scope2: Know your name, basic info, and list of people you're connected to on Google+ */
  static const String PLUS_LOGIN_SCOPE = "https://www.googleapis.com/auth/plus.login";

  final oauth2.OAuth2Console auth;

  GamesManagement([oauth2.OAuth2Console this.auth]);
}
