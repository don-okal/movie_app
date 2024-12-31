import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie/core/utils/app_assets.dart';
import 'package:movie/core/utils/app_text_style.dart';
import 'package:movie/core/utils/size_utils.dart';
import 'package:movie/features/home/presentation/getx/controllers/home_controller.dart';
import 'package:movie/features/home/presentation/views/widgets/book_mark.dart';

import '../../../../../core/utils/app_colors.dart';

class MovieItem extends GetView<HomeController> {
  const MovieItem(
    this.index, {
    super.key,
  });
  final int index;

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // spacing: getVerticalSize(4),
        children: [
          Container(
            height: getVerticalSize(124),
            width: getHorizontalSize(97),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(12),
                topEnd: Radius.circular(12),
              ),
            ),
            child: BookMark(index),
          ),
          SizedBox(
            height: getVerticalSize(4),
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
                '${controller.topRatedModel.results?[index].voteAverage?.toStringAsFixed(1)}',
                style: AppTextStyle.white10500,
              ),
            ],
          ),
          SizedBox(
            height: getVerticalSize(4),
          ),
          SizedBox(
            width: getHorizontalSize(90),
            child: Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              '${controller.topRatedModel.results?[index].title}',
              style: AppTextStyle.white10500,
            ),
          ),
          Spacer(),
          Text(
            '${controller.topRatedModel.results?[index].releaseDate?.year}',
            style: AppTextStyle.grey8500,
          ),
          SizedBox(
            height: getVerticalSize(4),
          ),
        ],
      ),
    );
  }
}
