class Jios_Model {
  Jios_Model({
      this.results,});

  Jios_Model.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }
  List<Results>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Results {
  Results({
      this.encryptedMediaUrl, 
      this.image, 
      this.key, 
      this.language, 
      this.moreInfo, 
      this.permaUrl, 
      this.playCount, 
      this.subtitle, 
      this.title, 
      this.year,});

  Results.fromJson(dynamic json) {
    encryptedMediaUrl = json['encrypted_media_url'];
    image = json['image'];
    key = json['key'];
    language = json['language'];
    moreInfo = json['more_info'] != null ? MoreInfo.fromJson(json['more_info']) : null;
    permaUrl = json['perma_url'];
    playCount = json['play_count'];
    subtitle = json['subtitle'];
    title = json['title'];
    year = json['year'];
  }
  String? encryptedMediaUrl;
  String? image;
  String? key;
  String? language;
  MoreInfo? moreInfo;
  String? permaUrl;
  String? playCount;
  String? subtitle;
  String? title;
  String? year;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['encrypted_media_url'] = encryptedMediaUrl;
    map['image'] = image;
    map['key'] = key;
    map['language'] = language;
    if (moreInfo != null) {
      map['more_info'] = moreInfo?.toJson();
    }
    map['perma_url'] = permaUrl;
    map['play_count'] = playCount;
    map['subtitle'] = subtitle;
    map['title'] = title;
    map['year'] = year;
    return map;
  }

}

class MoreInfo {
  MoreInfo({
      this.album, 
      this.albumUrl, 
      this.artistMap, 
      this.duration, 
      this.label,});

  MoreInfo.fromJson(dynamic json) {
    album = json['album'];
    albumUrl = json['album_url'];
    artistMap = json['artistMap'] != null ? ArtistMap.fromJson(json['artistMap']) : null;
    duration = json['duration'];
    label = json['label'];
  }
  String? album;
  String? albumUrl;
  ArtistMap? artistMap;
  String? duration;
  String? label;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['album'] = album;
    map['album_url'] = albumUrl;
    if (artistMap != null) {
      map['artistMap'] = artistMap?.toJson();
    }
    map['duration'] = duration;
    map['label'] = label;
    return map;
  }

}

class ArtistMap {
  ArtistMap({
      this.artists, 
      this.featuredArtists, 
      this.primaryArtists,});

  ArtistMap.fromJson(dynamic json) {
    if (json['artists'] != null) {
      artists = [];
      json['artists'].forEach((v) {
        artists?.add(Artists.fromJson(v));
      });
    }
    if (json['featured_artists'] != null) {
      featuredArtists = [];
      json['featured_artists'].forEach((v) {
        featuredArtists?.add(v);
      });
    }
    if (json['primary_artists'] != null) {
      primaryArtists = [];
      json['primary_artists'].forEach((v) {
        primaryArtists?.add(PrimaryArtists.fromJson(v));
      });
    }
  }
  List<Artists>? artists;
  List<dynamic>? featuredArtists;
  List<PrimaryArtists>? primaryArtists;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (artists != null) {
      map['artists'] = artists?.map((v) => v.toJson()).toList();
    }
    if (featuredArtists != null) {
      map['featured_artists'] = featuredArtists?.map((v) => v.toJson()).toList();
    }
    if (primaryArtists != null) {
      map['primary_artists'] = primaryArtists?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class PrimaryArtists {
  PrimaryArtists({
      this.id, 
      this.image, 
      this.name, 
      this.permaUrl, 
      this.role, 
      this.type,});

  PrimaryArtists.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    permaUrl = json['perma_url'];
    role = json['role'];
    type = json['type'];
  }
  String? id;
  String? image;
  String? name;
  String? permaUrl;
  String? role;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['name'] = name;
    map['perma_url'] = permaUrl;
    map['role'] = role;
    map['type'] = type;
    return map;
  }

}

class Artists {
  Artists({
      this.id, 
      this.image, 
      this.name, 
      this.permaUrl, 
      this.role, 
      this.type,});

  Artists.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    permaUrl = json['perma_url'];
    role = json['role'];
    type = json['type'];
  }
  String? id;
  String? image;
  String? name;
  String? permaUrl;
  String? role;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['name'] = name;
    map['perma_url'] = permaUrl;
    map['role'] = role;
    map['type'] = type;
    return map;
  }

}