class HistoryBorrow {
  String? borrowDate;
  String? timeBorrow;
  String? name;
  String? fig;
  String? duedate;
  String? returnDate;
  String? timeReturn;
  String? status;

  HistoryBorrow(
      {this.borrowDate,
      this.timeBorrow,
      this.name,
      this.fig,
      this.duedate,
      this.returnDate,
      this.timeReturn,
      this.status});

  HistoryBorrow.fromJson(Map<String, dynamic> json) {
    borrowDate = json['Borrow_date'];
    timeBorrow = json['Time_borrow'];
    name = json['Name'];
    fig = json['Fig'];
    duedate = json['duedate'];
    returnDate = json['Return_date'];
    timeReturn = json['Time_return'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Borrow_date'] = this.borrowDate;
    data['Time_borrow'] = this.timeBorrow;
    data['Name'] = this.name;
    data['Fig'] = this.fig;
    data['duedate'] = this.duedate;
    data['Return_date'] = this.returnDate;
    data['Time_return'] = this.timeReturn;
    data['status'] = this.status;
    return data;
  }
}

class BRSPOST {
  String borrow;
  String return1;
  String status;

  BRSPOST({
    required this.borrow,
    required this.return1,
    required this.status,
  });

  factory BRSPOST.fromJson(Map<String, dynamic> json) {
    return BRSPOST(
      borrow: json["borrow"] as String,
      return1: json["return1"] as String,
      status: json["status"] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data["borrow"] = this.borrow;
    data["return1"] = this.return1;
    data["status"] = this.status;
    return data;
  }
}