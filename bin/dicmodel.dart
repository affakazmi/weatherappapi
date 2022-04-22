class dicmodel {
  final String word, meaning, details;

  dicmodel({required this.word, required this.meaning, required this.details});

  static dicmodel frommap(List<dynamic> json) {
    return dicmodel(
        word: json[0]['word'],
        meaning: json[0]['meanings'][0]['definitions'][0]['definition'],
        details: 'detail');
  }

  @override
  String toString() {
    // TODO: implement toString
    return '''
    details : $details;
    word : $word;
    meaning: $meaning;
    ''';
  }
}
