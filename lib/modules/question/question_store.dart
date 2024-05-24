import 'package:jogodomilhao/models/question.dart';
import 'package:mobx/mobx.dart';

part 'question_store.g.dart';

// ignore: library_private_types_in_public_api
class QuestionStore = _QuestionStore with _$QuestionStore;

abstract class _QuestionStore with Store {
  @observable
  Question? question;

  @action
  setQuestion(Question? value) {
    question = value;
  }

  @action
  void clear() => question = null;
}
