import 'Question.dart';
import 'Option.dart';

class History {
  History() {
    _questions.add(Question('TBMM ne zaman kurulmuştur?', [
      Option('1920', 10),
      Option('1921', 5),
      Option('1922', 0),
      Option('1923', -5),
    ]));

    _questions.add(Question('İlk Türk Devleti hangisidir?', [
      Option('Asya Hun İmparatorluğu', 10),
      Option('Göktürkler', 5),
      Option('Selçuklular', 0),
      Option('Türkiye', -5),
    ]));
    _questions.add(Question('Keops Piramidi hangi yılda tamamlanmıştır?', [
      Option('MÖ 2580', 10),
      Option('MÖ 8000', 5),
      Option('MS 200', 0),
      Option('MS 1453', -5),
    ]));

    _questions.add(Question('Roma' 'nın ilk imparatoru kimdir?', [
      Option('Augustus', 10),
      Option('Jul Sezar', 5),
      Option('Napolyon', 0),
      Option('Atatürk', -5),
    ]));
    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }
  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
    /* if(currentQuestionId >= _questions.length -1) {
      return true;
    } else {
      return false;
    }
    */
  }

  Question getCurrentQuestion() {
    print('getCurrentQueestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}