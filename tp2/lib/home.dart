import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? selectedColor;
  String? selectedAnimal;
  String? selectedFruit;
  String? selectedSport;
  String? selectedCountry;
  String? selectedSeason;
  String? selectedMusic;
  int score = 0;

  final int totalQuestions = 7;

  void updateScore(String? currentSelection, String newSelection) {
    if (currentSelection == null) {
      setState(() {
        score += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double percentageScore = (score / totalQuestions) * 100;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 211, 136),
        appBar: AppBar(
          title: const Text("Questionnaire"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Votre score: $score / $totalQuestions (${percentageScore.toStringAsFixed(0)}%)",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Quelle est votre couleur préférée ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedColor == "Rouge" ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedColor, "Rouge");
                      selectedColor = "Rouge";
                    });
                  },
                  child: const Text("Rouge"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedColor == "Vert" ? Colors.green : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedColor, "Vert");
                      selectedColor = "Vert";
                    });
                  },
                  child: const Text("Vert"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedColor == "Bleu" ? Colors.blue : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedColor, "Bleu");
                      selectedColor = "Bleu";
                    });
                  },
                  child: const Text("Bleu"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Quel est votre animal préféré ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedAnimal == "Chat" ? Colors.orange : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedAnimal, "Chat");
                      selectedAnimal = "Chat";
                    });
                  },
                  child: const Text("Chat"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedAnimal == "Chien" ? Colors.brown : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedAnimal, "Chien");
                      selectedAnimal = "Chien";
                    });
                  },
                  child: const Text("Chien"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedAnimal == "Oiseau"
                        ? Colors.yellow
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedAnimal, "Oiseau");
                      selectedAnimal = "Oiseau";
                    });
                  },
                  child: const Text("Oiseau"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Quel est votre fruit préféré ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedFruit == "Pomme" ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedFruit, "Pomme");
                      selectedFruit = "Pomme";
                    });
                  },
                  child: const Text("Pomme"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedFruit == "Banane" ? Colors.yellow : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedFruit, "Banane");
                      selectedFruit = "Banane";
                    });
                  },
                  child: const Text("Banane"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedFruit == "Raisin" ? Colors.purple : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedFruit, "Raisin");
                      selectedFruit = "Raisin";
                    });
                  },
                  child: const Text("Raisin"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Quel est votre sport préféré ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedSport == "Football"
                        ? Colors.green
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedSport, "Football");
                      selectedSport = "Football";
                    });
                  },
                  child: const Text("Football"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedSport == "Basketball"
                        ? Colors.orange
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedSport, "Basketball");
                      selectedSport = "Basketball";
                    });
                  },
                  child: const Text("Basketball"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedSport == "Tennis" ? Colors.yellow : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedSport, "Tennis");
                      selectedSport = "Tennis";
                    });
                  },
                  child: const Text("Tennis"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Quel est votre pays préféré ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedCountry == "France" ? Colors.blue : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedCountry, "France");
                      selectedCountry = "France";
                    });
                  },
                  child: const Text("France"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedCountry == "Italie"
                        ? Colors.green
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedCountry, "Italie");
                      selectedCountry = "Italie";
                    });
                  },
                  child: const Text("Italie"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedCountry == "Espagne" ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedCountry, "Espagne");
                      selectedCountry = "Espagne";
                    });
                  },
                  child: const Text("Espagne"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Quelle est votre saison préférée ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedSeason == "Hiver"
                        ? Colors.blueGrey
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedSeason, "Hiver");
                      selectedSeason = "Hiver";
                    });
                  },
                  child: const Text("Hiver"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedSeason == "Été" ? Colors.orange : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedSeason, "Été");
                      selectedSeason = "Été";
                    });
                  },
                  child: const Text("Été"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedSeason == "Automne"
                        ? Colors.brown
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedSeason, "Automne");
                      selectedSeason = "Automne";
                    });
                  },
                  child: const Text("Automne"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Quel est votre type de musique préféré ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedMusic == "Pop" ? Colors.pink : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedMusic, "Pop");
                      selectedMusic = "Pop";
                    });
                  },
                  child: const Text("Pop"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedMusic == "Rock" ? Colors.black : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedMusic, "Rock");
                      selectedMusic = "Rock";
                    });
                  },
                  child: const Text("Rock"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedMusic == "Classique"
                        ? Colors.blue
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      updateScore(selectedMusic, "Classique");
                      selectedMusic = "Classique";
                    });
                  },
                  child: const Text("Classique"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyWidget());
}
