typedef DictionaryData = Map<String, String>;

class Dictionary {
  final DictionaryData _dictionaryData = {};

  void add(String word, String definition) {
    _dictionaryData[word] = definition;
  }

  String? get(String word) {
    return _dictionaryData[word];
  }

  void delete(String word) {
    _dictionaryData.remove(word);
  }

  bool update(String word, String definition) {
    if (!_dictionaryData.containsKey(word)) {
      return false;
    }
    _dictionaryData[word] = definition;
    return true;
  }

  DictionaryData showAll() {
    return _dictionaryData;
  }

  int count() {
    return _dictionaryData.length;
  }

  void upsert(String word, String definition) {
    if (_dictionaryData.containsKey(word)) {
      _dictionaryData[word] = definition;
    } else {
      add(word, definition);
    }
  }

  bool exists(String word) {
    return _dictionaryData.containsKey(word);
  }

  void bulkAdd(DictionaryData bulkData) {
    _dictionaryData.addAll(bulkData);
  }

  void bulkDelete(List<String> words) {
    words.forEach((word) {
      _dictionaryData.remove(word);
    });
  }
}
