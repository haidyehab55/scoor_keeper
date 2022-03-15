import 'Questions.dart';

class Quiz_brain {

  int _track = 0;
  int _q = 0;

  final List <Questions> _ques = [
    Questions(question:'1) Prince Harry is taller than Prince William', rank: false),
    Questions(question: '2) The star sign Aquarius is represented by a tiger', rank: true),
    Questions(question: '3) Meryl Streep has won two Academy Awards', rank: false),
    Questions(question: '4) Marrakesh is the capital of Morocco', rank: false),
    Questions(question: '5) The star sign Aquarius is represented by a tiger', rank: false),
    Questions(question: '6) Idina Menzel sings \'let it go\' 20 times in \'Let It Go\' from Frozen', rank: true),
  /*  Questions(q: 'Waterloo has the greatest number of tube platforms in London', r: false),
    Questions(q: 'M&M stands for Mars and Moordale', r: true),
    Questions(q: 'Gin is typically included in a Long Island Iced Tea', r: true),
    Questions(q: 'The unicorn is the national animal of Scotland', r: false),
    Questions(q: 'There are two parts of the body that can\'t heal themselves', r: true),
    Questions(q: 'The Great Wall of China is longer than the distance between London and Beijing', r: true),
    Questions(q: 'There are 219 episodes of Friends', r: false),
    Questions(q: '\'A\' is the most common letter used in the English language', r: false),
    Questions(q: 'A lion\'s roar can be heard up to eight kilometres away', r: false),
    Questions(q: 'In Harry Potter, Draco Malfoy has no siblings', r: true),
    Questions(q: 'Louis Walsh is older than Simon Cowell', r: false),
    Questions(q: 'Monaco is the smallest country in the world', r: true),
    Questions(q: '\'What Do You Mean\' was Justin Bieber\'s first UK number one single', r: false),
    Questions(q: 'The river Seine in Paris is longer than the river Thames in London', r: true),
    Questions(q: 'A cara cara navel is a type of orange', r: true),
    Questions(q: 'There are five different blood groups', r:false ),
    Questions(q: 'Cinderella was the first Disney princess', r: false),
    Questions(q: 'ASOS stands for As Seen On Screen', r: true),
    Questions(q: 'The Battle Of Hastings took place in 1066', r: true),*/
  ];

  void nextQuestion() {
       if (_track < _ques.length-1) {
        _track++;
      }
  }
  bool getStatus() {
    if (_q < _ques.length) {
      _q++;
      return true;
    }
    else {
      return false;
    }
  }
  String getQuestion(){
    return _ques[_track].question;
  }
  bool getBool(){
    return _ques[_track].rank;
  }
  int reset() {
    _q =0;
    return _q;
  }
}