import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                color: Colors.white,
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                      PopupMenuItem(value: 1, child: Text('NewGroup')),
                      PopupMenuItem(value: 1, child: Text('New broadcast')),
                      PopupMenuItem(value: 1, child: Text('Linked Devices')),
                      PopupMenuItem(value: 1, child: Text('Starred messages')),
                      PopupMenuItem(value: 1, child: Text('Settings'))
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: const Icon(Icons.camera_alt),
            ),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://tinyurl.com/mw8hp7jk'),
                    ),
                    title: Text("Muhammad Waqar"),
                    subtitle: Text("Hey What's Up?"),
                    trailing: Text('Yesterday'),
                  );
                }),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.greenAccent,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 35,
                                      top: 28,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Status',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Tap to add status update',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Viewed Updates'),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://tinyurl.com/mw8hp7jk'),
                      ),
                      title: Text("Muhammad Waqar"),
                      subtitle: Text('Yesterday, 11:46 PM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                        NetworkImage('https://tinyurl.com/mw8hp7jk'),
                      ),
                      title: Text("Muhammad Waqar"),
                      subtitle: Text('Yesterday, 11:46 PM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                        NetworkImage('https://tinyurl.com/mw8hp7jk'),
                      ),
                      title: Text("Muhammad Waqar"),
                      subtitle: Text('Yesterday, 11:46 PM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                        NetworkImage('https://tinyurl.com/mw8hp7jk'),
                      ),
                      title: Text("Muhammad Waqar"),
                      subtitle: Text('Yesterday, 11:46 PM'),
                    )
                  ],
                )
              ],
            ),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://tinyurl.com/mw8hp7jk'),
                    ),
                    title: Text("Muhammad Waqar"),
                    subtitle: Text(index / 2 == 0
                        ? 'You Missed Called'
                        : 'Call time is 08:22'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
