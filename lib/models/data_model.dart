Map<String, dynamic> data = {
  "data": [
    {
      "name": "Mount Bromo",
      "image": "images/7.jpg"
    },
    {
      "name": "Koh phi phi",
      "image": "images/toronto-street-view.jpg"
    },
  ]
};


class DataModel {
  List<Data>? data;

  DataModel({this.data});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  String? image;

  Data({this.name, this.image});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}