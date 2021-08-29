import 'mocked/big_arr_1000.dart';

// run -> dart main.dart
void main() {
  List<int> smallArr = [3, 60, 35, 2, 45, 320, 5];
  final BigArr bigArr = BigArr();

  // Instances
  final BubbleSort bubbleSort = BubbleSort();
  final DartSort dartSort = DartSort();
  final SelectionSortExample selectionSortExample = SelectionSortExample();
  final InsertionSortExample insertionSortExample = InsertionSortExample();
  final Stopwatch timer = Stopwatch();

  // camparison - SMALLEST

  timer.start();
  bubbleSort.bubbleSortAlgorithim(smallArr);
  timer.stop();
  print('Bubble: ${timer.elapsedMilliseconds}');

  timer.start();
  dartSort.dartSort(smallArr);
  timer.stop();
  print('Dart: ${timer.elapsedMilliseconds}');

  timer.start();
  selectionSortExample.selectionSort(smallArr);
  timer.stop();
  print('Selection: ${timer.elapsedMilliseconds}');

  timer.start();
  insertionSortExample.insertionSort(smallArr);
  timer.stop();
  print('Insertion: ${timer.elapsedMilliseconds}');

  // camparison - BIG
  print(' Big Arr ------------------------>');
  timer.start();
  bubbleSort.bubbleSortAlgorithim(bigArr.arr);
  timer.stop();
  print('Bubble: ${timer.elapsedMilliseconds}');

  timer.start();
  dartSort.dartSort(bigArr.arr);
  timer.stop();
  print('Dart: ${timer.elapsedMilliseconds}');

  timer.start();
  selectionSortExample.selectionSort(bigArr.arr);
  timer.stop();
  print('Selection: ${timer.elapsedMilliseconds}');

  timer.start();
  insertionSortExample.insertionSort(bigArr.arr);
  timer.stop();
  print('Insertion: ${timer.elapsedMilliseconds}');

  // camparison - BIG DISTINCT
  print(' Big Arr Distinct------------------------>');
  timer.start();
  bubbleSort.bubbleSortAlgorithim(bigArr.arr);
  bigArr.arr.toSet().toList();
  timer.stop();
  print('Bubble: ${timer.elapsedMilliseconds}');

  timer.start();
  dartSort.dartSort(bigArr.arr);
  bigArr.arr.toSet().toList();
  timer.stop();
  print('Dart: ${timer.elapsedMilliseconds}');

  timer.start();
  selectionSortExample.selectionSort(bigArr.arr);
  bigArr.arr.toSet().toList();
  timer.stop();
  print('Selection: ${timer.elapsedMilliseconds}');

  timer.start();
  insertionSortExample.insertionSort(bigArr.arr);
  bigArr.arr.toSet().toList();
  timer.stop();
  print('Insertion: ${timer.elapsedMilliseconds}');
}

class BubbleSort {
  void bubbleSortAlgorithim(List<int> arr) {
    int n = arr.length;
    int temp = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 1; j < (n - i); j++) {
        if (arr[j - 1] > arr[j]) {
          temp = arr[j - 1];
          arr[j - 1] = arr[j];
          arr[j] = temp;
        }
      }
    }
  }
}

class DartSort {
  void dartSort(List<int> arr) {
    arr.sort();
  }
}

class SelectionSortExample {
  void selectionSort(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int index = i;
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[index]) {
          index = j; //searching for lowest index
        }
      }
      int smallerNumber = arr[index];
      arr[index] = arr[i];
      arr[i] = smallerNumber;
    }
  }
}

class InsertionSortExample {
  void insertionSort(List<int> array) {
    int n = array.length;
    for (int j = 1; j < n; j++) {
      int key = array[j];
      int i = j - 1;
      while ((i > -1) && (array[i] > key)) {
        array[i + 1] = array[i];
        i--;
      }
      array[i + 1] = key;
    }
  }
}
