import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import 'package:famille/widgets/custom_widgets/custom_colorful_card.dart';
import 'package:famille/widgets/custom_widgets/custom_card.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            FamilleIcons.angleleft,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(AppLocalizations.of(context).account),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            CustomColorfulCard(
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/pp.jpg"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FamilleIcons.picture,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Profil Resmini Değiştir',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Kullanıcı İsmi',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FamilleIcons.edit,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Text(
                    '@srtn_immgl',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ad',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FamilleIcons.edit,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Text(
                    'Sertan Hakkı',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Soyad',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FamilleIcons.edit,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Text(
                    'İmamoğlu',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Bio',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FamilleIcons.edit,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              child: CustomCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Profil Yönetme Ayarları',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hesabımı dondur',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FamilleIcons.trash,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context).deleteAccount,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FamilleIcons.trash,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
