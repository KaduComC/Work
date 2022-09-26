import '../models/categories.dart';

class CategoriesController {
  late List<Categories> tabela;

  CategoriesController() {
    tabela = [
      Categories(
        categoriaNome: 'Limpeza',
        image: '',
      ),
      Categories(
        categoriaNome: 'Padaria',
        image: '',
      ),
      Categories(
        categoriaNome: 'Carnes',
        image: '',
      ),
      Categories(
        categoriaNome: 'Frutas',
        image: '',
      ),
      Categories(
        categoriaNome: 'Legumes',
        image: '',
      ),
      Categories(
        categoriaNome: 'Verduras',
        image: '',
      ),
    ];
  }
}
