part of gamesmanagement_v1management_api;

/** This is a JSON template for achievement reset all response. */
class AchievementResetAllResponse {

  /** Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#achievementResetAllResponse. */
  core.String kind;

  /** The achievement reset results. */
  core.List<AchievementResetResponse> results;

  /** Create new AchievementResetAllResponse from JSON data */
  AchievementResetAllResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("results")) {
      results = json["results"].map((resultsItem) => new AchievementResetResponse.fromJson(resultsItem)).toList();
    }
  }

  /** Create JSON Object for AchievementResetAllResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (results != null) {
      output["results"] = results.map((resultsItem) => resultsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AchievementResetAllResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement reset response. */
class AchievementResetResponse {

  /** The current state of the achievement. This is the same as the initial state of the achievement.
Possible values are:  
- "HIDDEN"- Achievement is hidden. 
- "REVEALED" - Achievement is revealed. 
- "UNLOCKED" - Achievement is unlocked. */
  core.String currentState;

  /** The ID of an achievement for which player state has been updated. */
  core.String definitionId;

  /** Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#achievementResetResponse. */
  core.String kind;

  /** Flag to indicate if the requested update actually occurred. */
  core.bool updateOccurred;

  /** Create new AchievementResetResponse from JSON data */
  AchievementResetResponse.fromJson(core.Map json) {
    if (json.containsKey("currentState")) {
      currentState = json["currentState"];
    }
    if (json.containsKey("definitionId")) {
      definitionId = json["definitionId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("updateOccurred")) {
      updateOccurred = json["updateOccurred"];
    }
  }

  /** Create JSON Object for AchievementResetResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (currentState != null) {
      output["currentState"] = currentState;
    }
    if (definitionId != null) {
      output["definitionId"] = definitionId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (updateOccurred != null) {
      output["updateOccurred"] = updateOccurred;
    }

    return output;
  }

  /** Return String representation of AchievementResetResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for metadata about a player playing a game with the currently authenticated user. */
class GamesPlayedResource {

  /** True if the player was auto-matched with the currently authenticated user. */
  core.bool autoMatched;

  /** The last time the player played the game in milliseconds since the epoch in UTC. */
  core.int timeMillis;

  /** Create new GamesPlayedResource from JSON data */
  GamesPlayedResource.fromJson(core.Map json) {
    if (json.containsKey("autoMatched")) {
      autoMatched = json["autoMatched"];
    }
    if (json.containsKey("timeMillis")) {
      timeMillis = (json["timeMillis"] is core.String) ? core.int.parse(json["timeMillis"]) : json["timeMillis"];
    }
  }

  /** Create JSON Object for GamesPlayedResource */
  core.Map toJson() {
    var output = new core.Map();

    if (autoMatched != null) {
      output["autoMatched"] = autoMatched;
    }
    if (timeMillis != null) {
      output["timeMillis"] = timeMillis;
    }

    return output;
  }

  /** Return String representation of GamesPlayedResource */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for 1P/3P metadata about the player's experience. */
class GamesPlayerExperienceInfoResource {

  /** The current number of experience points for the player. */
  core.int currentExperiencePoints;

  /** The current level of the player. */
  GamesPlayerLevelResource currentLevel;

  /** The timestamp when the player was leveled up, in millis since Unix epoch UTC. */
  core.int lastLevelUpTimestampMillis;

  /** The next level of the player. If the current level is the maximum level, this should be same as the current level. */
  GamesPlayerLevelResource nextLevel;

  /** Create new GamesPlayerExperienceInfoResource from JSON data */
  GamesPlayerExperienceInfoResource.fromJson(core.Map json) {
    if (json.containsKey("currentExperiencePoints")) {
      currentExperiencePoints = (json["currentExperiencePoints"] is core.String) ? core.int.parse(json["currentExperiencePoints"]) : json["currentExperiencePoints"];
    }
    if (json.containsKey("currentLevel")) {
      currentLevel = new GamesPlayerLevelResource.fromJson(json["currentLevel"]);
    }
    if (json.containsKey("lastLevelUpTimestampMillis")) {
      lastLevelUpTimestampMillis = (json["lastLevelUpTimestampMillis"] is core.String) ? core.int.parse(json["lastLevelUpTimestampMillis"]) : json["lastLevelUpTimestampMillis"];
    }
    if (json.containsKey("nextLevel")) {
      nextLevel = new GamesPlayerLevelResource.fromJson(json["nextLevel"]);
    }
  }

  /** Create JSON Object for GamesPlayerExperienceInfoResource */
  core.Map toJson() {
    var output = new core.Map();

    if (currentExperiencePoints != null) {
      output["currentExperiencePoints"] = currentExperiencePoints;
    }
    if (currentLevel != null) {
      output["currentLevel"] = currentLevel.toJson();
    }
    if (lastLevelUpTimestampMillis != null) {
      output["lastLevelUpTimestampMillis"] = lastLevelUpTimestampMillis;
    }
    if (nextLevel != null) {
      output["nextLevel"] = nextLevel.toJson();
    }

    return output;
  }

  /** Return String representation of GamesPlayerExperienceInfoResource */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for 1P/3P metadata about a user's level. */
class GamesPlayerLevelResource {

  /** The level for the user. */
  core.int level;

  /** The maximum experience points for this level. */
  core.int maxExperiencePoints;

  /** The minimum experience points for this level. */
  core.int minExperiencePoints;

  /** Create new GamesPlayerLevelResource from JSON data */
  GamesPlayerLevelResource.fromJson(core.Map json) {
    if (json.containsKey("level")) {
      level = json["level"];
    }
    if (json.containsKey("maxExperiencePoints")) {
      maxExperiencePoints = (json["maxExperiencePoints"] is core.String) ? core.int.parse(json["maxExperiencePoints"]) : json["maxExperiencePoints"];
    }
    if (json.containsKey("minExperiencePoints")) {
      minExperiencePoints = (json["minExperiencePoints"] is core.String) ? core.int.parse(json["minExperiencePoints"]) : json["minExperiencePoints"];
    }
  }

  /** Create JSON Object for GamesPlayerLevelResource */
  core.Map toJson() {
    var output = new core.Map();

    if (level != null) {
      output["level"] = level;
    }
    if (maxExperiencePoints != null) {
      output["maxExperiencePoints"] = maxExperiencePoints;
    }
    if (minExperiencePoints != null) {
      output["minExperiencePoints"] = minExperiencePoints;
    }

    return output;
  }

  /** Return String representation of GamesPlayerLevelResource */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the HiddenPlayer resource. */
class HiddenPlayer {

  /** The time this player was hidden. */
  core.int hiddenTimeMillis;

  /** Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#hiddenPlayer. */
  core.String kind;

  /** The player information. */
  Player player;

  /** Create new HiddenPlayer from JSON data */
  HiddenPlayer.fromJson(core.Map json) {
    if (json.containsKey("hiddenTimeMillis")) {
      hiddenTimeMillis = (json["hiddenTimeMillis"] is core.String) ? core.int.parse(json["hiddenTimeMillis"]) : json["hiddenTimeMillis"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("player")) {
      player = new Player.fromJson(json["player"]);
    }
  }

  /** Create JSON Object for HiddenPlayer */
  core.Map toJson() {
    var output = new core.Map();

    if (hiddenTimeMillis != null) {
      output["hiddenTimeMillis"] = hiddenTimeMillis;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (player != null) {
      output["player"] = player.toJson();
    }

    return output;
  }

  /** Return String representation of HiddenPlayer */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of hidden players. */
class HiddenPlayerList {

  /** The players. */
  core.List<HiddenPlayer> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#hiddenPlayerList. */
  core.String kind;

  /** The pagination token for the next page of results. */
  core.String nextPageToken;

  /** Create new HiddenPlayerList from JSON data */
  HiddenPlayerList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new HiddenPlayer.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for HiddenPlayerList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of HiddenPlayerList */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a Player resource. */
class Player {

  /** The base URL for the image that represents the player. */
  core.String avatarImageUrl;

  /** The name to display for the player. */
  core.String displayName;

  /** An object to represent Play Game experience information for the player. */
  GamesPlayerExperienceInfoResource experienceInfo;

  /** Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#player. */
  core.String kind;

  /** Details about the last time this player played a multiplayer game with the currently authenticated player. Populated for PLAYED_WITH player collection members. */
  GamesPlayedResource lastPlayedWith;

  /** An object representation of the individual components of the player's name. For some players, these fields may not be present. */
  PlayerName name;

  /** The ID of the player. */
  core.String playerId;

  /** The player's title rewarded for their game activities. */
  core.String title;

  /** Create new Player from JSON data */
  Player.fromJson(core.Map json) {
    if (json.containsKey("avatarImageUrl")) {
      avatarImageUrl = json["avatarImageUrl"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("experienceInfo")) {
      experienceInfo = new GamesPlayerExperienceInfoResource.fromJson(json["experienceInfo"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastPlayedWith")) {
      lastPlayedWith = new GamesPlayedResource.fromJson(json["lastPlayedWith"]);
    }
    if (json.containsKey("name")) {
      name = new PlayerName.fromJson(json["name"]);
    }
    if (json.containsKey("playerId")) {
      playerId = json["playerId"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for Player */
  core.Map toJson() {
    var output = new core.Map();

    if (avatarImageUrl != null) {
      output["avatarImageUrl"] = avatarImageUrl;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (experienceInfo != null) {
      output["experienceInfo"] = experienceInfo.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastPlayedWith != null) {
      output["lastPlayedWith"] = lastPlayedWith.toJson();
    }
    if (name != null) {
      output["name"] = name.toJson();
    }
    if (playerId != null) {
      output["playerId"] = playerId;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of Player */
  core.String toString() => JSON.encode(this.toJson());

}

/** An object representation of the individual components of the player's name. For some players, these fields may not be present. */
class PlayerName {

  /** The family name of this player. In some places, this is known as the last name. */
  core.String familyName;

  /** The given name of this player. In some places, this is known as the first name. */
  core.String givenName;

  /** Create new PlayerName from JSON data */
  PlayerName.fromJson(core.Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
  }

  /** Create JSON Object for PlayerName */
  core.Map toJson() {
    var output = new core.Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }

    return output;
  }

  /** Return String representation of PlayerName */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of reset leaderboard entry resources. */
class PlayerScoreResetResponse {

  /** Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#playerScoreResetResponse. */
  core.String kind;

  /** The time spans of the updated score.
Possible values are:  
- "ALL_TIME" - The score is an all-time score. 
- "WEEKLY" - The score is a weekly score. 
- "DAILY" - The score is a daily score. */
  core.List<core.String> resetScoreTimeSpans;

  /** Create new PlayerScoreResetResponse from JSON data */
  PlayerScoreResetResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("resetScoreTimeSpans")) {
      resetScoreTimeSpans = json["resetScoreTimeSpans"].toList();
    }
  }

  /** Create JSON Object for PlayerScoreResetResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (resetScoreTimeSpans != null) {
      output["resetScoreTimeSpans"] = resetScoreTimeSpans.toList();
    }

    return output;
  }

  /** Return String representation of PlayerScoreResetResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
