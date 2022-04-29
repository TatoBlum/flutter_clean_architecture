import 'package:flutter_my_app/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

// @injectableInit
// void configureInjection(String env) {
//   $initGetIt(getIt, environment: env);
// }
@InjectableInit(  
  initializerName: r'$initGetIt', // default  
  preferRelativeImports: true, // default  
  asExtension: false, // default  
)  

void configureDependencies(String env) => $initGetIt(getIt, environment: env);
  
