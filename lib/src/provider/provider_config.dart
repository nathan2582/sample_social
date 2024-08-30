import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sample_social/src/repos/user/fake_user_repo.dart';

class ProviderConfig {
  final List<SingleChildWidget> providers = [
    Provider(create: (_) => FakeUserRepo(), lazy: false),
  ];
}
