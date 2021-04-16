// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuestionStore on _QuestionStore, Store {
  Computed<Question> _$selectedLevelComputed;

  @override
  Question get selectedLevel =>
      (_$selectedLevelComputed ??= Computed<Question>(() => super.selectedLevel,
              name: '_QuestionStore.selectedLevel'))
          .value;

  final _$loadingAtom = Atom(name: '_QuestionStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$selectedLevelIdAtom = Atom(name: '_QuestionStore.selectedLevelId');

  @override
  int get selectedLevelId {
    _$selectedLevelIdAtom.reportRead();
    return super.selectedLevelId;
  }

  @override
  set selectedLevelId(int value) {
    _$selectedLevelIdAtom.reportWrite(value, super.selectedLevelId, () {
      super.selectedLevelId = value;
    });
  }

  final _$loadQuestionsAsyncAction =
      AsyncAction('_QuestionStore.loadQuestions');

  @override
  Future<void> loadQuestions() {
    return _$loadQuestionsAsyncAction.run(() => super.loadQuestions());
  }

  final _$_QuestionStoreActionController =
      ActionController(name: '_QuestionStore');

  @override
  void setSelectedLevelId(int id) {
    final _$actionInfo = _$_QuestionStoreActionController.startAction(
        name: '_QuestionStore.setSelectedLevelId');
    try {
      return super.setSelectedLevelId(id);
    } finally {
      _$_QuestionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
selectedLevelId: ${selectedLevelId},
selectedLevel: ${selectedLevel}
    ''';
  }
}
