// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class pharmacyUser {
  String? mail;
  String? name;
  String? imgUrl;
  String? addr;
  String? role;
  String? phone;
  pharmacyUser({
    this.mail,
    this.name,
    this.imgUrl,
    this.addr,
    this.role,
    this.phone,
  });

  pharmacyUser copyWith({
    String? mail,
    String? name,
    String? imgUrl,
    String? addr,
    String? role,
    String? phone,
  }) {
    return pharmacyUser(
      mail: mail ?? this.mail,
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      addr: addr ?? this.addr,
      role: role ?? this.role,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mail': mail,
      'name': name,
      'imgUrl': imgUrl,
      'addr': addr,
      'role': role,
      'phone': phone,
    };
  }

  factory pharmacyUser.fromMap(Map<String, dynamic> map) {
    return pharmacyUser(
      mail: map['mail'] != null ? map['mail'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      imgUrl: map['imgUrl'] != null ? map['imgUrl'] as String : null,
      addr: map['addr'] != null ? map['addr'] as String : null,
      role: map['role'] != null ? map['role'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory pharmacyUser.fromJson(String source) =>
      pharmacyUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'pharmacyUser(mail: $mail, name: $name, imgUrl: $imgUrl, addr: $addr, role: $role, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is pharmacyUser &&
        other.mail == mail &&
        other.name == name &&
        other.imgUrl == imgUrl &&
        other.addr == addr &&
        other.role == role &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return mail.hashCode ^
        name.hashCode ^
        imgUrl.hashCode ^
        addr.hashCode ^
        role.hashCode ^
        phone.hashCode;
  }
}

final dummyUser =
    pharmacyUser(mail: '', name: '', imgUrl: '', role: '', phone: '', addr: '');
