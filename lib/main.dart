import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
              )),
      // Main App
      home: // Basic App Structure
          const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var txtcontroller = TextEditingController();
  var name = "Aakash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // App Bar Component
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          "doublea.in",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.add),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.density_medium)
        ],
      ),
      // App Body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          
          // User Avatar , Posts and Followers info.

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1677605322896-918bf77c5d70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60")),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: const [
                    Text(
                      "34",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("Posts")
                  ],
                ),
                Column(
                  children: const [
                    Text("294",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Followers")
                  ],
                ),
                Column(
                  children: const [
                    Text("834",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Following")
                  ],
                )
              ],
            ),

          // User Details - Name , Bio , Highlights, Buttons

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text("⚽ | 🧑🏿‍💻 | SRET '24 | SMVSR '20"),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "See Translation",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.link,
                        color: Color.fromARGB(255, 206, 233, 255),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "doublea411.github.io",
                        style: TextStyle(
                            color: Color.fromARGB(255, 206, 233, 255)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        color: const Color.fromARGB(95, 73, 73, 73),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: const Text(
                                      "Edit Profile",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    content: TextField(
                                      controller: txtcontroller,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      decoration: const InputDecoration(
                                        hintText: "Enter name",
                                      ),
                                    ),
                                    actions: [
                                      MaterialButton(
                                        onPressed: () {
                                          setState(() {
                                            name = txtcontroller.text;
                                          });
                                          Navigator.pop(context);
                                        },
                                        color: Colors.black,
                                        child: const Text(
                                          "Done",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: const Color.fromARGB(95, 73, 73, 73),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Share Profile",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      IconButton(
                        color: const Color.fromARGB(95, 73, 73, 73),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_add_alt_1_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.add,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          // Post Section

            const PostWidget(),
            const SizedBox(
              height: 6,
            ),
            const PostWidget(),
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 120,
          height: 120,
          color: Colors.amber,
          child: Image.network(
            "https://images.unsplash.com/photo-1661956600654-edac218fea67?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 120,
          height: 120,
          color: Colors.amber,
          child: Image.network(
            "https://images.unsplash.com/photo-1677822540369-25c7645c04fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 120,
          height: 120,
          color: Colors.amber,
          child: Image.network(
            "https://images.unsplash.com/photo-1677629322100-3f9d2d1f5317?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
