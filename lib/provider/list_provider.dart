typedef ListMap = List<Map<String, String>>;

class ListProvider {
  final ListMap _todoLists = [{}];

  ListMap getAllTodoLists() {
    return _todoLists;
  }

  void addATodoList({
    required String subject,
    required String description,
  }) {
    _todoLists.add({
      "subject": subject,
      "description": description,
    });
  }
}
