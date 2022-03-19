class Cutomer {
  late String name;
  late String farm_name;
  late String user_name;

  // ignore: non_constant_identifier_names
  Cutomer(
      {required this.name, required this.farm_name, required this.user_name});
}

Cutomer myCutomer =
    Cutomer(name: 'name', farm_name: 'farm_name', user_name: 'user_name');
