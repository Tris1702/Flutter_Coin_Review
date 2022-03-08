class CoinDetail {
  String? id;
  String? name;
  String? symbol;
  Parent? parent;
  int? rank;
  bool? isNew;
  bool? isActive;
  String? type;
  List<Tags>? tags;
  List<Team>? team;
  String? description;
  String? message;
  bool? openSource;
  bool? hardwareWallet;
  String? startedAt;
  String? developmentStatus;
  String? proofType;
  String? orgStructure;
  String? hashAlgorithm;
  String? contract;
  String? platform;
  List<Contracts>? contracts;
  Links? links;
  List<LinksExtended>? linksExtended;
  Whitepaper? whitepaper;
  String? firstDataAt;
  String? lastDataAt;

  CoinDetail(
      {this.id,
      this.name,
      this.symbol,
      this.parent,
      this.rank,
      this.isNew,
      this.isActive,
      this.type,
      this.tags,
      this.team,
      this.description,
      this.message,
      this.openSource,
      this.hardwareWallet,
      this.startedAt,
      this.developmentStatus,
      this.proofType,
      this.orgStructure,
      this.hashAlgorithm,
      this.contract,
      this.platform,
      this.contracts,
      this.links,
      this.linksExtended,
      this.whitepaper,
      this.firstDataAt,
      this.lastDataAt});

  CoinDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    parent =
        json['parent'] != null ? Parent.fromJson(json['parent']) : null;
    rank = json['rank'];
    isNew = json['is_new'];
    isActive = json['is_active'];
    type = json['type'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    if (json['team'] != null) {
      team = <Team>[];
      json['team'].forEach((v) {
        team!.add(Team.fromJson(v));
      });
    }
    description = json['description'];
    message = json['message'];
    openSource = json['open_source'];
    hardwareWallet = json['hardware_wallet'];
    startedAt = json['started_at'];
    developmentStatus = json['development_status'];
    proofType = json['proof_type'];
    orgStructure = json['org_structure'];
    hashAlgorithm = json['hash_algorithm'];
    contract = json['contract'];
    platform = json['platform'];
    if (json['contracts'] != null) {
      contracts = <Contracts>[];
      json['contracts'].forEach((v) {
        contracts!.add(Contracts.fromJson(v));
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    if (json['links_extended'] != null) {
      linksExtended = <LinksExtended>[];
      json['links_extended'].forEach((v) {
        linksExtended!.add(LinksExtended.fromJson(v));
      });
    }
    whitepaper = json['whitepaper'] != null
        ? Whitepaper.fromJson(json['whitepaper'])
        : null;
    firstDataAt = json['first_data_at'];
    lastDataAt = json['last_data_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['symbol'] = symbol;
    if (parent != null) {
      data['parent'] = parent!.toJson();
    }
    data['rank'] = rank;
    data['is_new'] = isNew;
    data['is_active'] = isActive;
    data['type'] = type;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    if (team != null) {
      data['team'] = team!.map((v) => v.toJson()).toList();
    }
    data['description'] = description;
    data['message'] = message;
    data['open_source'] = openSource;
    data['hardware_wallet'] = hardwareWallet;
    data['started_at'] = startedAt;
    data['development_status'] = developmentStatus;
    data['proof_type'] = proofType;
    data['org_structure'] = orgStructure;
    data['hash_algorithm'] = hashAlgorithm;
    data['contract'] = contract;
    data['platform'] = platform;
    if (contracts != null) {
      data['contracts'] = contracts!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links!.toJson();
    }
    if (linksExtended != null) {
      data['links_extended'] =
          linksExtended!.map((v) => v.toJson()).toList();
    }
    if (whitepaper != null) {
      data['whitepaper'] = whitepaper!.toJson();
    }
    data['first_data_at'] = firstDataAt;
    data['last_data_at'] = lastDataAt;
    return data;
  }
}

class Parent {
  String? id;
  String? name;
  String? symbol;

  Parent({this.id, this.name, this.symbol});

  Parent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['symbol'] = symbol;
    return data;
  }
}

class Tags {
  String? id;
  String? name;
  int? coinCounter;
  int? icoCounter;

  Tags({this.id, this.name, this.coinCounter, this.icoCounter});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coinCounter = json['coin_counter'];
    icoCounter = json['ico_counter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['coin_counter'] = coinCounter;
    data['ico_counter'] = icoCounter;
    return data;
  }
}

class Team {
  String? id;
  String? name;
  String? position;

  Team({this.id, this.name, this.position});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['position'] = position;
    return data;
  }
}

class Contracts {
  String? contract;
  String? platform;
  String? type;

  Contracts({this.contract, this.platform, this.type});

  Contracts.fromJson(Map<String, dynamic> json) {
    contract = json['contract'];
    platform = json['platform'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['contract'] = contract;
    data['platform'] = platform;
    data['type'] = type;
    return data;
  }
}

class Links {
  List<String>? explorer;
  List<String>? facebook;
  List<String>? reddit;
  List<String>? sourceCode;
  List<String>? website;
  List<String>? youtube;
  String? medium;

  Links(
      {this.explorer,
      this.facebook,
      this.reddit,
      this.sourceCode,
      this.website,
      this.youtube,
      this.medium});

  Links.fromJson(Map<String, dynamic> json) {
    explorer = json['explorer']?.cast<String>();
    facebook = json['facebook']?.cast<String>();
    reddit = json['reddit']?.cast<String>();
    sourceCode = json['source_code']?.cast<String>();
    website = json['website']?.cast<String>();
    youtube = json['youtube']?.cast<String>();
    medium = json['medium'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['explorer'] = explorer;
    data['facebook'] = facebook;
    data['reddit'] = reddit;
    data['source_code'] = sourceCode;
    data['website'] = website;
    data['youtube'] = youtube;
    data['medium'] = medium;
    return data;
  }
}

class LinksExtended {
  String? url;
  String? type;
  Stats? stats;

  LinksExtended({this.url, this.type, this.stats});

  LinksExtended.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    type = json['type'];
    stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['type'] = type;
    if (stats != null) {
      data['stats'] = stats!.toJson();
    }
    return data;
  }
}

class Stats {
  int? subscribers;
  int? contributors;
  int? stars;

  Stats({this.subscribers, this.contributors, this.stars});

  Stats.fromJson(Map<String, dynamic> json) {
    subscribers = json['subscribers'];
    contributors = json['contributors'];
    stars = json['stars'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['subscribers'] = subscribers;
    data['contributors'] = contributors;
    data['stars'] = stars;
    return data;
  }
}

class Whitepaper {
  String? link;
  String? thumbnail;

  Whitepaper({this.link, this.thumbnail});

  Whitepaper.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['link'] = link;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
