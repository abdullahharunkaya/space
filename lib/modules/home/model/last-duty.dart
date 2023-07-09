class LastDuty {
  LastDuty({
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.failures,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
    this.autoUpdate,
    this.tbd,
    this.launchLibraryId,
    this.id,
  });

  LastDuty.fromJson(dynamic json) {
    fairings = json['fairings'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    staticFireDateUtc = json['static_fire_date_utc'];
    staticFireDateUnix = json['static_fire_date_unix'];
    net = json['net'];
    window = json['window'];
    rocket = json['rocket'];
    success = json['success'];
    if (json['failures'] != null) {
      failures = [];

    }
    details = json['details'];
    crew = json['crew'] != null ? json['crew'].cast<String>() : [];
    if (json['ships'] != null) {
      ships = [];

    }
    capsules = json['capsules'] != null ? json['capsules'].cast<String>() : [];
    payloads = json['payloads'] != null ? json['payloads'].cast<String>() : [];
    launchpad = json['launchpad'];
    flightNumber = json['flight_number'];
    name = json['name'];
    dateUtc = json['date_utc'];
    dateUnix = json['date_unix'];
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    upcoming = json['upcoming'];
    if (json['cores'] != null) {
      cores = [];
      json['cores'].forEach((v) {
        cores?.add(Cores.fromJson(v));
      });
    }
    autoUpdate = json['auto_update'];
    tbd = json['tbd'];
    launchLibraryId = json['launch_library_id'];
    id = json['id'];
  }

  dynamic fairings;
  Links? links;
  dynamic staticFireDateUtc;
  dynamic staticFireDateUnix;
  bool? net;
  dynamic window;
  String? rocket;
  bool? success;
  List<dynamic>? failures;
  dynamic details;
  List<String>? crew;
  List<dynamic>? ships;
  List<String>? capsules;
  List<String>? payloads;
  String? launchpad;
  num? flightNumber;
  String? name;
  String? dateUtc;
  num? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? launchLibraryId;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fairings'] = fairings;
    if (links != null) {
      map['links'] = links?.toJson();
    }
    map['static_fire_date_utc'] = staticFireDateUtc;
    map['static_fire_date_unix'] = staticFireDateUnix;
    map['net'] = net;
    map['window'] = window;
    map['rocket'] = rocket;
    map['success'] = success;
    if (failures != null) {
      map['failures'] = failures?.map((v) => v.toJson()).toList();
    }
    map['details'] = details;
    map['crew'] = crew;
    if (ships != null) {
      map['ships'] = ships?.map((v) => v.toJson()).toList();
    }
    map['capsules'] = capsules;
    map['payloads'] = payloads;
    map['launchpad'] = launchpad;
    map['flight_number'] = flightNumber;
    map['name'] = name;
    map['date_utc'] = dateUtc;
    map['date_unix'] = dateUnix;
    map['date_local'] = dateLocal;
    map['date_precision'] = datePrecision;
    map['upcoming'] = upcoming;
    if (cores != null) {
      map['cores'] = cores?.map((v) => v.toJson()).toList();
    }
    map['auto_update'] = autoUpdate;
    map['tbd'] = tbd;
    map['launch_library_id'] = launchLibraryId;
    map['id'] = id;
    return map;
  }
}

class Cores {
  Cores({
    this.core,
    this.flight,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingAttempt,
    this.landingSuccess,
    this.landingType,
    this.landpad,
  });

  Cores.fromJson(dynamic json) {
    core = json['core'];
    flight = json['flight'];
    gridfins = json['gridfins'];
    legs = json['legs'];
    reused = json['reused'];
    landingAttempt = json['landing_attempt'];
    landingSuccess = json['landing_success'];
    landingType = json['landing_type'];
    landpad = json['landpad'];
  }

  String? core;
  num? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  bool? landingSuccess;
  String? landingType;
  String? landpad;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['core'] = core;
    map['flight'] = flight;
    map['gridfins'] = gridfins;
    map['legs'] = legs;
    map['reused'] = reused;
    map['landing_attempt'] = landingAttempt;
    map['landing_success'] = landingSuccess;
    map['landing_type'] = landingType;
    map['landpad'] = landpad;
    return map;
  }
}

class Links {
  Links({
    this.patch,
    this.reddit,
    this.flickr,
    this.presskit,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });

  Links.fromJson(dynamic json) {
    patch = json['patch'] != null ? Patch.fromJson(json['patch']) : null;
    reddit = json['reddit'] != null ? Reddit.fromJson(json['reddit']) : null;
    flickr = json['flickr'] != null ? Flickr.fromJson(json['flickr']) : null;
    presskit = json['presskit'];
    webcast = json['webcast'];
    youtubeId = json['youtube_id'];
    article = json['article'];
    wikipedia = json['wikipedia'];
  }

  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  dynamic presskit;
  String? webcast;
  String? youtubeId;
  dynamic article;
  String? wikipedia;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (patch != null) {
      map['patch'] = patch?.toJson();
    }
    if (reddit != null) {
      map['reddit'] = reddit?.toJson();
    }
    if (flickr != null) {
      map['flickr'] = flickr?.toJson();
    }
    map['presskit'] = presskit;
    map['webcast'] = webcast;
    map['youtube_id'] = youtubeId;
    map['article'] = article;
    map['wikipedia'] = wikipedia;
    return map;
  }
}

class Flickr {
  Flickr({
    this.small,
    this.original,
  });

  Flickr.fromJson(dynamic json) {
    if (json['small'] != null) {
      small = [];

    }
    if (json['original'] != null) {
      original = [];

    }
  }

  List<dynamic>? small;
  List<dynamic>? original;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (small != null) {
      map['small'] = small?.map((v) => v.toJson()).toList();
    }
    if (original != null) {
      map['original'] = original?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Reddit {
  Reddit({
    this.campaign,
    this.launch,
    this.media,
    this.recovery,
  });

  Reddit.fromJson(dynamic json) {
    campaign = json['campaign'];
    launch = json['launch'];
    media = json['media'];
    recovery = json['recovery'];
  }

  dynamic campaign;
  String? launch;
  dynamic media;
  dynamic recovery;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['campaign'] = campaign;
    map['launch'] = launch;
    map['media'] = media;
    map['recovery'] = recovery;
    return map;
  }
}

class Patch {
  Patch({
    this.small,
    this.large,
  });

  Patch.fromJson(dynamic json) {
    small = json['small'];
    large = json['large'];
  }

  String? small;
  String? large;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['small'] = small;
    map['large'] = large;
    return map;
  }
}
