# biometric_app

Projeto de testede implementação de login através de biometria.

## Início

Este projeto tem como propósito apenas testar a implementação de login biometrico, através do 
package local_auth.

### Pacotes utilizados

- Local_Auth [https://pub.dev/packages/local_auth]
- GoRouter [https://pub.dev/packages/go_router]
- Provider [https://pub.dev/packages/provider]


### Local_Auth
Utilizado para gerenciar, solicitar e retornar o status da biometria no dispositivo.

### GoRouter
Utilizado para gerenciamento de rotas.

### Provider
Utilizado como gerenciado de estado nativo.

Após adicionar os packages, navegar até:

`android/app/src/main/java/com/thedevjeff/biometric_app/MainActivity.java`

e alterar o conteúdo para:

```
import io.flutter.embedding.android.FlutterFragmentActivity;
public class MainActivity extends FlutterFragmentActivity {
}
```

Dai podemos seguir para os passos descritos nas instruções do pacote.