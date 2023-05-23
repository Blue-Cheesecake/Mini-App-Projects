class DoctorModel {
  final String name;
  final String type;
  final String imagePath;
  double rating;
  bool isFavorite;

  DoctorModel({
    required this.name,
    required this.type,
    required this.imagePath,
    required this.rating,
    required this.isFavorite,
  });
}
