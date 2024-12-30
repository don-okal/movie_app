import 'package:flutter/material.dart';
import 'package:movie/core/utils/app_colors.dart';
import 'package:movie/core/utils/app_text_style.dart';
import 'package:movie/core/utils/size_utils.dart';
import 'package:movie/features/home/presentation/views/widgets/movie_item.dart';

class MoviesSection extends StatelessWidget {
  const MoviesSection({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(32),
      ),
      child: Container(
        color: AppColors.backgroundGrey.withOpacity(0.4),
        height: getVerticalSize(264),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: getVerticalSize(12),
            bottom: getVerticalSize(12),
            // start: getHorizontalSize(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: getHorizontalSize(12),
                ),
                child: Text(
                  title,
                  style: AppTextStyle.white15700,
                ),
              ),
              SizedBox(
                height: getVerticalSize(16),
              ),
              SizedBox(
                height: getVerticalSize(200),
                width: double.infinity,
                child: ListView.separated(
                  padding: EdgeInsetsDirectional.symmetric(
                    vertical: getVerticalSize(4),
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 25,
                  separatorBuilder: (BuildContext context, int index) =>
                      MovieItem(),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: getHorizontalSize(12),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
