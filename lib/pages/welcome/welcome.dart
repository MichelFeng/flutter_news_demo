import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  /// 页面标题
  Widget _buildPageHeaderTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(60)),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: AppFonts.Montserrat,
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
        ),
      ),
    );
  }

  /// 页面说明
  Widget _buildPageHeaderDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        "The best of news chnnels all in one place. Trusted sources and personalized news for you",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: AppFonts.Avenir,
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  /// 特性说明
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: [
          Container(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: AppFonts.Avenir,
                fontWeight: FontWeight.normal,
                fontSize: duSetFontSize(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        child: Text("Get started"),
        shape: RoundedRectangleBorder(
          borderRadius: Radii.k6pxRadius,
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/sign-in",
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(375, 812 - 44 - 34),
    );
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _buildPageHeaderTitle(),
            _buildPageHeaderDetail(),
            _buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              86,
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            _buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            Spacer(),
            _buildStartButton(),
          ],
        ),
      ),
    );
  }
}
