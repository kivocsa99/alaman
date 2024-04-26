import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:alaman/infrastructure/user/user.repository.dart';
import 'package:alaman/main.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:video_player/video_player.dart';

@RoutePage()

/// Stateful widget to fetch and then display video content.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/splash.mp4")
      ..initialize().then((_) {
        if (!mounted) return; // Check if the widget is still mounted
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.play();
      });
    _controller.addListener(() {
      // Check if the video has finished playing and if the widget is still mounted
      if (_controller.value.isCompleted && mounted) {
        final box = Hive.box("setting");
        final UserSettings settings =  box.isNotEmpty ? box.getAt(0) : UserSettings();

        if (settings.token != null) {
          Future.sync(() => UserRepository().updateToken(token: token.toString(), apitoken: settings.token, id: id.toString()).then((value) {
                if (!mounted) return; // Again, check if the widget is still mounted before using context
                context.router.replaceAll([OnBoardingRoute()]);
              }));
        } else {
          if (!mounted) return; // Check if the widget is still mounted
          context.router.replaceAll([OnBoardingRoute()]);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? SizedBox.expand(
                // This widget will expand to fill the screen
                child: FittedBox(
                  fit: BoxFit.cover, // This will cover the whole screen, potentially cropping the video
                  child: SizedBox(
                    width: _controller.value.size.width, // Original video width
                    height: _controller.value.size.height, // Original video height
                    child: VideoPlayer(_controller), // Your VideoPlayer widget
                  ),
                ),
              )
            : Container(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
