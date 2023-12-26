
class SpotifyModel {
  Albums? albums;
  Artists1? artists;
  Episodes? episodes;
  Genres? genres;
  Playlists? playlists;
  Podcasts? podcasts;
  TopResults? topResults;
  Tracks? tracks;
  Users? users;

  SpotifyModel({this.albums, this.artists, this.episodes, this.genres, this.playlists, this.podcasts, this.topResults, this.tracks, this.users});

  SpotifyModel.fromJson(Map<String, dynamic> json) {
    albums = json["albums"] == null ? null : Albums.fromJson(json["albums"]);
    artists = json["artists"] == null ? null : Artists1.fromJson(json["artists"]);
    episodes = json["episodes"] == null ? null : Episodes.fromJson(json["episodes"]);
    genres = json["genres"] == null ? null : Genres.fromJson(json["genres"]);
    playlists = json["playlists"] == null ? null : Playlists.fromJson(json["playlists"]);
    podcasts = json["podcasts"] == null ? null : Podcasts.fromJson(json["podcasts"]);
    topResults = json["topResults"] == null ? null : TopResults.fromJson(json["topResults"]);
    tracks = json["tracks"] == null ? null : Tracks.fromJson(json["tracks"]);
    users = json["users"] == null ? null : Users.fromJson(json["users"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(albums != null) {
      _data["albums"] = albums?.toJson();
    }
    if(artists != null) {
      _data["artists"] = artists?.toJson();
    }
    if(episodes != null) {
      _data["episodes"] = episodes?.toJson();
    }
    if(genres != null) {
      _data["genres"] = genres?.toJson();
    }
    if(playlists != null) {
      _data["playlists"] = playlists?.toJson();
    }
    if(podcasts != null) {
      _data["podcasts"] = podcasts?.toJson();
    }
    if(topResults != null) {
      _data["topResults"] = topResults?.toJson();
    }
    if(tracks != null) {
      _data["tracks"] = tracks?.toJson();
    }
    if(users != null) {
      _data["users"] = users?.toJson();
    }
    return _data;
  }
}

class Users {
  int? totalCount;
  List<Items11>? items;

  Users({this.totalCount, this.items});

  Users.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items11.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items11 {
  Data7? data;

  Items11({this.data});

  Items11.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data7.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data7 {
  String? uri;
  String? id;
  String? displayName;
  String? username;
  Image? image;

  Data7({this.uri, this.id, this.displayName, this.username, this.image});

  Data7.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    id = json["id"];
    displayName = json["displayName"];
    username = json["username"];
    image = json["image"] == null ? null : Image.fromJson(json["image"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["id"] = id;
    _data["displayName"] = displayName;
    _data["username"] = username;
    if(image != null) {
      _data["image"] = image?.toJson();
    }
    return _data;
  }
}

class Image {
  String? smallImageUrl;
  String? largeImageUrl;

  Image({this.smallImageUrl, this.largeImageUrl});

  Image.fromJson(Map<String, dynamic> json) {
    smallImageUrl = json["smallImageUrl"];
    largeImageUrl = json["largeImageUrl"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["smallImageUrl"] = smallImageUrl;
    _data["largeImageUrl"] = largeImageUrl;
    return _data;
  }
}

class Tracks {
  int? totalCount;
  List<Items9>? items;

  Tracks({this.totalCount, this.items});

  Tracks.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items9.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items9 {
  Data6? data;

  Items9({this.data});

  Items9.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data6.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data6 {
  String? uri;
  String? id;
  String? name;
  AlbumOfTrack1? albumOfTrack;
  Artists3? artists;
  ContentRating2? contentRating;
  Duration2? duration;
  Playability1? playability;

  Data6({this.uri, this.id, this.name, this.albumOfTrack, this.artists, this.contentRating, this.duration, this.playability});

  Data6.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    id = json["id"];
    name = json["name"];
    albumOfTrack = json["albumOfTrack"] == null ? null : AlbumOfTrack1.fromJson(json["albumOfTrack"]);
    artists = json["artists"] == null ? null : Artists3.fromJson(json["artists"]);
    contentRating = json["contentRating"] == null ? null : ContentRating2.fromJson(json["contentRating"]);
    duration = json["duration"] == null ? null : Duration2.fromJson(json["duration"]);
    playability = json["playability"] == null ? null : Playability1.fromJson(json["playability"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["id"] = id;
    _data["name"] = name;
    if(albumOfTrack != null) {
      _data["albumOfTrack"] = albumOfTrack?.toJson();
    }
    if(artists != null) {
      _data["artists"] = artists?.toJson();
    }
    if(contentRating != null) {
      _data["contentRating"] = contentRating?.toJson();
    }
    if(duration != null) {
      _data["duration"] = duration?.toJson();
    }
    if(playability != null) {
      _data["playability"] = playability?.toJson();
    }
    return _data;
  }
}

class Playability1 {
  bool? playable;

  Playability1({this.playable});

  Playability1.fromJson(Map<String, dynamic> json) {
    playable = json["playable"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["playable"] = playable;
    return _data;
  }
}

class Duration2 {
  int? totalMilliseconds;

  Duration2({this.totalMilliseconds});

  Duration2.fromJson(Map<String, dynamic> json) {
    totalMilliseconds = json["totalMilliseconds"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalMilliseconds"] = totalMilliseconds;
    return _data;
  }
}

class ContentRating2 {
  String? label;

  ContentRating2({this.label});

  ContentRating2.fromJson(Map<String, dynamic> json) {
    label = json["label"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    return _data;
  }
}

class Artists3 {
  List<Items10>? items;

  Artists3({this.items});

  Artists3.fromJson(Map<String, dynamic> json) {
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items10.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items10 {
  String? uri;
  Profile3? profile;

  Items10({this.uri, this.profile});

  Items10.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    profile = json["profile"] == null ? null : Profile3.fromJson(json["profile"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    if(profile != null) {
      _data["profile"] = profile?.toJson();
    }
    return _data;
  }
}

class Profile3 {
  String? name;

  Profile3({this.name});

  Profile3.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}

class AlbumOfTrack1 {
  String? uri;
  String? name;
  CoverArt5? coverArt;
  String? id;
  SharingInfo1? sharingInfo;

  AlbumOfTrack1({this.uri, this.name, this.coverArt, this.id, this.sharingInfo});

  AlbumOfTrack1.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    name = json["name"];
    coverArt = json["coverArt"] == null ? null : CoverArt5.fromJson(json["coverArt"]);
    id = json["id"];
    sharingInfo = json["sharingInfo"] == null ? null : SharingInfo1.fromJson(json["sharingInfo"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["name"] = name;
    if(coverArt != null) {
      _data["coverArt"] = coverArt?.toJson();
    }
    _data["id"] = id;
    if(sharingInfo != null) {
      _data["sharingInfo"] = sharingInfo?.toJson();
    }
    return _data;
  }
}

class SharingInfo1 {
  String? shareUrl;

  SharingInfo1({this.shareUrl});

  SharingInfo1.fromJson(Map<String, dynamic> json) {
    shareUrl = json["shareUrl"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["shareUrl"] = shareUrl;
    return _data;
  }
}

class CoverArt5 {
  List<Sources7>? sources;

  CoverArt5({this.sources});

  CoverArt5.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources7.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources7 {
  String? url;
  int? width;
  int? height;

  Sources7({this.url, this.width, this.height});

  Sources7.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class TopResults {
  List<Items7>? items;
  List<dynamic>? featured;

  TopResults({this.items, this.featured});

  TopResults.fromJson(Map<String, dynamic> json) {
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items7.fromJson(e)).toList();
    featured = json["featured"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    if(featured != null) {
      _data["featured"] = featured;
    }
    return _data;
  }
}

class Items7 {
  Data5? data;

  Items7({this.data});

  Items7.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data5.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data5 {
  String? uri;
  String? id;
  String? name;
  AlbumOfTrack? albumOfTrack;
  Artists2? artists;
  ContentRating1? contentRating;
  Duration1? duration;
  Playability? playability;

  Data5({this.uri, this.id, this.name, this.albumOfTrack, this.artists, this.contentRating, this.duration, this.playability});

  Data5.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    id = json["id"];
    name = json["name"];
    albumOfTrack = json["albumOfTrack"] == null ? null : AlbumOfTrack.fromJson(json["albumOfTrack"]);
    artists = json["artists"] == null ? null : Artists2.fromJson(json["artists"]);
    contentRating = json["contentRating"] == null ? null : ContentRating1.fromJson(json["contentRating"]);
    duration = json["duration"] == null ? null : Duration1.fromJson(json["duration"]);
    playability = json["playability"] == null ? null : Playability.fromJson(json["playability"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["id"] = id;
    _data["name"] = name;
    if(albumOfTrack != null) {
      _data["albumOfTrack"] = albumOfTrack?.toJson();
    }
    if(artists != null) {
      _data["artists"] = artists?.toJson();
    }
    if(contentRating != null) {
      _data["contentRating"] = contentRating?.toJson();
    }
    if(duration != null) {
      _data["duration"] = duration?.toJson();
    }
    if(playability != null) {
      _data["playability"] = playability?.toJson();
    }
    return _data;
  }
}

class Playability {
  bool? playable;

  Playability({this.playable});

  Playability.fromJson(Map<String, dynamic> json) {
    playable = json["playable"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["playable"] = playable;
    return _data;
  }
}

class Duration1 {
  int? totalMilliseconds;

  Duration1({this.totalMilliseconds});

  Duration1.fromJson(Map<String, dynamic> json) {
    totalMilliseconds = json["totalMilliseconds"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalMilliseconds"] = totalMilliseconds;
    return _data;
  }
}

class ContentRating1 {
  String? label;

  ContentRating1({this.label});

  ContentRating1.fromJson(Map<String, dynamic> json) {
    label = json["label"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    return _data;
  }
}

class Artists2 {
  List<Items8>? items;

  Artists2({this.items});

  Artists2.fromJson(Map<String, dynamic> json) {
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items8.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items8 {
  String? uri;
  Profile2? profile;

  Items8({this.uri, this.profile});

  Items8.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    profile = json["profile"] == null ? null : Profile2.fromJson(json["profile"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    if(profile != null) {
      _data["profile"] = profile?.toJson();
    }
    return _data;
  }
}

class Profile2 {
  String? name;

  Profile2({this.name});

  Profile2.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}

class AlbumOfTrack {
  String? uri;
  String? name;
  CoverArt4? coverArt;
  String? id;
  SharingInfo? sharingInfo;

  AlbumOfTrack({this.uri, this.name, this.coverArt, this.id, this.sharingInfo});

  AlbumOfTrack.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    name = json["name"];
    coverArt = json["coverArt"] == null ? null : CoverArt4.fromJson(json["coverArt"]);
    id = json["id"];
    sharingInfo = json["sharingInfo"] == null ? null : SharingInfo.fromJson(json["sharingInfo"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["name"] = name;
    if(coverArt != null) {
      _data["coverArt"] = coverArt?.toJson();
    }
    _data["id"] = id;
    if(sharingInfo != null) {
      _data["sharingInfo"] = sharingInfo?.toJson();
    }
    return _data;
  }
}

class SharingInfo {
  String? shareUrl;

  SharingInfo({this.shareUrl});

  SharingInfo.fromJson(Map<String, dynamic> json) {
    shareUrl = json["shareUrl"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["shareUrl"] = shareUrl;
    return _data;
  }
}

class CoverArt4 {
  List<Sources6>? sources;

  CoverArt4({this.sources});

  CoverArt4.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources6.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources6 {
  String? url;
  int? width;
  int? height;

  Sources6({this.url, this.width, this.height});

  Sources6.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class Podcasts {
  int? totalCount;
  List<Items6>? items;

  Podcasts({this.totalCount, this.items});

  Podcasts.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items6.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items6 {
  Data4? data;

  Items6({this.data});

  Items6.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data4.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data4 {
  String? uri;
  String? name;
  CoverArt3? coverArt;
  String? type;
  Publisher? publisher;
  String? mediaType;

  Data4({this.uri, this.name, this.coverArt, this.type, this.publisher, this.mediaType});

  Data4.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    name = json["name"];
    coverArt = json["coverArt"] == null ? null : CoverArt3.fromJson(json["coverArt"]);
    type = json["type"];
    publisher = json["publisher"] == null ? null : Publisher.fromJson(json["publisher"]);
    mediaType = json["mediaType"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["name"] = name;
    if(coverArt != null) {
      _data["coverArt"] = coverArt?.toJson();
    }
    _data["type"] = type;
    if(publisher != null) {
      _data["publisher"] = publisher?.toJson();
    }
    _data["mediaType"] = mediaType;
    return _data;
  }
}

class Publisher {
  String? name;

  Publisher({this.name});

  Publisher.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}

class CoverArt3 {
  List<Sources5>? sources;

  CoverArt3({this.sources});

  CoverArt3.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources5.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources5 {
  String? url;
  int? width;
  int? height;

  Sources5({this.url, this.width, this.height});

  Sources5.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class Playlists {
  int? totalCount;
  List<Items4>? items;

  Playlists({this.totalCount, this.items});

  Playlists.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items4.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items4 {
  Data3? data;

  Items4({this.data});

  Items4.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data3.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data3 {
  String? uri;
  String? name;
  String? description;
  Images? images;
  Owner? owner;

  Data3({this.uri, this.name, this.description, this.images, this.owner});

  Data3.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    name = json["name"];
    description = json["description"];
    images = json["images"] == null ? null : Images.fromJson(json["images"]);
    owner = json["owner"] == null ? null : Owner.fromJson(json["owner"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["name"] = name;
    _data["description"] = description;
    if(images != null) {
      _data["images"] = images?.toJson();
    }
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    return _data;
  }
}

class Owner {
  String? name;

  Owner({this.name});

  Owner.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}

class Images {
  List<Items5>? items;

  Images({this.items});

  Images.fromJson(Map<String, dynamic> json) {
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items5.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items5 {
  List<Sources4>? sources;

  Items5({this.sources});

  Items5.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources4.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources4 {
  String? url;
  dynamic width;
  dynamic height;

  Sources4({this.url, this.width, this.height});

  Sources4.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class Genres {
  int? totalCount;
  List<dynamic>? items;

  Genres({this.totalCount, this.items});

  Genres.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items;
    }
    return _data;
  }
}

class Episodes {
  int? totalCount;
  List<Items3>? items;

  Episodes({this.totalCount, this.items});

  Episodes.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items3.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items3 {
  Data2? data;

  Items3({this.data});

  Items3.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data2.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data2 {
  String? uri;
  String? name;
  CoverArt1? coverArt;
  Duration? duration;
  ReleaseDate? releaseDate;
  Podcast? podcast;
  String? description;
  ContentRating? contentRating;

  Data2({this.uri, this.name, this.coverArt, this.duration, this.releaseDate, this.podcast, this.description, this.contentRating});

  Data2.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    name = json["name"];
    coverArt = json["coverArt"] == null ? null : CoverArt1.fromJson(json["coverArt"]);
    duration = json["duration"] == null ? null : Duration.fromJson(json["duration"]);
    releaseDate = json["releaseDate"] == null ? null : ReleaseDate.fromJson(json["releaseDate"]);
    podcast = json["podcast"] == null ? null : Podcast.fromJson(json["podcast"]);
    description = json["description"];
    contentRating = json["contentRating"] == null ? null : ContentRating.fromJson(json["contentRating"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["name"] = name;
    if(coverArt != null) {
      _data["coverArt"] = coverArt?.toJson();
    }
    if(duration != null) {
      _data["duration"] = duration?.toJson();
    }
    if(releaseDate != null) {
      _data["releaseDate"] = releaseDate?.toJson();
    }
    if(podcast != null) {
      _data["podcast"] = podcast?.toJson();
    }
    _data["description"] = description;
    if(contentRating != null) {
      _data["contentRating"] = contentRating?.toJson();
    }
    return _data;
  }
}

class ContentRating {
  String? label;

  ContentRating({this.label});

  ContentRating.fromJson(Map<String, dynamic> json) {
    label = json["label"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["label"] = label;
    return _data;
  }
}

class Podcast {
  CoverArt2? coverArt;

  Podcast({this.coverArt});

  Podcast.fromJson(Map<String, dynamic> json) {
    coverArt = json["coverArt"] == null ? null : CoverArt2.fromJson(json["coverArt"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(coverArt != null) {
      _data["coverArt"] = coverArt?.toJson();
    }
    return _data;
  }
}

class CoverArt2 {
  List<Sources3>? sources;

  CoverArt2({this.sources});

  CoverArt2.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources3.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources3 {
  String? url;
  int? width;
  int? height;

  Sources3({this.url, this.width, this.height});

  Sources3.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class ReleaseDate {
  String? isoString;

  ReleaseDate({this.isoString});

  ReleaseDate.fromJson(Map<String, dynamic> json) {
    isoString = json["isoString"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isoString"] = isoString;
    return _data;
  }
}

class Duration {
  int? totalMilliseconds;

  Duration({this.totalMilliseconds});

  Duration.fromJson(Map<String, dynamic> json) {
    totalMilliseconds = json["totalMilliseconds"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalMilliseconds"] = totalMilliseconds;
    return _data;
  }
}

class CoverArt1 {
  List<Sources2>? sources;

  CoverArt1({this.sources});

  CoverArt1.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources2.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources2 {
  String? url;
  int? width;
  int? height;

  Sources2({this.url, this.width, this.height});

  Sources2.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class Artists1 {
  int? totalCount;
  List<Items2>? items;

  Artists1({this.totalCount, this.items});

  Artists1.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items2.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items2 {
  Data1? data;

  Items2({this.data});

  Items2.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data1.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data1 {
  String? uri;
  Profile1? profile;
  Visuals? visuals;

  Data1({this.uri, this.profile, this.visuals});

  Data1.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    profile = json["profile"] == null ? null : Profile1.fromJson(json["profile"]);
    visuals = json["visuals"] == null ? null : Visuals.fromJson(json["visuals"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    if(profile != null) {
      _data["profile"] = profile?.toJson();
    }
    if(visuals != null) {
      _data["visuals"] = visuals?.toJson();
    }
    return _data;
  }
}

class Visuals {
  AvatarImage? avatarImage;

  Visuals({this.avatarImage});

  Visuals.fromJson(Map<String, dynamic> json) {
    avatarImage = json["avatarImage"] == null ? null : AvatarImage.fromJson(json["avatarImage"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(avatarImage != null) {
      _data["avatarImage"] = avatarImage?.toJson();
    }
    return _data;
  }
}

class AvatarImage {
  List<Sources1>? sources;

  AvatarImage({this.sources});

  AvatarImage.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources1.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources1 {
  String? url;
  int? width;
  int? height;

  Sources1({this.url, this.width, this.height});

  Sources1.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class Profile1 {
  String? name;

  Profile1({this.name});

  Profile1.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}

class Albums {
  int? totalCount;
  List<Items>? items;

  Albums({this.totalCount, this.items});

  Albums.fromJson(Map<String, dynamic> json) {
    totalCount = json["totalCount"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["totalCount"] = totalCount;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items {
  Data? data;

  Items({this.data});

  Items.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  String? uri;
  String? name;
  Artists? artists;
  CoverArt? coverArt;
  Date? date;

  Data({this.uri, this.name, this.artists, this.coverArt, this.date});

  Data.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    name = json["name"];
    artists = json["artists"] == null ? null : Artists.fromJson(json["artists"]);
    coverArt = json["coverArt"] == null ? null : CoverArt.fromJson(json["coverArt"]);
    date = json["date"] == null ? null : Date.fromJson(json["date"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    _data["name"] = name;
    if(artists != null) {
      _data["artists"] = artists?.toJson();
    }
    if(coverArt != null) {
      _data["coverArt"] = coverArt?.toJson();
    }
    if(date != null) {
      _data["date"] = date?.toJson();
    }
    return _data;
  }
}

class Date {
  int? year;

  Date({this.year});

  Date.fromJson(Map<String, dynamic> json) {
    year = json["year"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["year"] = year;
    return _data;
  }
}

class CoverArt {
  List<Sources>? sources;

  CoverArt({this.sources});

  CoverArt.fromJson(Map<String, dynamic> json) {
    sources = json["sources"] == null ? null : (json["sources"] as List).map((e) => Sources.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Sources {
  String? url;
  int? width;
  int? height;

  Sources({this.url, this.width, this.height});

  Sources.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}

class Artists {
  List<Items1>? items;

  Artists({this.items});

  Artists.fromJson(Map<String, dynamic> json) {
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items1.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items1 {
  String? uri;
  Profile? profile;

  Items1({this.uri, this.profile});

  Items1.fromJson(Map<String, dynamic> json) {
    uri = json["uri"];
    profile = json["profile"] == null ? null : Profile.fromJson(json["profile"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["uri"] = uri;
    if(profile != null) {
      _data["profile"] = profile?.toJson();
    }
    return _data;
  }
}

class Profile {
  String? name;

  Profile({this.name});

  Profile.fromJson(Map<String, dynamic> json) {
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    return _data;
  }
}