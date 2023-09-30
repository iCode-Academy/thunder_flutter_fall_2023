void main() {
  print('dart lesson day 06');
  print('dart lists');
  print('dart functions');

  int a = 1;
  int b = 2;
  int c = 3;
  int d = 4;
  List<int> gahainuud = [1, 2, 3, 4]; // container of gahainuud
  print(gahainuud);
  List<String> tortnuud = ['Applee Pie', 'Cherry Pie', 'Cake', 'Cheese cake'];
  print(tortnuud);
  List<double> butarhaiToonuud = [3.5, 4.5, 7.8, 9.78];
  print(butarhaiToonuud);
  List<bool> unenHudluud = [true, false, false, true];
  print(unenHudluud);
  print(gahainuud.length);
  print(gahainuud[0]);

  print(tortnuud[0]);
  print(tortnuud[1]);
  print(tortnuud[2]);
  print(tortnuud[3]);

  for (int i = 0; i < gahainuud.length; i = i + 1) {
    print(gahainuud[i]);
  }
  String cupCake = 'Cup cake';
  tortnuud.add(cupCake);
  print(tortnuud);
  tortnuud.remove('Cake');
  print(tortnuud);

  print(butarhaiToonuud);
  butarhaiToonuud[0] = 5.5;
  print(butarhaiToonuud);
}
