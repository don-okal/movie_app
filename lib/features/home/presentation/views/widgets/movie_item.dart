import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie/core/utils/app_assets.dart';
import 'package:movie/core/utils/app_text_style.dart';
import 'package:movie/core/utils/size_utils.dart';
import 'package:movie/features/home/presentation/views/widgets/book_mark.dart';

import '../../../../../core/utils/app_colors.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.black,
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(12),
        color: AppColors.darkGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: getVerticalSize(4),
        children: [
          Container(
            height: getVerticalSize(128),
            width: getHorizontalSize(97),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(12),
                topEnd: Radius.circular(12),
              ),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(AppAssets.testBackGround),
                fit: BoxFit.cover,
              ),
            ),
            child: BookMark(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: getHorizontalSize(4),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                AppAssets.star,
                height: getVerticalSize(10),
              ),
              Text(
                textAlign: TextAlign.center,
                '7.7',
                style: AppTextStyle.white10500,
              ),
            ],
          ),
          Text(
            'The Godfather',
            style: AppTextStyle.white10500,
          ),
          Text(
            '2018  R  1h 59m',
            style: AppTextStyle.grey8500,
          ),
        ],
      ),
    );
  }
}
