import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("WhatsApp"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                builtListTile("Krishn", "Hi, How are you?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Etd0XZTT_IYTbBJgwufBVQWYfsjvQLzF4ZaiU9CvYbvB2vkbKfT3JMkp6CEjOORyQn4&usqp=CAU"),
                builtListTile("Josiah", "Hi, Where are you?",
                    "https://easy-peasy.ai/cdn-cgi/image/quality=70,format=auto,width=300/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/d41797f2-e7e2-4952-95e0-e094f0f80d7c/2550fbc1-eb3d-4d9f-859b-add946db85b0.png"),
                builtListTile("Karan", "Hi, what are you doing?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyS_fsNxSzyx6Jf2YaQ_A5ycdGtlHt5NJ4FvdoVI_dNfRgkgm_2etpNr1q0DC_Z6F8wQE&usqp=CAU"),
                builtListTile("Krishn", "Hi, How are you?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Etd0XZTT_IYTbBJgwufBVQWYfsjvQLzF4ZaiU9CvYbvB2vkbKfT3JMkp6CEjOORyQn4&usqp=CAU"),
                builtListTile("Josiah", "Hi, Where are you?",
                    "https://easy-peasy.ai/cdn-cgi/image/quality=70,format=auto,width=300/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/d41797f2-e7e2-4952-95e0-e094f0f80d7c/2550fbc1-eb3d-4d9f-859b-add946db85b0.png"),
                builtListTile("Karan", "Hi, what are you doing?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyS_fsNxSzyx6Jf2YaQ_A5ycdGtlHt5NJ4FvdoVI_dNfRgkgm_2etpNr1q0DC_Z6F8wQE&usqp=CAU"),
                builtListTile("Krishn", "Hi, How are you?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Etd0XZTT_IYTbBJgwufBVQWYfsjvQLzF4ZaiU9CvYbvB2vkbKfT3JMkp6CEjOORyQn4&usqp=CAU"),
                builtListTile("Josiah", "Hi, Where are you?",
                    "https://easy-peasy.ai/cdn-cgi/image/quality=70,format=auto,width=300/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/d41797f2-e7e2-4952-95e0-e094f0f80d7c/2550fbc1-eb3d-4d9f-859b-add946db85b0.png"),
                builtListTile("Karan", "Hi, what are you doing?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyS_fsNxSzyx6Jf2YaQ_A5ycdGtlHt5NJ4FvdoVI_dNfRgkgm_2etpNr1q0DC_Z6F8wQE&usqp=CAU"),
              ],
            ),
          )),
    );
  }

  ListTile builtListTile(title, subtitle, img) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(img),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: Column(
        children: [
          Text("13/07/2024"),
          Icon(Icons.done_all, color: Colors.blue),
        ],
      ),
    );
  }
}
