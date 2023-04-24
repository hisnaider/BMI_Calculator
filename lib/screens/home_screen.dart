import 'package:bmi_calculator/components/primary_button.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/screens/result.dart';
import "package:flutter/material.dart";
import '../components/gender_button.dart';
import '../components/height.dart';
import '../components/stat_card.dart';
import '../components/reusable_card.dart';
import "../class/person.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Person person = Person();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "CALCULADORA BMI",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () => setState(() {
                      person.gender = Gender.male;
                    }),
                    color: person.gender == Gender.male
                        ? cscContainerColor
                        : cscInactiveContainerColor,
                    child: const GenderButton(
                      icon: Icons.male,
                      text: "HOMEM",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () => setState(() {
                      person.gender = Gender.female;
                    }),
                    color: person.gender == Gender.female
                        ? cscContainerColor
                        : cscInactiveContainerColor,
                    child: const GenderButton(
                      icon: Icons.female,
                      text: "MULHER",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              color: cscContainerColor,
              child: Height(
                  value: person.height,
                  onChanged: (double value) {
                    setState(() {
                      person.height = value;
                    });
                  }),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: cscContainerColor,
                    child: statCard(
                      "PESO",
                      person.weight,
                      (int value) {
                        setState(
                          () {
                            person.weight += value;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: cscContainerColor,
                    child: statCard(
                      "IDADE",
                      person.age,
                      (int value) {
                        setState(
                          () {
                            person.age += value;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          PrimaryButton(
            title: "Calcular",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    value: person.getBMI(),
                    weightAlert: person.weightAlert(),
                    weightMessage: person.weightMessage(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
