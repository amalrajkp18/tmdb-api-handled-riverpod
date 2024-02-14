import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/controller/onboard/onboard_controller.dart';
import 'package:movie_app/core/colors/app_colors.dart';
import 'package:movie_app/core/constants/app_text.dart';
import 'package:movie_app/core/utils/app_units.dart';
import 'package:movie_app/view/pages/main_page/main_page.dart';
import 'package:movie_app/view/widgets/buttons/app_text_button_widget.dart';

class AuthHomePage extends ConsumerWidget {
  const AuthHomePage({super.key});
  static const String routeName = '/authHomePage';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          // bg image
          Image.asset(
            "assets/images/img_auth_home_bg.jpg",
            fit: BoxFit.cover,
            height: context.height(1),
          ),
          // spread color
          Container(
            width: context.width(1),
            height: context.height(1),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
            ),
            // content
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width(0.02)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // spacer
                  const Spacer(flex: 30),
                  // main text
                  Text(
                    AppText.appTitle,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: context.width(0.12),
                    ),
                  ),
                  // space
                  const Spacer(flex: 1),
                  // contentext
                  Text(
                    "Get ready to dive in to the greatest stories in TV and Film",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: context.width(0.045),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // spacer
                  const Spacer(flex: 2),
                  // button subscriber
                  AppTextButtonWidget(
                    onpressed: () {
                      // if button click completed user logged this screen not shown
                      ref
                          .read(onboardControllerProvider.notifier)
                          .onboardIsLoaded();
                      Navigator.pushNamed(context, MainPage.routeName);
                    },
                    backgroundColor: AppColors.buttonBlue,
                    text: "Subscribe Now",
                  ),
                  // space
                  const Spacer(flex: 1),
                  // button  sign in
                  AppTextButtonWidget(
                    onpressed: () {
                      // if button click completed user logged this screen not shown
                      ref
                          .read(onboardControllerProvider.notifier)
                          .onboardIsLoaded();
                      Navigator.pushNamed(context, MainPage.routeName);
                    },
                    backgroundColor: AppColors.lightBlack,
                    text: "Sign In",
                  ),
                  // spacer
                  const Spacer(
                    flex: 1,
                  ),
                  //sign up text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?  ",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: context.width(0.04),
                        ),
                      )
                    ],
                  ),
                  // spacer
                  const Spacer(flex: 1),
                  // decs text
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.width(0.05)),
                    child: Text(
                      "By creating an account or siging in, you agree to our Terms of Service and Privacy Policy.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: context.width(0.03),
                      ),
                    ),
                  ),
                  // spacer
                  const Spacer(flex: 1),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
