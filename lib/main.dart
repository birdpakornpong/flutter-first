void main() async {
  print("กำลังทำงาน รอ 10 วิ");
  print(await loginUserFuture());
  print("ทำงานต่อไป");
}

String loginUser() {
  var user = getUserFromDatabase();
  return user;
}

String getUserFromDatabase() {
  return "kongruksiam";
}

Future<String> loginUserFuture() async {
  var user = await getUserFromDatabaseFuture();
  return user;
}

Future<String> getUserFromDatabaseFuture() {
  return Future.delayed(const Duration(seconds: 10), () => "bird pakornpong");
}
