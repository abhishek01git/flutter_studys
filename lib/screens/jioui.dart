import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFirstui extends StatelessWidget {
  const MyFirstui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 8, 103),
        title: Container(
            height: 40,
            width: 150,
            padding: const EdgeInsets.only(left: 20, top: 4),
            decoration: BoxDecoration(
                color: Colors.blue.shade700,
                borderRadius: BorderRadius.circular(20)),
            child: const Text("search")),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 40, 38, 38),
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(200, 62, 60, 60),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.newspaper_sharp,
                      color: Colors.orange.shade800,
                    ),
                    const Text(
                      "Lastest news",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 68, 67, 67),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const Text(
                  "Resurrected in a Fortnight:Armay buillds",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const Text(
                  "Bailey Bridge Over teesta in 18 Days in",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const Text(
                  "NEWJ.india.few minutes ago",
                  style: TextStyle(
                    color: Color.fromARGB(255, 113, 111, 111),
                    fontSize: 9,
                  ),
                ),
                const Divider(),
                Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gadgets 360 with Technical",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Guruji:ASK TG",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "NDTV.Latest News.3h",
                          style: TextStyle(
                              color: Color.fromARGB(255, 113, 111, 111),
                              fontSize: 9),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Container(
                      // margin: const EdgeInsets.only(left: 200),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            46,
                            45,
                            45,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(Icons.video_collection_rounded),
                    ),
                  ],

                ),
                Divider(),
                 Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gadgets 360 with Technical",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Guruji:Tech Tip",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "NDTV.Latest News.3h",
                          style: TextStyle(
                              color: Color.fromARGB(255, 113, 111, 111),
                              fontSize: 9),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Container(
                      // margin: const EdgeInsets.only(left: 200),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            46,
                            45,
                            45,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(Icons.video_collection_rounded),
                    ),
                  ],
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
