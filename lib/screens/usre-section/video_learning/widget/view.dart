import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/controle.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class VideoFromYouTube extends StatefulWidget {
  const VideoFromYouTube({Key? key}) : super(key: key);

  @override
  State<VideoFromYouTube> createState() => _VideoFromYouTubeState();
}

class _VideoFromYouTubeState extends State<VideoFromYouTube> {
  final controller = LearningController();
  late String title, author;
  final String url = "https://www.youtube.com/watch?v=Tj1w86bw4EM";
  final String url2 = "https://www.youtube.com/watch?v=wexzvClUcUk";
  late YoutubePlayer youtubePlayer;
  late YoutubePlayer youtubePlayer2;
  late YoutubePlayerController _controller;
  late YoutubePlayerController _controller2;
  late String id;
  late String id2;

  @override
  void initState() {
    super.initState();
    id = YoutubePlayer.convertUrlToId(url)!;
    id2 = YoutubePlayer.convertUrlToId(url2)!;
    _controller = YoutubePlayerController(
      initialVideoId: id,
      flags: YoutubePlayerFlags(autoPlay: false),
    );
    _controller2 = YoutubePlayerController(
      initialVideoId: id2,
      flags: YoutubePlayerFlags(autoPlay: false),
    );
    youtubePlayer = YoutubePlayer(
      controller: _controller,
      progressIndicatorColor: AppColor.myTeal,
      showVideoProgressIndicator: true,
    );
    youtubePlayer2 = YoutubePlayer(
      controller: _controller2,
      progressIndicatorColor: AppColor.myTeal,
      showVideoProgressIndicator: true,
    );

  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   //margin: EdgeInsets.symmetric(vertical: 35.h),
              //   height: 70.h,
              //   child: ListView(
              //       scrollDirection: Axis.horizontal,
              //       children: List.generate(
              //         controller.Learn.length,
              //             (index) => InkWell(
              //           onTap: () {
              //             controller.Learn[index].isSlected =
              //             !controller.Learn[index].isSlected;
              //             setState(() {});
              //           },
              //           child: Container(
              //             margin: EdgeInsets.symmetric(
              //               horizontal: 6.w,
              //             ),
              //             height: 70.h,
              //             width: 160.w,
              //             decoration: BoxDecoration(
              //               color: controller.Learn[index].isSlected == false
              //                   ? Colors.white
              //                   : AppColor.myDarkTeal,
              //               borderRadius: BorderRadius.circular(10.r),
              //               border: Border.all(
              //                   color: Color(0xffE0E0E0),
              //                   width: 1.w,
              //                   strokeAlign: StrokeAlign.inside),
              //               boxShadow: [
              //                 BoxShadow(
              //                   color: Colors.grey.withOpacity(0.25),
              //                   offset: const Offset(4, 8),
              //                   blurRadius: 4,
              //                 ),
              //               ],
              //             ),
              //             child: Row(
              //               children: [
              //                 Expanded(
              //                     child: Image.asset(
              //                         '${controller.Learn[index].image}')),
              //                 Expanded(
              //                   child: Text(
              //                     controller.Learn[index].subTitle.toString(),
              //                     softWrap: true,
              //                     textAlign: TextAlign.center,
              //                     style: AppTextStyle.cairoFontBold(
              //                         fontSize: 11.sp,
              //                         myColor:
              //                         controller.Learn[index].isSlected ==
              //                             false
              //                             ? AppColor.textColorGrayOfSubTitle
              //                             : Colors.white),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       )),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Videos',
                      style: AppTextStyle.cairoFontMedium(
                          fontSize: 24.sp, myColor: AppColor.myTeal)),
                  Text('Veiw All',
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 16.sp, myColor: AppColor.myTeal)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160.h,
                width: 286.w,
                child: youtubePlayer,
              ),
              Text(
                'Tell me about yourself! introduce yourself in \n english with EASE!\n mmmEnglish.2.6M Viewes .1 Year Ago',
                style: TextStyle(fontSize: 18.sp, color: AppColor.textColorGrayOfSubTitle),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160.h,
                width: 286.w,
                child: youtubePlayer2,
              ),
              Text(
                'How to introduce yourself in an interview! \n (The Best Answer!)\n CareerVidz.6.5M Viewes .1 Year Ago',
                style: TextStyle(fontSize: 18.sp, color: AppColor.textColorGrayOfSubTitle),
              ),
            ],
          ),
        ),
    );
  }
}