void main() async {
  Employee emp = Employee();
  emp?.showData(); // ถ้า emp != null handler showData
}

class Employee {
  void showData() {
    print("แสดงข้อมูล");
  }
}
