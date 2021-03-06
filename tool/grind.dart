import 'package:grinder/grinder.dart';

main(args) => grind(args);

@Task()
test() => TestRunner().testAsync();

@DefaultTask()
@Depends(test)
build() {
  Pub.build();
}

@Task()
clean() => defaultClean();
