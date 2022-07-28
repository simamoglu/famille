import 'package:famille/widgets/like_bar.dart';
import 'package:flutter/material.dart';

import './custom_card.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        CustomCard(
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/pp.jpg"),
                  ),
                  Text(
                    '@srtn_immgl',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.asset("assets/images/post.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                    'Yıllar geçse de hala görünce dünmüş gibi hissettiren o fotoğraf. İyi ki varsın ablam. 💛'),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: -20,
          child: LikeBar(),
        ),
      ],
    );
  }
}
