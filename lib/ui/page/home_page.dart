import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:web_messenger_bloc/ui/theme/app_text.dart';

import '../../domain/chat_bloc.dart';
import '../widget/chat_field.dart';
import '../widget/chat_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
final chatBloc = BlocProvider.of<ChatBloc>(context);
chatBloc.startTimer();
    final Size screenSize = MediaQuery.of(context).size;
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return Scaffold(
        body: Row(
          children: [
            ChatList(screenSize: screenSize),
            state.index != -1
                ? ChatField(screenSize: screenSize)
                : SizedBox(
                    width: screenSize.width * 0.6,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("image/fon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: screenSize.height,
                            child: Center(
                              child: Text(
                                'Открой чат',
                                style: AppTextStyle.base.copyWith(
                                    fontSize: 50,
                                    color: const Color.fromARGB(
                                        255, 141, 105, 141),
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                          )
                        ])),
          ],
        ),
      );
    });
  }
}
