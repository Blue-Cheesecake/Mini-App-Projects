class DoctorModel {
  final String name;
  final String type;
  final String imagePath;
  double rating;
  bool isFavorite;
  String patient;
  int experience;
  final String description;

  DoctorModel({
    required this.name,
    required this.type,
    required this.imagePath,
    required this.rating,
    required this.isFavorite,
    required this.patient,
    required this.experience,
    required this.description,
  });
}
