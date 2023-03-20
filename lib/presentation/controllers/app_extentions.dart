extension X<T> on List<T> {
  List<T> everyNth(int n) {
    List<T> result = [];
    for(int index = 0; index < length; index +=1) {
      if(index % n == 0) {
        result.add(this[index]);
      }
    }
    return result;
  }}