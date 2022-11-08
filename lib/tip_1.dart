// https://twitter.com/Flutternest/status/1588846922051506180?s=20&t=vHAFV8P6b1cezo-a0EDXyw


extension ListDuplicates<E> on List<E> {
  List<E> removeAll(Iterable<E> itemsToRemove) {
    for (var e in itemsToRemove) {
      remove(e);
      // will remove the items at first occurance
    }
    return this;
  }

  List<E> get duplicates {
    List<E> copy = List.from(this);
    copy.removeAll(toSet());
    return copy;
  }
}

void test() {
  var list = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 6];
  print(list.duplicates); // [1, 2, 3, 4, 5]
}