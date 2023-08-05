import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/chat_bloc.dart';
import '../theme/app_color.dart';
import '../theme/app_text.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return Container(
        decoration: const BoxDecoration(
            border: Border(
          right: BorderSide(
            color: AppColor.mainElement,
            width: 1.0,
          ),
        )),
        width: screenSize.width * 0.4,
        height: screenSize.height,
        child: ListView.builder(
            itemCount: state.chatModel.userInfo.length,
            itemBuilder: (context, index) {
              int hour = DateTime.parse(
                      state.chatModel.userInfo[index].timeLastMessage)
                  .hour;
              int minute = DateTime.parse(
                      state.chatModel.userInfo[index].timeLastMessage)
                  .minute;

              return InkWell(
                child: Center(
                  child: Container(
                    color: index == state.index
                        ? AppColor.mainElement
                        : Colors.transparent,
                    child: ListTile(
                      dense: true,
                      visualDensity: const VisualDensity(vertical: 2),
                      leading: Stack(children: [
                        const SizedBox(
                          width: 71,
                          height: 71,
                        ),
                        SizedBox(
                          width: 61,
                          height: 61,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              state.chatModel.userInfo[index].imagePhotoUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: -2,
                            right: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(state
                                  .chatModel.userInfo[index].imageMessagerUrl),
                            )),
                      ]),
                      title: Text(
                        overflow: TextOverflow.ellipsis,
                        state.chatModel.userInfo[index].name,
                        style: AppTextStyle.base,
                      ),
                      subtitle: Text(
                        state.chatModel.userInfo[index].listMessage.last.message
                            .last.message,
                        style: AppTextStyle.base,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '$hour:$minute',
                            style:
                                AppTextStyle.base.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 38,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: AppColor.mainElement,
                            ),
                            child: Center(
                              child: Text(
                                style: AppTextStyle.base
                                    .copyWith(color: AppColor.black),
                                '1',
                              ),
                            ),
                          ),
                          const SizedBox.shrink()
                        ],
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  context.read<ChatBloc>().add(IndexChatChatEvent(index));
                },
              );
            }),
      );
    });
  }
}
