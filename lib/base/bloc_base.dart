import 'package:dio_project/base/utilitize.dart';

abstract class BlocBase with Utilitize{
  void init();
  void dispose();
}
