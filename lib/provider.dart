import 'package:biometric_app/services/local_auth_service.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final providers = <SingleChildWidget>[
  ChangeNotifierProvider<LocalAuthService>(
    create: (_) => LocalAuthService(auth: LocalAuthentication()),
  ),
];
