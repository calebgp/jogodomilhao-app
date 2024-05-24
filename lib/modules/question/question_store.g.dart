// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionStore on _QuestionStore, Store {
  late final _$questionAtom =
      Atom(name: '_QuestionStore.question', context: context);

  @override
  Question? get question {
    _$questionAtom.reportRead();
    return super.question;
  }

  @override
  set question(Question? value) {
    _$questionAtom.reportWrite(value, super.question, () {
      super.question = value;
    });
  }

  late final _$_QuestionStoreActionController =
      ActionController(name: '_QuestionStore', context: context);

  @override
  dynamic setQuestion(Question? value) {
    final _$actionInfo = _$_QuestionStoreActionController.startAction(
        name: '_QuestionStore.setQuestion');
    try {
      return super.setQuestion(value);
    } finally {
      _$_QuestionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_QuestionStoreActionController.startAction(
        name: '_QuestionStore.clear');
    try {
      return super.clear();
    } finally {
      _$_QuestionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
question: ${question}
    ''';
  }
}
