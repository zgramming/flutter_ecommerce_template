import 'dart:convert';

class User {
  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Login login;
  final Dob dob;
  final Registered registered;
  final String phone;
  final String cell;
  final Id id;
  final Picture picture;
  final String nat;

  const User({
    this.gender = '',
    this.name = const Name(),
    this.location = const Location(),
    this.email = '',
    this.login = const Login(),
    this.dob = const Dob(),
    this.registered = const Registered(),
    this.phone = '',
    this.cell = '',
    this.id = const Id(),
    this.picture = const Picture(),
    this.nat = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'gender': gender,
      'name': name.toMap(),
      'location': location.toMap(),
      'email': email,
      'login': login.toMap(),
      'dob': dob.toMap(),
      'registered': registered.toMap(),
      'phone': phone,
      'cell': cell,
      'id': id.toMap(),
      'picture': picture.toMap(),
      'nat': nat,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      gender: map['gender'],
      name: Name.fromMap(map['name']),
      location: Location.fromMap(map['location']),
      email: map['email'],
      login: Login.fromMap(map['login']),
      dob: Dob.fromMap(map['dob']),
      registered: Registered.fromMap(map['registered']),
      phone: map['phone'],
      cell: map['cell'],
      id: Id.fromMap(map['id']),
      picture: Picture.fromMap(map['picture']),
      nat: map['nat'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}

class Name {
  final String title;
  final String first;
  final String last;

  const Name({
    this.title = '',
    this.first = '',
    this.last = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'first': first,
      'last': last,
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      title: map['title'],
      first: map['first'],
      last: map['last'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) => Name.fromMap(json.decode(source));
}

class Location {
  final String street;
  final String city;
  final String state;
  final String postcode;
  final Coordinates coordinates;
  final Timezone timezone;

  const Location({
    this.street = '',
    this.city = '',
    this.state = '',
    this.postcode = '',
    this.coordinates = const Coordinates(),
    this.timezone = const Timezone(),
  });

  Map<String, dynamic> toMap() {
    return {
      'street': street,
      'city': city,
      'state': state,
      'postcode': postcode,
      'coordinates': coordinates.toMap(),
      'timezone': timezone.toMap(),
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      street: map['street'],
      city: map['city'],
      state: map['state'],
      postcode: map['postcode'],
      coordinates: Coordinates.fromMap(map['coordinates']),
      timezone: Timezone.fromMap(map['timezone']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) => Location.fromMap(json.decode(source));
}

class Coordinates {
  final String latitude;
  final String longitude;

  const Coordinates({
    this.latitude = '',
    this.longitude = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory Coordinates.fromMap(Map<String, dynamic> map) {
    return Coordinates(
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Coordinates.fromJson(String source) => Coordinates.fromMap(json.decode(source));
}

class Timezone {
  final String offset;
  final String description;

  const Timezone({
    this.offset = '',
    this.description = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'offset': offset,
      'description': description,
    };
  }

  factory Timezone.fromMap(Map<String, dynamic> map) {
    return Timezone(
      offset: map['offset'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Timezone.fromJson(String source) => Timezone.fromMap(json.decode(source));
}

class Login {
  final String uuid;
  final String username;
  final String password;
  final String salt;
  final String md5;
  final String sha1;
  final String sha256;

  const Login({
    this.uuid = '',
    this.username = '',
    this.password = '',
    this.salt = '',
    this.md5 = '',
    this.sha1 = '',
    this.sha256 = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'username': username,
      'password': password,
      'salt': salt,
      'md5': md5,
      'sha1': sha1,
      'sha256': sha256,
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      uuid: map['uuid'],
      username: map['username'],
      password: map['password'],
      salt: map['salt'],
      md5: map['md5'],
      sha1: map['sha1'],
      sha256: map['sha256'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Login.fromJson(String source) => Login.fromMap(json.decode(source));
}

class Dob {
  final String date;
  final int age;

  const Dob({
    this.date = '',
    this.age = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'age': age,
    };
  }

  factory Dob.fromMap(Map<String, dynamic> map) {
    return Dob(
      date: map['date'],
      age: map['age'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Dob.fromJson(String source) => Dob.fromMap(json.decode(source));
}

class Registered {
  final String date;
  final int age;

  const Registered({
    this.date = '',
    this.age = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'age': age,
    };
  }

  factory Registered.fromMap(Map<String, dynamic> map) {
    return Registered(
      date: map['date'],
      age: map['age'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Registered.fromJson(String source) => Registered.fromMap(json.decode(source));
}

class Id {
  final String name;
  final String value;

  const Id({
    this.name = '',
    this.value = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'value': value,
    };
  }

  factory Id.fromMap(Map<String, dynamic> map) {
    return Id(
      name: map['name'],
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Id.fromJson(String source) => Id.fromMap(json.decode(source));
}

class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  const Picture({this.large = '', this.medium = '', this.thumbnail = ''});

  Map<String, dynamic> toMap() {
    return {
      'large': large,
      'medium': medium,
      'thumbnail': thumbnail,
    };
  }

  factory Picture.fromMap(Map<String, dynamic> map) {
    return Picture(
      large: map['large'],
      medium: map['medium'],
      thumbnail: map['thumbnail'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Picture.fromJson(String source) => Picture.fromMap(json.decode(source));
}
