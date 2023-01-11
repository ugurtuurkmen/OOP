

// Abstract class'ları with kullanarak operasyonları bölebiliriz.
abstract class ChildrensTasks with SchoolTasks,HomeTasks {
  int beGood();
}


abstract class SchoolTasks {
  void read();
  void write();
}

abstract class HomeTasks {
  void cleaning();
}