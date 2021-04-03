import 'bottomnav_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomnavModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $BottomnavController,
      ];

  @override
  List<ModularRouter> get routers => [];

  static Inject get to => Inject<BottomnavModule>.of();
}
