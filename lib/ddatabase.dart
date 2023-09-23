
class Hotel {
  String? image;
  String? title;
  String? description;
  String? type;
  String? location;
  double? id;
  int? price;
  double? rate;


 Hotel(this.image,this.title,this.description,this.type,this.location,this.id, this.price,this.rate);


static List<Hotel> recommendation = [
  Hotel("https://images.pexels.com/photos/271619/pexels-photo-271619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel Hypnos", "Welcome to hotel", "Single Room", "Delhi", 100, 1500, 5),
  Hotel("https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel Iris ", "Welcome to hotel", "Double Room", "Himachal Pradesh", 100, 1550, 5),
  Hotel("https://images.pexels.com/photos/237371/pexels-photo-237371.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel Azul ", "Welcome to hotel", "Villa Room", "Uttarakhand", 100, 1600, 5),
  Hotel("https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel Ebony", "Welcome to hotel", "Cottage Room", "Jammu Kashmir", 100, 1650, 5),
  Hotel("https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel Altheda", "Welcome to hotel", "Cottage Room", "Haryana", 100, 1700, 5),
  Hotel("https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Superior Room", "Welcome to hotel", "Cottage Room", "West Bengal", 100, 1750, 5),
  Hotel("https://images.pexels.com/photos/237371/pexels-photo-237371.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel Aurelia", "Welcome to hotel", "Villa Room", "Rajasthan", 100, 1800, 5),
  Hotel("https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel Citrus", "Welcome to hotel", "Cottage Room", "Punjab", 100, 1900, 5),
  Hotel("https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Hotel The Nectarine", "Welcome to hotel", "Cottage Room", "Uttar Pradesh", 100, 2000, 5),

] ;

  }