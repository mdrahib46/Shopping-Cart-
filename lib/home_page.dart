import 'package:flutter/material.dart';
import 'myBag.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<MyBag> _myBag = [
  MyBag(
    productImage:
        'https://w7.pngwing.com/pngs/826/253/png-transparent-t-shirt-polo-shirt-clothing-sleeve-black-t-shirt-black-crew-neck-t-shirt-tshirt-fashion-cloth-thumbnail.png',
    productName: 'Pullover',
    productColor: 'Black',
    productSize: 'L',
    price: 51,
    quantity: 1,
  ),
  MyBag(
    productImage:
        'https://w7.pngwing.com/pngs/826/253/png-transparent-t-shirt-polo-shirt-clothing-sleeve-black-t-shirt-black-crew-neck-t-shirt-tshirt-fashion-cloth-thumbnail.png',
    productName: 'T-Shirt',
    productColor: 'Gray',
    productSize: 'L',
    price: 30,
    quantity: 1,
  ),
  MyBag(
    productImage:
        'https://w7.pngwing.com/pngs/826/253/png-transparent-t-shirt-polo-shirt-clothing-sleeve-black-t-shirt-black-crew-neck-t-shirt-tshirt-fashion-cloth-thumbnail.png',
    productName: 'Sport Dress',
    productColor: 'Black',
    productSize: 'M',
    price: 43,
    quantity: 1,
  ),
];

/// Total Amount of Your Purchase
double get _totalAmount {
  double total = 0.0;
  for (var item in _myBag) {
    total += item.price * item.quantity;
  }
  return total;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bag',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            for (final item in _myBag) _buildInfoListTile(item),
            const Spacer(),
            Row(
              children: [
                const Text('Total Amount:'),
                const Spacer(),
                Text(
                  '$_totalAmount\$',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  child: const Text('CHECK OUT',style: TextStyle(color: Colors.white),),
                ),),
          ],
        ),
      ),
    );
  }


  Widget _buildInfoListTile(MyBag myBag) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
          tileColor: Colors.white,
          leading: SizedBox(
            height: 50,
            width: 50,
            child: Image(
              image: NetworkImage(myBag.productImage),
              fit: BoxFit.fill,
            ),
          ),
          title: Text(myBag.productName,style: const TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Column(
            children: [
              Row(
                children: [
                  const Text('Color'),
                  const SizedBox(width: 5),
                  Text(
                    myBag.productColor,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 30),
                  const Text('Size'),
                  const SizedBox(width: 5),
                  Text(
                    myBag.productColor,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      myBag.quantity--;
                      if (myBag.quantity <= 0) {
                        _myBag.remove(myBag);
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    icon: const Icon(Icons.minimize),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.teal.shade100,
                        elevation: 10,
                        alignment: Alignment.topCenter),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${myBag.quantity}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      myBag.quantity++;
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    icon: const Icon(Icons.add),
                    style: IconButton.styleFrom(backgroundColor:  Colors.teal.shade100),
                  )
                ],
              ),
            ],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
          trailing: Column(
            children: [
              const InkWell(
                child: Icon(Icons.more_vert),
              ),
              const Spacer(),
              Text(
                '${myBag.price}\$',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),),
    );
  }
}
