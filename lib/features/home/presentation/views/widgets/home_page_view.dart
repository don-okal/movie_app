import 'package:flutter/material.dart';
import 'package:movie/core/utils/app_assets.dart';
import 'package:movie/core/utils/app_text_style.dart';
import 'package:movie/core/utils/size_utils.dart';
import 'package:movie/features/home/presentation/views/widgets/book_mark.dart';
import 'package:movie/features/home/presentation/views/widgets/movies_section.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: getVerticalSize(289),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset(
                    AppAssets.testBackGround,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: getVerticalSize(217),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 15,
                    right: 15,
                    child: Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        spacing: getHorizontalSize(32),
                        children: [
                          BookMark(),
                          Column(
                            spacing: getVerticalSize(8),
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dora and the lost city of gold',
                                style: AppTextStyle.white14600,
                              ),
                              Text(
                                '2019  PG-13  2h 7m',
                                style: AppTextStyle.grey10800,
                              ),
                              SizedBox(
                                height: getVerticalSize(8),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: MoviesSection(
              title: 'New Releases',
            ),
          ),
          SliverToBoxAdapter(
            child: MoviesSection(
              title: 'New Releases',
            ),
          ),
          SliverToBoxAdapter(
            child: MoviesSection(
              title: 'New Releases',
            ),
          ),
          SliverToBoxAdapter(
            child: MoviesSection(
              title: 'New Releases',
            ),
          ),
        ],
      ),
    );
  }
}
