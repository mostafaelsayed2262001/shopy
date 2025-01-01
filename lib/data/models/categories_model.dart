class Categories {
  final String name;

  Categories({required this.name});

  // Factory constructor to create a Category instance from a string
  factory Categories.fromJson(String json) {
    return Categories(name: json);
  }

  // Method to convert the Category instance back to a string
  String toJson() {
    return name;
  }
}
