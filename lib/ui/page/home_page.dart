import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_messenger_bloc/ui/theme/app_color.dart';
import 'package:web_messenger_bloc/ui/theme/app_text.dart';
import 'package:web_messenger_bloc/ui/widget/switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> messenger = ['avito', 'vk', 'whatsApp'];
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(
                color: AppColor.mainElement,
                width: 1.0,
              ),
            )),
            width: screenSize.width * 0.4,
            height: screenSize.height,
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Center(
                    child: ListTile(
                      dense: true,
                      visualDensity: VisualDensity(vertical: 2),
                      leading: Stack(children: [
                        SizedBox(
                          width: 71,
                          height: 71,
                        ),
                        Container(
                          width: 61,
                          height: 61,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'image/$index.png', // замените на свой путь к фото
                              fit: BoxFit.cover, // добавим параметр fit
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: -2,
                            right: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                  'svg/${messenger[Random().nextInt(3)]}.svg'),
                            )),
                      ]),
                      title: Text(
                        overflow: TextOverflow.ellipsis,
                        'name',
                        style: AppTextStyle.base,
                      ),
                      subtitle: Text(
                        'message',
                        style: AppTextStyle.base,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${DateTime.now().hour.toString()}:${DateTime.now().minute.toString().padLeft(2, '0')}',
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
                  );
                }),
          ),
          Container(
            width: screenSize.width * 0.6,
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
                    width: screenSize.width*0.6,
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
                                visualDensity: VisualDensity(vertical: 0),
                                leading: Container(
                                  width: 44,
                                  height: 44,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'image/0.png', // замените на свой путь к фото
                                      fit: BoxFit
                                          .cover, // добавим параметр fit
                                    ),
                                  ),
                                ),
                                title: Text(
                                  overflow: TextOverflow.ellipsis,
                                  'name',
                                  style: AppTextStyle.base,
                                ),
                                subtitle: Text(
                                  'secondari',
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
                          width: screenSize.width*0.6-550,
                        ),
                        Row(
                          children: [
                            SwitchWidget(),
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
                                    icon: Icon(Icons.more_vert),
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
                Container(
                  width: screenSize.width * 0.6,
                  color: Colors.white,
                  height: 88,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 27,),
                      SvgPicture.asset('svg/ic_plus.svg'),
                      const SizedBox(
                        width: 13,
                      ),
                      Container(
                        height: 72,
                        width: screenSize.width * 0.6-148,
                        child: Center(
                          child: TextFormField(
                              style: AppTextStyle.base.copyWith(
                                  color: AppColor.black, fontSize: 15),
                              onChanged: (value) {
                                // context.read<LoginCubit>().updateCode(value);
                              },
                              keyboardType: TextInputType.text,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .singleLineFormatter
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
                                  borderSide: BorderSide(
                                    color: AppColor.mainElement,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35.0),
                                  borderSide: BorderSide(
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
