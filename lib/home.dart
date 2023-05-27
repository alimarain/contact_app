 import 'package:flutter/material.dart';
import 'package:mobile_app/add_number.dart';
import 'package:mobile_app/utils/data-constants.dart';

 class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}
   TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  int selectedIndex = -1;
  List<Contact> contacts = List.empty(growable: true);

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return  
 Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const  Text('Contacts',
        style: TextStyle(color: Colors.white),),
        actions: [
        IconButton(
      icon:const Icon(Icons.search),
        color: Colors.white,

      onPressed: () {
        // Perform search functionality
      },
    ),
        ],
      ),
      body: Center(
        child:  contacts.isEmpty
            // ? const Icon(
            //     Icons.contact_emergency,
            //     size: 100,
            //     color: Colors.blue,
            //   )
          ? Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
               Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc_4VWClAkDc1qA7txSf-QuxBvS3H0NQwAiQ&usqp=CAU')),
                Text("You Don't Have Any Contacts Yet")
            ],
          )
            : ListView.builder(
                itemCount:  contacts.length,
                 itemBuilder: (context, index) 
                 {
                  return ListTile(
                    title:Text(
              contacts[index].name,
            
              style: const TextStyle(fontWeight: FontWeight.bold),
                  ),);
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>const AddNumbers()),
    );
        },
        child: Icon(Icons.add),
      ),
    );
 }

  // Widget getRow(int index) {
  //   return Card(
  //     child: ListTile(
  //       leading: CircleAvatar(
  //         backgroundColor:
  //             index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
  //         foregroundColor: Colors.white,
  //         child: Text(
  //           contacts[index].name[0],
  //           style: const TextStyle(fontWeight: FontWeight.bold),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             contacts[index].name,
  //             style: const TextStyle(fontWeight: FontWeight.bold),
  //           ),
  //           Text(contacts[index].contact),
  //         ],
  //       ),
  //       trailing: SizedBox(
  //         width: 70,
  //         child: Row(
  //           children: [
  //             InkWell(
  //                 onTap: () {
  //                   //
  //                   nameController.text = contacts[index].name;
  //                   contactController.text = contacts[index].contact;
  //                   setState(() {
  //                     selectedIndex = index;
  //                   });
  //                   //
  //                 },
  //                 child: const Icon(Icons.edit)),
  //             InkWell(
  //                 onTap: (() {
  //                   //
  //                   setState(() {
  //                     contacts.removeAt(index);
  //                   });
  //                   //
  //                 }),
  //                 child: const Icon(Icons.delete)),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }


}
 
