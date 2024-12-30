import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie/core/utils/app_assets.dart';
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
        spacing: getVerticalSize(8),
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
            children: [
              SvgPicture.asset(AppAssets.star),
            ],
          ),
          // Text('Release Date'),
          // Text('Genre'),
        ],
      ),
    );
  }
}
