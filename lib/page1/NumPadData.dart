
class NumbersModel{
  final String num;
  final String litter;
  static String selectedNum = '';

  NumbersModel({required this.num, required this.litter});

  static List<NumbersModel> button1 = [
    NumbersModel(num: '1', litter: ''),
    NumbersModel(num: '2', litter: 'ABC'),
    NumbersModel(num: '3', litter: 'DEF'),
  ];

  static List<NumbersModel> button4 = [
    NumbersModel(num: '4', litter: 'GHI'),
    NumbersModel(num: '5', litter: 'JKL'),
    NumbersModel(num: '6', litter: 'MNO'),
  ];

  static List<NumbersModel> button7 = [
    NumbersModel(num: '7', litter: 'PQRS'),
    NumbersModel(num: '8', litter: 'TUV'),
    NumbersModel(num: '9', litter: 'WXYZ'),
  ];

  static List<NumbersModel> button0 = [
    NumbersModel(num: '*', litter: ''),
    NumbersModel(num: '0', litter: '+'),
    NumbersModel(num: '#', litter: ''),
  ];

}