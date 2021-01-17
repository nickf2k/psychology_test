abstract class IData{
  List<String> getQuestions();
  List<Category> getCategories();
}
class Category{
  final String name;
  final int startIndex;
  final int endIndex;

  Category(this.name, this.startIndex, this.endIndex);
}