class RandomInfoModel{
  String text;
  String type;

  RandomInfoModel(this.text, this.type);

  RandomInfoModel.fromJson(Map<String, dynamic> parsedJson){
    text = parsedJson['text'];
    type = parsedJson['type'];
  }
}