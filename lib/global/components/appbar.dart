import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jogodomilhao/global/screens/help.dart';
import 'package:jogodomilhao/modules/seetings/utils/create_route.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final bool? hasBackRoute;
  final bool? popUntilFirst;
  final bool? isBackgroundWhite;
  final bool? showHelp;
  final double? appBarHeight;
  final Widget? leading;
  final String? title;
  const MyAppBar({
    super.key,
    this.showHelp = true,
    this.hasBackRoute = false,
    this.isBackgroundWhite = false,
    this.appBarHeight,
    this.leading,
    this.popUntilFirst = false,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).orientation == Orientation.landscape ? 80 : 100;
    var color = Theme.of(context).colorScheme.onBackground;
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: hasBackRoute!
                ? IconButton(
                    onPressed: () {
                      if (popUntilFirst!) {
                        Navigator.popUntil(
                          context,
                          (route) => route.isFirst,
                        );
                      } else {
                        Navigator.pop(
                          context,
                        );
                      }
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                : leading ?? Container(),
          ),
        ],
      ),
      toolbarHeight: height,
      title: title != null
          ? Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w900,
              ),
            )
          : Container(),
      actions: showHelp == true
          ? [
              IconButton(
                icon: Icon(
                  Icons.help_outline,
                  color: color,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    RouteGlobal().createRoute(
                      const HelpPage(),
                    ),
                  );
                },
              ),
              const Gap(10)
            ]
          : [],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
