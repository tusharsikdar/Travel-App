class Place {
  String img;
  String location;
  String name;

  Place(
      this.img,
      this.name,
      this.location,
      );
  static List<Place> generatedPlaceList() {
    return [
      Place(
        "assets/place/Coxs Bazar.jpg",
        "Coxs Bazar",
        "Chittagong, Bangladeh",
      ),
      Place(
        "assets/place/bali.jpeg",
        "Nusa Penida",
        "Bali, Indoneshia",
      ),
      Place(
        "assets/place/Lalon bridge.jpg",
        "Lalon Bridge",
        "Bangladeh",
      ),
      Place(
        "assets/place/Padma.jpg",
        "Padma River",
        "Bangladeh",
      ),
    ];
  }
}