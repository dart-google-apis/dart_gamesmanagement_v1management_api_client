part of gamesmanagement_v1management_api;

class AchievementsResource_ {

  final Client _client;

  AchievementsResource_(Client client) :
      _client = client;

  /**
   * Resets the achievement with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.
   *
   * [achievementId] - The ID of the achievement used by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementResetResponse> reset(core.String achievementId, {core.Map optParams}) {
    var url = "achievements/{achievementId}/reset";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (achievementId == null) paramErrors.add("achievementId is required");
    if (achievementId != null) urlParams["achievementId"] = achievementId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AchievementResetResponse.fromJson(data));
  }

  /**
   * Resets all achievements for the currently authenticated player for your application. This method is only accessible to whitelisted tester accounts for your application.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementResetAllResponse> resetAll({core.Map optParams}) {
    var url = "achievements/reset";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AchievementResetAllResponse.fromJson(data));
  }

  /**
   * Resets the achievement with the given ID for the all players. This method is only available to user accounts for your developer console. Only draft achievements can be reset.
   *
   * [achievementId] - The ID of the achievement used by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> resetForAllPlayers(core.String achievementId, {core.Map optParams}) {
    var url = "achievements/{achievementId}/resetForAllPlayers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (achievementId == null) paramErrors.add("achievementId is required");
    if (achievementId != null) urlParams["achievementId"] = achievementId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class ApplicationsResource_ {

  final Client _client;

  ApplicationsResource_(Client client) :
      _client = client;

  /**
   * Get the list of players hidden from the given application. This method is only available to user accounts for your developer console.
   *
   * [applicationId] - The application being requested.
   *
   * [maxResults] - The maximum number of player resources to return in the response, used for paging. For any response, the actual number of player resources returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 15
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<HiddenPlayerList> listHidden(core.String applicationId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "applications/{applicationId}/players/hidden";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (applicationId == null) paramErrors.add("applicationId is required");
    if (applicationId != null) urlParams["applicationId"] = applicationId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new HiddenPlayerList.fromJson(data));
  }
}

class PlayersResource_ {

  final Client _client;

  PlayersResource_(Client client) :
      _client = client;

  /**
   * Hide the given player's leaderboard scores from the given application. This method is only available to user accounts for your developer console.
   *
   * [applicationId] - The application being requested.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> hide(core.String applicationId, core.String playerId, {core.Map optParams}) {
    var url = "applications/{applicationId}/players/hidden/{playerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (applicationId == null) paramErrors.add("applicationId is required");
    if (applicationId != null) urlParams["applicationId"] = applicationId;
    if (playerId == null) paramErrors.add("playerId is required");
    if (playerId != null) urlParams["playerId"] = playerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Unhide the given player's leaderboard scores from the given application. This method is only available to user accounts for your developer console.
   *
   * [applicationId] - The application being requested.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> unhide(core.String applicationId, core.String playerId, {core.Map optParams}) {
    var url = "applications/{applicationId}/players/hidden/{playerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (applicationId == null) paramErrors.add("applicationId is required");
    if (applicationId != null) urlParams["applicationId"] = applicationId;
    if (playerId == null) paramErrors.add("playerId is required");
    if (playerId != null) urlParams["playerId"] = playerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class RoomsResource_ {

  final Client _client;

  RoomsResource_(Client client) :
      _client = client;

  /**
   * Reset all rooms for the currently authenticated player for your application. This method is only accessible to whitelisted tester accounts for your application.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> reset({core.Map optParams}) {
    var url = "rooms/reset";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class ScoresResource_ {

  final Client _client;

  ScoresResource_(Client client) :
      _client = client;

  /**
   * Reset scores for the specified leaderboard for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.
   *
   * [leaderboardId] - The ID of the leaderboard.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerScoreResetResponse> reset(core.String leaderboardId, {core.Map optParams}) {
    var url = "leaderboards/{leaderboardId}/scores/reset";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlayerScoreResetResponse.fromJson(data));
  }

  /**
   * Reset scores for the specified leaderboard for all players. This method is only available to user accounts for your developer console. Only draft leaderboards can be reset.
   *
   * [leaderboardId] - The ID of the leaderboard.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> resetForAllPlayers(core.String leaderboardId, {core.Map optParams}) {
    var url = "leaderboards/{leaderboardId}/scores/resetForAllPlayers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class TurnBasedMatchesResource_ {

  final Client _client;

  TurnBasedMatchesResource_(Client client) :
      _client = client;

  /**
   * Reset all turn-based match data for a user. This method is only accessible to whitelisted tester accounts for your application.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> reset({core.Map optParams}) {
    var url = "turnbasedmatches/reset";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

