import 'package:amazon_app_store/constants/common_function.dart';
import 'package:amazon_app_store/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool inLogin = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60), // Adjust height as needed
        child: Container(
          decoration: BoxDecoration(
            color: white, // AppBar background color
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 1, // Spread radius
                blurRadius: 8, // Blur radius
                offset: const Offset(0, 2), // Shadow position
              ),
            ],
          ),
          child: AppBar(
            elevation: 0, // Remove default elevation
            // backgroundColor:
            //     Colors.transparent,
            // // Transparent for custom shadow
            centerTitle: true,
            backgroundColor: white,
            title: Image.asset(
              'assets/images/amazon_logo.png',
              height: height * 0.04,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.03,
            vertical: height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.028,
                ),
              ),
              CommonFunction.blanckSpace(height * 0.02, 0),
              Container(
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: greyShade3,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.06,
                      width: width,
                      // color: greyShade1,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: greyShade3,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.06,
                            width: width * 0.06,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: grey,
                              ),
                              color: white,
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.circle,
                              size: height * 0.012,
                              color: !inLogin ? transparent : secondaryColor,
                            ),
                          ),
                          CommonFunction.blanckSpace(0, width * 0.02),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Create Account. ',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'new to Amazon?',
                                  style: textTheme.bodyLarge!,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
