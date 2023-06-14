import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final numController = TextEditingController();
  final emailController = TextEditingController();

  void submitForm() {
    String name = nameController.text;
    String phone = phoneController.text;
    String num = numController.text;
    String mail = emailController.text;

    // Navigate to the next screen and pass the data
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextScreen(name: name, phone: phone, num: num, mail : mail),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    nameController.dispose();
    phoneController.dispose();
    numController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('احجز'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'الاسم',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'رقم الموبايل',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: 20,
            ),
             TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'البريد الالكتروني',
              ),
            ),
              SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: numController,
              decoration: InputDecoration(
                labelText: 'عدد الأفراد',
              ),
              keyboardType: TextInputType.phone,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              onPressed: submitForm,
              child: Text('احجز'),
            ),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  final String name;
  final String phone;
  final String num;
  final String mail;

  NextScreen({this.name, this.phone, this.num, this.mail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تم الحجز'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الاسم :$name',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            Text(
              'رقم الموبايل :$phone',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
             Text(
              'الريد الالكتروني :$mail',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            Text(
              'عدد الأفراد :$num',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "تم الحجز بنجاح",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "شكرا لك على استخدام مسار سيقوم مندوب من الرحلة بالاتصال بك و تأكيد الحجز و استكمال باقي الاجراءات",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Text(
                "من فضلك اذا واجهت أي مشكلة أو لديك أي استفسارات",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                ),
                Text(
                "يمكنك التواصل معنا فلا تردد عن طريق",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("01025286148", style: TextStyle(color: Colors.red, fontSize: 22),),
                    SizedBox(width: 5,),
                    Icon(Icons.support_agent, color: Colors.red,size: 40,),
                  ],
                ),
                 SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("support@massar-tour.com", style: TextStyle(color: Colors.red, fontSize: 22),),
                    SizedBox(width: 5,),
                    Icon(Icons.email, color: Colors.red,size: 33,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
