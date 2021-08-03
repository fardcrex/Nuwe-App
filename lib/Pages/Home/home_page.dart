import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Settings/router.dart';

class HomePage extends StatelessWidget {
  final UserState userData;
  const HomePage({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      body: Center(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            if (userData.user.avatarImage == null)
              const Icon(Icons.person, size: 120)
            else
              CircleAvatar(backgroundImage: NetworkImage(userData.user.avatarImage!), radius: 60),
            const Spacer(),
            const Text('Nombre Público:'),
            Text(userData.user.nickname),
            const Spacer(flex: 2),
            const Text('Nombre Completo:'),
            Text(userData.user.name),
            const Spacer(flex: 2),
            const Text('country:'),
            Text(userData.user.country),
            const Spacer(),
            const Text('city:'),
            Text(userData.user.city),
            const Spacer(),
            const Text('Edad:'),
            Text(userData.user.age.toString()),
            const Spacer(),
            ...userData.user.socialLinks
                .map((e) => e.when(
                    github: (link) => ListTile(title: const Text('Github'), subtitle: Text(link)),
                    linkedin: (link) => ListTile(title: const Text('linkedin'), subtitle: Text(link)),
                    twitter: (link) => ListTile(title: const Text('twitter'), subtitle: Text(link)),
                    instagram: (link) => ListTile(title: const Text('instagram'), subtitle: Text(link)),
                    portafolio: (link) => ListTile(title: const Text('portafolio'), subtitle: Text(link))))
                .toList(),
            const Spacer(flex: 2),
            ElevatedButton(
              onPressed: () => goToTheLogoutPage(context),
              child: const Text('Salirse'),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  static void goToTheLogoutPage(BuildContext context) {
    //TODO Extraer este método
    StoreProvider.of<AppState>(context).dispatch(const SignOutAction());
    Navigator.pushReplacementNamed(context, AuthRoutes.initial);
  }
}
