import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:noteapp/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String env) async {
  getIt.init(environment: env);
}
