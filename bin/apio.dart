import 'dicservice.dart';

Future<void> main() async {
  dicservice dd = dicservice();
  final okdata = await dd.getdata();
  print(okdata);
}
