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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** This is a JSON template for a Player resource. */
class Player {

  /** The base URL for the image that represents the player. */
  core.String avatarImageUrl;

  /** The name to display for the player. */
  core.String displayName;

  /** Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#player. */
  core.String kind;

  /** The ID of the player. */
  core.String playerId;

  /** Create new Player from JSON data */
  Player.fromJson(core.Map json) {
    if (json.containsKey("avatarImageUrl")) {
      avatarImageUrl = json["avatarImageUrl"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("playerId")) {
      playerId = json["playerId"];
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
    if (kind != null) {
      output["kind"] = kind;
    }
    if (playerId != null) {
      output["playerId"] = playerId;
    }

    return output;
  }

  /** Return String representation of Player */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
