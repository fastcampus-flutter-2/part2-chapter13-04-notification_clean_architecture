import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_clind_component/component.dart';
import 'package:tool_clind_theme/gen/gen.dart';
import 'package:tool_clind_theme/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.darkBlack,
      appBar: ClindAppBar(
        context: context,
        title: ClindAppBarTitle.simple(
          context,
          text: '알림',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.5,
            ),
            child: ClindAppBarIconAction(
              icon: ClindIcon.settings(
                color: context.colorScheme.gray300,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: ClindDivider.horizontal(),
        ),
      ),
      body: CoreRefreshIndicator(
        onRefresh: () async {},
        indicator: ClindIcon.restartAlt(
          color: context.colorScheme.gray600,
        ),
        child: CoreLoadMore(
          onLoadMore: () async {},
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (context, index) => ClindNotificationTile(
              leading: ClindIcon.circleNotifications(
                color: ColorName.mainRed,
              ),
              title: '(광고) 주간베스트!',
              content: '"어서오세요, 신입mz께서 기다립니다"',
              createdAt: DateTime.now(),
              onTap: () {},
            ),
            separatorBuilder: (context, index) => ClindDivider.horizontal(),
          ),
        ),
      ),
    );
  }
}
