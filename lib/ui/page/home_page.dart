import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: screenSize.width * 0.4,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: SizedBox(
                        width: 71,
                        height: 71,
                        child: Stack(children: [
                          Container(
                            width: 61,
                            height: 61,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'user_photo.jpg', // замените на свой путь к фото
                                fit: BoxFit.cover, // добавим параметр fit
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 2,
                              child: Container(
                                height: 26,
                                width: 26,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                ),
                              )),
                        ]),
                      ),
                      title: Text(
                        overflow: TextOverflow.ellipsis,
                        'name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'message',
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${DateTime.now().hour.toString()}:${DateTime.now().minute.toString().padLeft(2, '0')}',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 38,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: Colors.grey,
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox.shrink()
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
