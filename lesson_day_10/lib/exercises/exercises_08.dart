abstract class Weather {
  double temperature;
  double humidity;
  Weather(this.temperature, this.humidity);
  void description();
  void advice();
}

class Rainy extends Weather {
  Rainy(double temperature, double humidity) : super(temperature, humidity);

  @override
  void description() {
    print("Temperature: $temperature, Humidity: $humidity");
  }

  @override
  void advice() {
    print("Bring an umbrella");
  }
}

class Sunny extends Weather {
  Sunny(double temperature, double humidity) : super(temperature, humidity);

  @override
  void description() {
    print("Temperature: $temperature, Humidity: $humidity");
  }

  @override
  void advice() {
    print("Wear sunscreen");
  }
}

class Windy extends Weather {
  Windy(double temperature, double humidity) : super(temperature, humidity);

  @override
  void description() {
    print("Temperature: $temperature, Humidity: $humidity");
  }

  @override
  void advice() {
    print("Wear a jacket");
  }
}

void main(){
  final Rainy rainy = Rainy(20, 80);
  rainy.description();  // Should print "Temperature: 20, Humidity: 80"
  rainy.advice();  // Should print "Bring an umbrella"

  final Sunny sunny = Sunny(30, 50);
  sunny.description();  // Should print "Temperature: 30, Humidity: 50"
  sunny.advice();  // Should print "Wear sunscreen"

  final Windy windy = Windy(15, 60);
  windy.description();  // Should print "Temperature: 15, Humidity: 60"
  windy.advice();  // Should print "Wear a jacket"
}