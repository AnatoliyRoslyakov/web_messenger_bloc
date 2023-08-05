import 'dart:math';

class RandomWords {
  final List<String> _words;

  RandomWords() : _words = _loadWords();

  static List<String> _loadWords() {
    return [
  'Привет!',
  'Как дела?',
  'Чем занимаешься?',
  'Как прошел день?',
  'Что планируешь на выходные?',
  'Какой твой любимый фильм?',
  'Что думаешь о будущем?',
  'Какие книги ты читаешь?',
  'Что было сегодня на обед?',
  'Какая погода у вас?',
  'Чему ты уделяешь больше всего времени?',
  'Как твои дела в работе?',
  'Что тебе нравится делать в свободное время?',
  'Как ты относишься к спорту?',
  'Какой твой любимый вид спорта?',
];
  }

  String getRandomWord() {
    if (_words.isEmpty) {
      throw Exception('Словарь пустой');
    }

    final random = Random();
    final randomIndex = random.nextInt(_words.length);
    return _words[randomIndex];
  }
}