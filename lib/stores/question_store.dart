import 'package:mobx/mobx.dart';
import 'package:quizz/helpers/question_helper.dart';
part 'question_store.g.dart';

class QuestionStore = _QuestionStore with _$QuestionStore;

abstract class _QuestionStore with Store {

  _QuestionStore() {
    loadQuestions();
  }

  @observable
  bool loading = true;

  ObservableList<Question> questions = ObservableList();

  @action
  Future<void> loadQuestions() async {
    questions = await QuestionHelper().getQuestions();
    loading = false;
  }

}