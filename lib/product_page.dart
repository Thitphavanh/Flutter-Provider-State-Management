import 'package:flutter/material.dart';
import 'package:flutter_provider/models/order.dart';
import 'package:flutter_provider/models/product.dart';
import 'package:flutter_provider/provider/order_notify.dart';
import 'package:flutter_provider/screen_order.dart';
import 'package:provider/src/provider.dart';

class ProductPage extends StatelessWidget {
  List<Product> items = [
    Product(
      image:
          'http://1.bp.blogspot.com/-xwy4VKWEEp8/TuhptQeaNGI/AAAAAAABqMY/7aJnxKfLKYU/s1600/blogger-image-1822847266.jpg',
      name: 'ໜັງສື : ສຕີຟ ຈັອບສ໌ (Steve Jobs)',
      desc: 'ສຕີຟ ຈັອບສ໌ (Steve Jobs) ໂດຍ ວອລເຕີຣ໌ ໄອແຊັຄສັນ (Walter Isaacson)',
      price: 250000,
    ),
    Product(
      image:
          'https://amarinbooks.com/wp-content/uploads/2018/07/elon-musk-01.png',
      name: 'ໜັງສື : ອີລອນ ມັສກ໌ (Elon Musk)',
      desc:
          'ຈາກລົດຍົນໄຟຟ້າ Tesla ສູ່ອານານິຄົມເທິງດາວອັງຄານ ເລື່ອງລາວຊີວິດຂອງຜູ້ປະກອບການທີ່ອາດຫານທີ່ສຸດໃນຍຸກຂອງເຮົາ',
      price: 145000,
    ),
    Product(
      image: 'https://miro.medium.com/max/1100/1*L8LKQjivytnTWzJtVyK2NA.png',
      name: 'ໜັງສື : PRINCIPLES : Life and Work',
      desc:
          'Principles ເປັນໜັງສືທີ່ຖ່າຍທອດອອກມາໄດ້ຢ່າງມີລະບົບ ມີຕະກະ ໃນຂະນະດຽວກັນກໍເຕັມໄປດ້ວຍຄວາມເປັນສີລະປະ',
      price: 340000,
    ),
    Product(
      image:
          'https://www.principles.com/assets/book-cover-tall-big-debt-crises-43a22823fc369de0db39aa983e0b5ffe3e2779addc3241b4c6347ad1ab75146b.png',
      name: 'ໜັງສື : Principles For Navigating',
      desc: 'Big Debt Crises ວິກິດການໜີ້ສິນໃຫຍ່',
      price: 330000,
    ),
    Product(
      image:
          'https://www.principles.com/assets/book-cover-tall-the-changing-world-order-fb27b2fdd5963d0fa239d95130915d68e1e8955ca7bbc5dbc0a9c4445ef2bde2.png',
      name: 'ໜັງສື : Principles for Dealing with THE CHANGING WORLD ORDER',
      desc:
          'Why Nations Succeed and Fail ເປັນຫຍັງປະເທດຊາດຈຶ່ງປະສົບຄວາມສຳເລັດ ແລະ ລົ້ມເຫຼວ?',
      price: 330000,
    ),
    Product(
      image:
          'https://image.makewebeasy.net/makeweb/0/7GFEYsdVK/PRE/9781787333765.jpg',
      name: 'ໜັງສື : Sapiens Graphic Novel Volume 2',
      desc:
          'ຄົ້ນຫາປະຫວັດສາດຂອງມະນຸດຊາດ ໄລ່ລຽງວິວັດທະນາການຂອງມະນຸດຈາກຍຸກຫີນໄປສູ່ມະນຸດໃນສະຕະວັດທີ 21',
      price: 345000,
    ),
    Product(
      image: 'https://cf.shopee.co.th/file/8a9e9d2835f55a7a9e9dfb388032dfe8',
      name: 'ໜັງສື : The Psychology of Money',
      desc:
          'Timeless Lessons on Wealth, Greed, and Happiness ບົດຮຽນອຳມະຕະຂອງຄວາມຮັ່ງມີ, ຄວາມໂລບ, ແລະ ຄວາມສຸກ',
      price: 101000,
    ),
    Product(
      image: 'https://cf.shopee.co.th/file/6738d7803a0128172f86533282b49975',
      name: 'ໜັງສື : The Bitcoin Standard',
      desc: 'ລະບົບການເງິນສູນກາງແບບໃໝ່ ແບບທີ່ບໍ່ມີສູນກາງ',
      price: 185000,
    ),
    Product(
      image:
          'https://media.shopat24.com/pdmain/425093_00_business_management_nationbooks.jpg',
      name: 'ໜັງສື : Invent & Wander ແນວຄິດ ແລະ ຊີວິດຂອງຜູ້ກໍ່ຕັ້ງ Amazon.com',
      desc:
          'Invent & Wander ຄືຄຳພີການສ້າງຄຸນຄ່າທຸລະກິດ ທັ້ງໃນດ້ານກົນລະຍຸດ ແລະ ການລົງມືປະຕິບັດທີ່ຖ່າຍທອດດ້ວຍພາສາຕົງໄປຕົງມາເຂົ້າໃຈງ່າຍ',
      price: 132000,
    ),
    Product(
      image:
          'http://www.thaiall.com/blogacla/wp-content/uploads/2013/04/9786165154147L.jpg',
      name: 'ໜັງສື : ອັລເບິຣ໌ຕ ໄອນ໌ສໄຕນ໌ (Albert Einstein)',
      desc: 'ໄອນ໌ສໄຕນ໌ (Einstein) ໂດຍ ວອລເຕີຣ໌ ໄອແຊັຄສັນ (Walter Isaacson)',
      price: 220000,
    ),
    Product(
      image: 'https://cf.shopee.co.th/file/2c41999393e8385021f64f1f77ff663d',
      name: 'ໜັງສື : ເລໂອນາຣ໌ໂດ ດາ ວິນຊີ (Leonardo Da Vinci)',
      desc:
          'ເລໂອນາຣ໌ໂດ ດາ ວິນຊີ (Leonardo Da Vinci) ຄືອັດສະລິຍະຂອງໂລກ ເຖິງວ່າຜ່ານຍຸກສະໄໝຂອງລາວມາເຖິງຫ້າສະຕະວັດແລ້ວ ກໍຍັງຫາໄດ້ຍາກທີ່ໃຜຈະເປັນສຸດຍອດທັ້ງດ້ານສາດ ແລະ ສີລະປິນແບບລາວ',
      price: 350000,
    ),
    Product(
      image:
          'https://th-test-11.slatic.net/p/0004394b6a6d15a67563ade023cd48b9.jpg',
      name: 'ໜັງສື : Sapiens A Brief History of Humankind',
      desc: 'ໄຂປັນຫາທີ່ຍິ່ງໃຫຍ່ທີ່ສຸດໃນປະຫວັດສາດ ແລະ ໃນໂລກຍຸກໃໝ່',
      price: 185000,
    ),
    Product(
      image:
          'https://th-test-11.slatic.net/p/35efe365e9d5e13afa7b7f7173111c9f.jpg_720x720q80.jpg_.webp',
      name: 'ໜັງສື : Homo Deus A Brief History of Tomorrow',
      desc: 'ໂຮໂມດີອຸສ ປະຫວັດຍໍ້ຂອງມື້ອື່ນ',
      price: 180000,
    ),
    Product(
      image:
          'https://th-test-11.slatic.net/p/c320c06181ab33b8b5f4f9b6750c4606.jpg',
      name: 'ໜັງສື : 21 Lessons for the 21st Century',
      desc: '21 ບົດຮຽນສຳຫຼັບສະຕະວັດທີ່ 21',
      price: 185000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Shop'),
        actions: <Widget>[
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenOrder(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 0,
                right: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      context.watch<OrderNotify>().items.length.toString(),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: items
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: ProductCard(e),
                ))
            .toList(),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.network(
          product.image,
          width: 90,
          height: 90,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(product.desc),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade400),
                      ),
                      onPressed: () {
                        var o = Order(
                          product: product,
                          quantity: 1,
                          price: product.price,
                        );
                        context.read<OrderNotify>().addOrder(o);
                      },
                      icon: Icon(Icons.add),
                      label: Text('Add'),
                    ),
                    Text(
                      '${product.price}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
