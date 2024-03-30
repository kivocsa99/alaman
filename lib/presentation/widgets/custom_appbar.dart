import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String description;
  final PreferredSizeWidget? tabbar;
  const CustomAppBar(
      {super.key, required this.title, required this.description, this.tabbar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: tabbar,
      toolbarHeight: 65,
      shadowColor: Colors.white,
      elevation: 1,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: GestureDetector(
          onTap: () => context.router.pop(),
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff16437B),
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 19, color: const Color(0xff16437B)),
            ).tr(),
            Text(description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.bodyMedium)
                .tr(),
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, top: 12, left: 20),
          child: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffFFC629)),
            child: const Icon(
              FontAwesomeIcons.bell,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(tabbar == null ? 75 : 120);
}
