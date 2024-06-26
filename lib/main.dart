import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false, // Thêm dòng này để bỏ ruy băng debug
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                AssetImage(''), // Thay bằng hình ảnh avatar của bạn
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.red,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100.0, // Thiết lập chiều cao là 100
                          width: 200.0, // Thiết lập chiều rộng là 200
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 206, 93).withOpacity(0.15),
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.15), // Màu của viền
                              width: 2, // Độ rộng của viền
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Thu',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 32, 73, 33),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '500.000 đ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 32, 73, 33),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold, // Bôi đậm chữ
                                    ),
                                  ),
                                ),
                                // Thêm nội dung khác của ô này tại đây
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 100.0, // Thiết lập chiều cao là 100
                          width: 200.0,
                          decoration: BoxDecoration(
                            color:Colors.blue.withOpacity(0.15), // Thay đổi màu sắc cho ô thứ hai
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.15), // Màu của viền
                              width: 2, // Độ rộng của viền
                            ),
                            
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Chi',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 17, 78, 128),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '500.000 đ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 17, 78, 128),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold, // Bôi đậm chữ
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 100.0, // Thiết lập chiều cao là 100
                          width: 200.0,
                          decoration: BoxDecoration(
                            color:Colors.red.withOpacity(0.15), // Thay đổi màu sắc cho ô thứ hai
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.15), // Màu của viền
                              width: 2, // Độ rộng của viền
                            ),
                            
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Nợ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 121, 33, 27),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '1.200.000',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 121, 33, 27),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold, // Bôi đậm chữ
                                    ),
                                  ),
                                ),
                                
                                // Thêm nội dung khác của ô này tại đây
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final String icon;
  final String store;
  final String accountType;
  final String amount;
  final String date;

  TransactionTile({
    required this.icon,
    required this.store,
    required this.accountType,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(icon),
      ),
      title: Text(store),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(accountType),
          Text(date),
        ],
      ),
      trailing: Text(
        amount,
        style: const TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
