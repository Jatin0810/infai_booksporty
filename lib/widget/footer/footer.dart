import 'package:flutter/material.dart';
import 'package:infai_demo_web/constants/app_colors.dart';
import 'package:infai_demo_web/constants/app_const_assets.dart';
import 'package:infai_demo_web/constants/app_text_style.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppAssets.logo,
            height: 100,
          ),
          Divider(
            color: AppColors.whiteColor,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: AppTextStyle.semiBold16
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "INDIA",
                      style: AppTextStyle.semiBold16
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "A-608, 6th Floor, Kailas Business Park,Hiranandani Vikhroli Link Road, VS Marg,Vikhroli West- Mumbai- 400079",
                      style: AppTextStyle.semiBold14
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email: ",
                          style: AppTextStyle.black16
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        Text(
                          "[email protected]",
                          style: AppTextStyle.black16
                              .copyWith(color: Colors.blue.shade900),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SOUTH AFRICA OFFICE:",
                      style: AppTextStyle.semiBold16
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "18 Merrick House, Long street, Knysna, South Africa.",
                      style: AppTextStyle.semiBold14
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    "Disclaimer",
                    style: AppTextStyle.semiBold16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Frequently asked questions",
                    style: AppTextStyle.semiBold16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Partner with us",
                    style: AppTextStyle.semiBold16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Terms & Conditions",
                    style: AppTextStyle.semiBold16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Terms of Use",
                    style: AppTextStyle.semiBold16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Privacy Policy",
                    style: AppTextStyle.semiBold16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: AppColors.whiteColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.visa,
                  height: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                 margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.master,
                  height: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                 margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.amazonPay,
                  height: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                 margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.skrill,
                  height: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                 margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.symbols,
                  height: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                 margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.paypal,
                  height: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                 margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.googlepay,
                  height: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
