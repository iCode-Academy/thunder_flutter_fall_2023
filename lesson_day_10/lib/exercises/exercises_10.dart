import 'package:lesson_day_13/lesson_day_13_abstract_02.dart';

abstract class Team {
    List<Sportsperson> players;
    Team(this.players);

    void teamStrength();
    void teamSport();
}



class FootballTeam extends Team {
    FootballTeam(List<Sportsperson> players) : super(players);

    @override
    void teamStrength() {
        double totalStrength = 0;
        for (var player in players) {
            totalStrength += player.stamina;
        }
        print("Total strength of the team: $totalStrength");
    }

    @override
    void teamSport() {
        print("The team plays football");
    }
}

class CricketTeam extends Team {
    CricketTeam(List<Sportsperson> players) : super(players);

    @override
    void teamStrength() {
        double totalStrength = 0;
        for (var player in players) {
            totalStrength += player.stamina;
        }
        print("Total strength of the team: $totalStrength");
    }

    @override
    void teamSport() {
        print("The team plays cricket");
    }
}

void main(){
    final List<Sportsperson> footballPlayers = [
        Footballer("Ronaldo", 35, 90, 100),
        Footballer("Messi", 33, 95, 120),
        Footballer("Neymar", 28, 85, 80),
        Footballer("Mbappe", 21, 80, 70),
        Footballer("Salah", 28, 90, 90),
    ];

    final List<Sportsperson> cricketPlayers = [
        Cricketer("Kohli", 31, 90, 12000),
        Cricketer("Rohit", 33, 85, 10000),
        Cricketer("Dhoni", 38, 80, 8000),
        Cricketer("Bumrah", 26, 95, 100),
        Cricketer("Jadeja", 31, 90, 5000),
    ];

    final FootballTeam footballTeam = FootballTeam(footballPlayers);
    footballTeam.teamStrength();
    footballTeam.teamSport();

    final CricketTeam cricketTeam = CricketTeam(cricketPlayers);
    cricketTeam.teamStrength();
    cricketTeam.teamSport();
}