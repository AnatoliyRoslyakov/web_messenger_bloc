import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_messenger_bloc/domain/chat_bloc.dart';
import 'package:web_messenger_bloc/ui/widget/switch.dart';

import '../../model/chat_model.dart';
import '../theme/app_color.dart';
import '../theme/app_text.dart';

class ChatField extends StatelessWidget {
  const ChatField({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return SizedBox(
        width: screenSize.width * 0.6,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("image/fon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: screenSize.height - 88,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: screenSize.height / 1.5,
                      child: ListView.builder(
                          // reverse: true,
                          itemCount: state.chatModel.userInfo[state.index]
                              .listMessage.length,
                          itemBuilder: (context, index) {
                            String type = state.chatModel.userInfo[state.index]
                                .listMessage[index].type;
                            ListMessage listMessagge = state.chatModel
                                .userInfo[state.index].listMessage[index];
                            return Column(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: listMessagge.message.length,
                                  itemBuilder: (context, innerIndex) {
                                    Message innerItem =
                                        listMessagge.message[innerIndex];

                                    return Column(
                                      crossAxisAlignment: type == 'входящее'
                                          ? CrossAxisAlignment.start
                                          : CrossAxisAlignment.end,
                                      children: [
                                        Center(
                                          child: Text(
                                            "${DateTime.parse(innerItem.timeMessage).hour}:${DateTime.parse(innerItem.timeMessage).minute}",
                                            style: AppTextStyle.base,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 13, vertical: 8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: AppColor.mainElement,
                                                borderRadius:
                                                    BorderRadius.circular(13)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                innerItem.message,
                                                overflow: TextOverflow.ellipsis,
                                                style: AppTextStyle.base
                                                    .copyWith(fontSize: 17),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            );
                          }),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(172, 255, 255, 255),
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.mainElement,
                          width: 1.0,
                        ),
                      )),
                  height: 82,
                  width: screenSize.width * 0.6,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 62,
                        width: 279,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColor.mainElement),
                        child: Center(
                          child: ListTile(
                              dense: true,
                              visualDensity: const VisualDensity(vertical: 0),
                              leading: SizedBox(
                                width: 44,
                                height: 44,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    state.chatModel.userInfo[state.index]
                                        .imagePhotoUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              title: Text(
                                overflow: TextOverflow.ellipsis,
                                state.chatModel.userInfo[state.index].name,
                                style: AppTextStyle.base,
                              ),
                              subtitle: Text(
                                ' id: ${state.chatModel.userInfo[state.index].id.toString()}',
                                style: AppTextStyle.base,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: IconButton(
                                icon: SvgPicture.asset('svg/ic_rigth.svg'),
                                onPressed: () {},
                              )),
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6 - 550,
                      ),
                      Row(
                        children: [
                          const SwitchWidget(),
                          const SizedBox(
                            width: 10,
                          ),
                          const CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('image/avatar.png'),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          ClipRect(
                            child: Container(
                                height: 62,
                                width: 62,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColor.mainElement),
                                child: IconButton(
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              BottomBarField(screenSize: screenSize),
            ],
          ),
        ),
      );
    });
  }
}

class BottomBarField extends StatelessWidget {
  const BottomBarField({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return Container(
        width: screenSize.width * 0.6,
        color: Colors.white,
        height: 88,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 27,
            ),
            SvgPicture.asset('svg/ic_plus.svg'),
            const SizedBox(
              width: 13,
            ),
            SizedBox(
              height: 72,
              width: screenSize.width * 0.6 - 148,
              child: Center(
                child: TextFormField(
                    controller: controller,
                    style: AppTextStyle.base
                        .copyWith(color: AppColor.black, fontSize: 15),
                    onEditingComplete: () {
                      context.read<ChatBloc>().add(AddMessageChatEvent(
                          Message(
                              message: controller.text,
                              timeMessage: DateTime.now().toIso8601String()),
                          state.index,
                          state.chatModel));
                    },
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 20.0),
                      isDense: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          'svg/ic_smile.svg',
                        ),
                      ),
                      hintText: 'Начни писать что-нибудь...',
                      hintStyle: AppTextStyle.base,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: const BorderSide(
                          color: AppColor.mainElement,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: const BorderSide(
                          color: AppColor.mainElement,
                          width: 2.0,
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            SvgPicture.asset('svg/ic_microphone.svg')
          ],
        ),
      );
    });
  }
}
