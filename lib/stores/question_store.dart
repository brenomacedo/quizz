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

  ObservableList<Question> questions = ObservableList<Question>();

  @action
  Future<void> loadQuestions() async {
    List<Question> newQuestions = await QuestionHelper().getQuestions();
    questions.clear();
    questions.addAll(newQuestions);
    loading = false;
  }

  @observable
  int selectedLevelId = 1;
  
  @action
  void setSelectedLevelId(int id) {
    selectedLevelId = id;
  }

  @computed
  Question get selectedLevel => questions[selectedLevelId - 1];
  int get questionCount => questions.length;

}