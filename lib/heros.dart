class HeroList {
  int? ename;
  String? cname;
  String? title;
  int? payType;
  int? newType;
  int? heroType;
  String? skinName;

  HeroList(
      {required this.ename,
        required this.cname,
        required this.title,
        required this.payType,
        required this.newType,
        required this.heroType,
        required this.skinName});

  HeroList.fromJson(Map<String, dynamic> json) {


    ename = json['ename'];
    cname = json['cname'];
    title = json['title'];
    payType = json['pay_type'];
    newType = json['new_type'];
    heroType = json['hero_type'];
    skinName = json['skin_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ename'] = ename;
    data['cname'] = cname;
    data['title'] = title;
    data['pay_type'] = payType;
    data['new_type'] = newType;
    data['hero_type'] = heroType;
    data['skin_name'] = skinName;
    return data;
  }
}
