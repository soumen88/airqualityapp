import 'package:intl/intl.dart';

extension DateConversions on int{

  String getDate(){
    var dt = DateTime.fromMillisecondsSinceEpoch(this);

    // 24 Hour format:
    //var d24 = DateFormat('dd/MM/yyyy, HH:mm').format(dt); // 31/12/2000, 22:00
    var d24 = DateFormat('dd MMM HH:mm').format(dt); // 31/12/2000, 22:00

    return d24;
  }

  String getUtcDate(){
    var date = new DateTime.fromMicrosecondsSinceEpoch(this);
    var time = date.toString().split(" ")[1];
    return time;
  }
}


extension DateConversionString on String{

  String getFormattedDate(){
    var dt = this.split(" ");
    return dt[1];
  }


}

extension ParseNumbers on String {
  int parseInt() {
    return int.parse(this);
  }
  double parseDouble() {
    return double.parse(this);
  }
}

extension FancyNum on num {
  num plus(num other) => this + other;

  num times(num other) => this * other;
}