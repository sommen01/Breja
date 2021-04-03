import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'bottomnav_controller.g.dart';

@Injectable()
class BottomnavController = _BottomnavControllerBase with _$BottomnavController;

abstract class _BottomnavControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
