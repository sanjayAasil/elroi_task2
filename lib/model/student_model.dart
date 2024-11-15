class StudentModel {
  final Map<String, dynamic> json;

  StudentModel(this.json);

  int get id => json['id'];
}
