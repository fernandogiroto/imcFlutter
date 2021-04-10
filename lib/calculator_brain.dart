import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.gender});

  final int height;
  final int weight;
  final String gender;

  double _imc;

  String calculateIMC() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 32.3 && gender == 'female') {
      return 'Obesidade';
    } else if (_imc >= 31.1 && gender == 'male') {
      return 'Obesidade';
    } else if (_imc >= 27.3 && gender == 'female') {
      return 'Acima do Peso Ideal';
    } else if (_imc >= 28.8 && gender == 'male') {
      return 'Acima do Peso Ideal';
    } else if (_imc >= 25.8 && gender == 'female') {
      return 'Marginalmente acima do peso';
    } else if (_imc >= 26.4 && gender == 'male') {
      return 'Marginalmente acima do peso';
    } else if (_imc >= 19.1 && gender == 'female') {
      return 'Peso Normal';
    } else if (_imc >= 20.7 && gender == 'male') {
      return 'Peso Normal';
    } else if (_imc < 19.1 && gender == 'female') {
      return 'Abaixo do Peso';
    } else if (_imc < 20.7 && gender == 'male') {
      return 'Abaixo do Peso';
    }
  }

  String getInterpretation() {
    if (_imc >= 32.3 && gender == 'female') {
      return 'Você está muito acima do peso. Melhor considerar fazer mais exercícios físicos.';
    } else if (_imc >= 31.1 && gender == 'male') {
      return 'Você está muito acima do peso. Melhor considerar fazer mais exercícios físicos.';
    } else if (_imc >= 27.3 && gender == 'female') {
      return 'Você está acima do peso. Uma boa dieta alimentar e exercícios físicos podema ajudar.';
    } else if (_imc >= 28.8 && gender == 'male') {
      return 'Você está acima do peso. Uma boa dieta alimentar e exercícios físicos podema ajudar.';
    } else if (_imc >= 25.8 && gender == 'female') {
      return 'Você está um pouco acima do peso. Melhorar começar a pensar numa alimentação mais saudável.';
    } else if (_imc >= 26.4 && gender == 'male') {
      return 'Você está um pouco acima do peso. Melhorar começar a pensar numa alimentação mais saudável.';
    } else if (_imc >= 19.1 && gender == 'female') {
      return 'Parabéns você está no seu peso ideal. Continue assim!';
    } else if (_imc >= 20.7 && gender == 'male') {
      return 'Parabéns você está no seu peso ideal. Continue assim!';
    } else if (_imc < 19.1 && gender == 'female') {
      return 'Você está abaixo do peso. Melhor pensar em como melhorar a sua alimentação.';
    } else if (_imc < 20.7 && gender == 'male') {
      return 'Você está abaixo do peso. Melhor pensar em como melhorar a sua alimentação.';
    }
  }
}
