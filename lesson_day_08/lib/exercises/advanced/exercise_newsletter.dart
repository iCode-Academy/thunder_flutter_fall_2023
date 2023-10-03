class Newsletter {
  String topic;
  List<String> subscribers;

  Newsletter(this.topic, [this.subscribers = const []]);

  void addSubscriber(String email) {
    subscribers.add(email);
    print("$email subscribed to $topic newsletter.");
  }

  bool isSubscribed(String email) {
    return subscribers.contains(email);
  }
}

void main() {
  // create 3 test here
  final Newsletter newsletter = Newsletter(
    "Flutter",
  );
  print(newsletter.topic);
  print(newsletter.subscribers);
  print(newsletter.isSubscribed("khangaikhuu@gmail.com"));

  newsletter.addSubscriber("test@gmail.com");
  print(newsletter.topic);
  print(newsletter.subscribers);
  print(newsletter.isSubscribed("text@gmail.com"));
}
