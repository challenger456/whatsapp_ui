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
            centerTitle: false,
            bottom: const  TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),



              ],


            ),
            actions:  [

              Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => [
                    const PopupMenuItem(
                      value: '1',
                        child: Text('New Group')
                    ),
                    const PopupMenuItem(
                        value: '2',
                        child: Text('Settings')
                    ),
                    const PopupMenuItem(
                        value: '3',
                        child: Text('Logout')
                    ),
                  ]
              ),
              SizedBox(width: 10,)
            ],

          ),
          body:  TabBarView(
            children: [

              // Text('Camera'),
              Center(child: Text('camera',)),
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context,index){
                    return const ListTile(
                      title: Text('Russian'),
                      subtitle: Text('where is my dog'),
                      trailing: Text('8:13 AM'),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context,index){
                    return  ListTile(
                      title: Text('Russian'),
                      subtitle: Text("35m ago"),
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return  ListTile(
                      title: const Text('Russian'),
                      subtitle: Text(index /5 == 0 ? 'You Missed Call' : "call time is 3:00 PM "),
                      trailing: Icon(index/5 == 0 ?Icons.phone : Icons.video_call_sharp),
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    );
                  }),
            ],
          ),

        ),
    );
  }
}



