import 'dart:math';

class Person {
  Gender? gender;
  double height = 1.65;
  int weight = 70;
  int age = 25;
  double _bmi = 0;

  double getBMI() {
    _bmi = weight / pow(height, 2);
    return _bmi;
  }

  String weightAlert() {
    switch (_bmi) {
      case < 18.5:
        return "MAGREZA";
      case <= 24.9:
        return "NORMAL";
      case <= 29.9:
        return "SOBREPESO";
      case <= 40:
        return "OBESIDADE";
      case > 40:
        return "OBESIDADE GRAVE";
      default:
        return "Algo deu errado";
    }
  }

  String weightMessage() {
    switch (_bmi) {
      case < 18.5:
        return "O seu peso esta a baixo do normal, se alimente mais";
      case <= 24.9:
        return "Seu peso esta normal, continue assim";
      case <= 29.9:
        return "O seu peso esta acima do normal, tente se exercitar mais";
      case <= 40:
        return "O seu peso esta muito acima do normal! tente se exercitar bastante";
      case > 40:
        return "O SEU PESO ESTA ACIMA DO QUE É CONSIDERADO OBESIDADE!!! VÁ NO MÉDICO E FAÇA TUDO QUE ELE MANDAR!!!";
      default:
        return "Algo deu errado";
    }
  }
}

enum Gender { male, female }
