class CustomerModel {
  late int id;
  late String name;
  late String email;
  late String paswrd;
  late String imei;
  late int isLoged;
  late int userRole;

  CustomerModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.imei,
      required this.isLoged,
      required this.userRole});

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        imei: json['imei'],
        isLoged: json['isLoged'],
        userRole: json['userRole']);
  }

  Map<String, dynamic> toJsonAdd() {
    return {
      "name": name,
      "email": email,
      "pswrd": paswrd,
      "imei": imei,
      "isLoged": isLoged,
      "userRole": userRole
    };
  }
}
