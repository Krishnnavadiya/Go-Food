import 'package:flutter/material.dart';
import 'package:gofood/detail_screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<Map> data = [
    {
      'name': 'Veg Whopper',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220314064417809150_482x264jpg',
      'des':
          "Our signature Whopper with 7 layers between the buns.Extra crunchy veg Patty,fresh onion,crispy lettuce,juicy tomatoes,tangy gherkins,creamy and smoky sauces with xxl buns.It's Not A Burger,it's a Whopper.\n\nThe Whopper is a hamburger consisting of a flame-grilled 4 oz (110 g) beef patty, sesame seed bun, mayonnaise, lettuce, tomato, pickles, ketchup, and sliced onion.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220314064415379009_914x416png',
      'price': '179',
      'rate': '4.5',
      'calories': '150 Calories',
      'time': '20-30 min'
    },
    {
      'name': 'Classic Veg',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20221027205258153832_482x264jpg',
      'des':
          "Our tribute to classic american taste. BK veg patty, garden fresh crispy lettuce, juicy tomato(seasonal) & our signature sauce.\n\nThe Whopperito is a burrito containing all the ingredients of the Whopper except ketchup, mayonnaise, or mustard, which are replaced with queso sauce.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20221027205255811541_914x416png',
      'price': '119',
      'rate': '4.8',
      'calories': '170 Calories',
      'time': '10-20 min'
    },
    {
      'name': 'Veg Double Whopper',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220314070354323312_482x264jpg',
      'des':
          "Our signature Whopper with 7 layers between the buns. Extra crunchy double veg Patty, fresh onion, crispy lettuce, juicy tomatoes(seasonal), tangy gherkins, creamy and smoky sauces with xxl buns. It's Not A Burger, it's a Whopper.\n\nThe Whopper is a hamburger consisting of a flame-grilled 4 oz (110 g) beef patty, sesame seed bun, mayonnaise, lettuce, tomato, pickles, ketchup, and sliced onion.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220314070352002385_914x416png',
      'price': '229',
      'rate': '4.2',
      'calories': '200 Calories',
      'time': '5-10 min'
    },
    {
      'name': 'Lite Whopper Jr Veg',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220314071027029352_482x264jpg',
      'des':
          "Our signature Whopper with 7 layers between the buns in a convenient size. Extra crunchy veg Patty, fresh onion, crispy lettuce, juicy tomatoes(seasonal), tangy gherkins, creamy and smoky sauces.\n\nWe will also add any condiment it sells upon request, as per its long-standing slogan 'Have It Your Way'.It is available with one, two or three beef patties and in a smaller version called the Whopper Jr.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220314071025422070_914x416png',
      'price': '149',
      'rate': '4.9',
      'calories': '185 Calories',
      'time': '25-30 min'
    },
    {
      'name': 'Crispy Veg Wrap',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20210430124032323393_482x264jpg',
      'des':
          "Be ready for a crunchy, saucy, explosion. A crunchy volcano shell filled with beans & veg mix, chef's secret sauce, fresh onion & crisp lettuce,Our crispy veg patty, topped with salad mix, our signature sauce wrapped in a Agrilled paratha.\n\nTortilla is topped with fresh Iceberg lettuce and tomatoes, cheese, onions, pickles, ketchup, creamy mayonnaise and curry sauce.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20210430124031100396_914x416png',
      'price': '70',
      'rate': '3.9',
      'calories': '100 Calories',
      'time': '8-10 min'
    },
    {
      'name': 'Cheesy Fries',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211208052135852070_482x264jpg',
      'des':
          "Cheese fries are French fries covered in a cheese sauce. Of course, you can always add other toppings like chili for chili cheese fries.\n\nCheese fries are French fries covered in a cheese sauce. Of course, you can always add other toppings like chili for chili cheese fries.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211208052133311321_914x416png',
      'price': '139',
      'rate': '5.0',
      'calories': '125 Calories',
      'time': '30-35 min'
    },
    {
      'name': 'Peri Peri Fries',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220314071855360279_482x264jpg',
      'des':
          "These Peri Peri fries are fabulous. Crispy fries, sprinkled with an easy-to-make at-home peri peri seasoning. They are lightly spiced, slightly sweet, and a little salty, all in all, the perfect fry.\n\nPeri Peri fries are French fries covered in a masala sauce. Of course, you can always add other toppings like chili for chili peri peri fries.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220314071853382359_914x416png',
      'price': '159',
      'rate': '4.5',
      'calories': '110 Calories',
      'time': '25-30 min'
    },
    {
      'name': 'Tikki Twist Burger',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20221013102722190369_482x264jpg',
      'des':
          "Tikki bhi, Twist bhi! Our new signature burger with spicy sauce, juicy tomato(seasonal), mix veg patty & a crunchy twist!\n\nExtra crunchy veg Patty, fresh onion, crispy lettuce, juicy tomatoes(seasonal), tangy gherkins, creamy and smoky sauces.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20221013102719482348_914x416png',
      'price': '99',
      'rate': '3.7',
      'calories': '135 Calories',
      'time': '20-25 min'
    },
    {
      'name': 'Fries (Large)',
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20210430065825939785_482x264jpg',
      'des':
          "french fries, also called chips, finger chips, fries, or French pommes frites, side dish or snack typically made from deep-fried potatoes that have been cut into various shapes, especially thin strips.\n\nFries are French fries covered in a simple sauce. Of course, you can always add other toppings like chili for chili fries.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20210430065824990474_914x416png',
      'price': '119',
      'rate': '3.3',
      'calories': '70 Calories',
      'time': '2-8 min'
    },
    {
      'name': "Italian Fries",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20221126192732410447_482x264jpg',
      'des':
          "The lip-smacking duo of creamy classic mayo and tangy tomato(seasonal) herb mayo make these fries very hard to resist!\n\nItalian fries are French fries covered in a masala sauce. Of course, you can always add other toppings like chili for chili italian fries.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20221126192730160267_914x416png',
      'price': '139',
      'rate': '4.1',
      'calories': '105 Calories',
      'time': '5-10 min'
    },
    {
      'name': "Hot 'N' Cheezy Burger",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220221050351039528_482x264jpg',
      'des':
          "Chilli Cheese patty, spicy sauce, soft square masala buns. It's cheezy & spicy.\n\nA cheeseburger is a hamburger topped with cheese.The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220221050349333586_914x416png',
      'price': '199',
      'rate': '3.7',
      'calories': '199 Calories',
      'time': '20-30 min'
    },
    {
      'name': "Paneer Royale Burger",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220221050424480282_482x264jpg',
      'des':
          "Thick Paneer Patty, loads of sauces in soft square masala buns. It's Royally Paneer.\n\nPaneer Burger is a unique and delicious burger recipe and is an Indian fusion recipe. The burger is a part of western cuisine originally.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220221050422605480_914x416png',
      'price': '199',
      'rate': '3.7',
      'calories': '199 Calories',
      'time': '20-30 min'
    },
    {
      'name': "Chocolate Thick Shake",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20210427150101361310_482x264jpg',
      'des':
          "This chocolate shake is already creamy and rich, so I have not added whipped cream topping.\n\nChocolate Milkshake Recipe is an easy and quick way to prepare a delicious Chocolate Shake with cocoa powder, milk and sugar.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20210427150100416140_914x416png',
      'price': '189',
      'rate': '4.1',
      'calories': '70 Calories',
      'time': '40-45 min'
    },
    {
      'name': "Berry Blast Thick Shake",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20210708085737670059_482x264jpg',
      'des':
          "Blueberry Milkshake prepared with frozen blueberries, vanilla ice cream and almond milk tastes heavenly sweet and creamy and it’s an anytime treat for a sweet tooth in you.\n\nThis thickshake comes loaded with a fusion of berries that stays long in your taste buds and rich creamy ice cream.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20210708085736950752_914x416png',
      'price': '189',
      'rate': '2.5',
      'calories': '80 Calories',
      'time': '45-55 min'
    },
    {
      'name': "Pepsi Large",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211229095632145669_482x264jpg',
      'des':
          "Pepsi is cola flavored soda and is brown in color, similar to that of Coca-Cola.\n\nPepsi has a slight citrusy tang that makes it taste crisp and delicious.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211229095628614419_914x416png',
      'price': '99',
      'rate': '4.3',
      'calories': '20 Calories',
      'time': '1-5 min'
    },
    {
      'name': "Lipton Ice Tea",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_LiptonIceTea_ProductList_482x264.jpg',
      'des':
          "Lipton iced tea is the perfect addition for any of your meals because of its crisp and refreshing taste.\n\nStill soft drink with tea extract and lemon juice with sugars and sweetener.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_LiptonIceTea_BigImageProduct_914x416.png',
      'price': '70',
      'rate': '3.9',
      'calories': '220 Calories',
      'time': '50-60 min'
    },
    {
      'name': "Mango Thick Shake",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20210430090901610159_482x264jpg',
      'des':
          "Mango thick shake… A great summer drink for mango lovers. This luscious, thick and tangy drink blends the sweetness of ripe mango along with vanilla ice cream.\n\nA great summer drink for mango lovers.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20210430090900376849_914x416png',
      'price': '189',
      'rate': '4.1',
      'calories': '90 Calories',
      'time': '43-45 min'
    },
    {
      'name': "Chocolate Mousse Cup",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220124131158223848_482x264jpg',
      'des':
          "Airy and creamy chocolate mousse topped with chocolate ganache and choco chips.\n\nChocolate Mousse Cup is rich and intense, made with pure dark chocolate and fresh dairy whipped cream.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220124131154944189_914x416png',
      'price': '109',
      'rate': '3.7',
      'calories': '50 Calories',
      'time': '2-6 min'
    },
    {
      'name': "Choco Lava Cup",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220330140833283827_482x264jpg',
      'des':
          "Chocolate Lava Cake is a small, individual-sized cake.\n\nThe center is slightly undercooked, on purpose, resulting in a gooey, melty, and decadent treat that oozes out when you cut into it.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220330140830579215_914x416png',
      'price': '109',
      'rate': '4.7',
      'calories': '99 Calories',
      'time': '10-19 min'
    },
    {
      'name': "Chocochip Muffin",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20220130140503923908_482x264jpg',
      'des':
          "bakery-style chocolate chip muffins are BIG in size, flavor, and texture.\n\nThey’re deliciously soft and moist with a crackly muffin top.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20220130140500490899_914x416png',
      'price': '129',
      'rate': '4.1',
      'calories': '78 Calories',
      'time': '15-19 min'
    },
    {
      'name': "Americano",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211121050640387687_482x264jpg',
      'des':
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee.\n\nAn americano coffee is quite simply just hot water and espresso.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211121050638759951_914x416png',
      'price': '169',
      'rate': '3.3',
      'calories': '310 Calories',
      'time': '25-30 min'
    },
    {
      'name': "Cappuccino",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211121050544537093_482x264jpg',
      'des':
          "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds.\n\nAn expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211121050543188738_914x416png',
      'price': '179',
      'rate': '4.6',
      'calories': '340 Calories',
      'time': '15-30 min'
    },
    {
      'name': "Cafe Latte",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211121050443044449_482x264jpg',
      'des':
          "A latte or caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.\n\nCaffè latte often shortened to just latte in English, is a coffee beverage of Italian.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211121050441315480_914x416png',
      'price': '189',
      'rate': '3.1',
      'calories': '245 Calories',
      'time': '10-20 min'
    },
    {
      'name': "Mochaccino",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211123111006912496_482x264jpg',
      'des':
          "A cafe mocha is essentially a chocolate flavored variant of a cafe latte, or even a hot chocolate with shots of espresso in it.\n\nAnother variant is a mochaccino which is an espresso shot with either a combination of steamed milk and cocoa powder or chocolate milk.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211123111005422962_914x416png',
      'price': '219',
      'rate': '3.8',
      'calories': '335 Calories',
      'time': '5-25 min'
    },
    {
      'name': "Cafe Caramello",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211123111107339362_482x264jpg',
      'des':
          "CAFFÈ CARAMELLO is the taste of sweet comfort that comes from blending a bis-cuity caramel flavour into silky-textured South American Arabica beans.\n\nA collection of smallholder farms from three distinct countries come together to create a perfect blend.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211123111105823562_914x416png',
      'price': '209',
      'rate': '2.5',
      'calories': '238 Calories',
      'time': '9-10 min'
    },
    {
      'name': "Mocha Frappe",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211121050108326101_482x264jpg',
      'des':
          "Mocha Frappé recipe is blended with ice and topped with whipped light cream and chocolatey drizzle.\n\nMocha sauce,Frappuccino Roast coffee, milk and ice all come together for a mocha flavor.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211121050106211353_914x416png',
      'price': '259',
      'rate': '3.8',
      'calories': '135 Calories',
      'time': '10-19 min'
    },
    {
      'name': "Hazelnut Cappuccino",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211121050326020369_482x264jpg',
      'des':
          "Hazelnut Cappuccino is a delicious, creamy cappuccino with a blend of smooth hazelnut and bold espresso flavors.\n\nHazelnut Cappuccino · So delicious and creamy that you would never know its instant, other than the ease of making it!",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211121050324699231_914x416png',
      'price': '209',
      'rate': '3.1',
      'calories': '245 Calories',
      'time': '10-20 min'
    },
    {
      'name': "Classic Cold Coffee",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211121050151002840_482x264jpg',
      'des':
          "Cold Coffee is a popular chilled beverage made with coffee, sugar and milk/water.\n\nCafe Style Cold Coffee (Cold Coffee Shake, Cold Coffee Milkshake) is a creamy cold beverage.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211121050149524402_914x416png',
      'price': '179',
      'rate': '4.3',
      'calories': '160 Calories',
      'time': '5-15 min'
    },
    {
      'name': "Hot Chocolate",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20211121045844222211_482x264jpg',
      'des':
          "A heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener like whipped cream or marshmallows.\n\nHot chocolate, also known as hot cocoa or drinking chocolate, is a hot drink.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20211121045841981622_914x416png',
      'price': '169',
      'rate': '4.2',
      'calories': '120 Calories',
      'time': '5-20 min'
    },
    {
      'name': "Masala Chai",
      'image':
          'https://d1rgpf387mknul.cloudfront.net/products/PLP/web/2x_web_20221223062948163817_482x264jpg',
      'des':
          "Masala Chai is an Indian beverage made by brewing black tea with spices, sugar and milk. In Hindi the word “Masala” means “spices” and “Chai” means “Tea”.\n\nMasala chai is a milky, sweet, spiced-filled black tea preparation that originated in India.",
      'des image':
          'https://d1rgpf387mknul.cloudfront.net/products/PDPE/web/2x_web_20221223062945523369_914x416png',
      'price': '109',
      'rate': '3.9',
      'calories': '60 Calories',
      'time': '10-20 min'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(right: 15, top: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,\nAre you Hungry?",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(children: [
                SizedBox(width: 10),
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10),
                Text("Search...",
                    style: TextStyle(color: Colors.grey, fontSize: 16))
              ]),
            ),
            SizedBox(height: 5),
            Expanded(
              child: GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.80),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => detailScreen(data[index]),
                          ))
                    },
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: NetworkImage(data[index]['image']),
                            fit: BoxFit.fill,
                          ),
                          Text(
                            data[index]['name'],
                            style: TextStyle(fontSize: 19),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 0,
                              ),
                              Text(
                                "₹" + data[index]['price'] + "/-",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              OutlinedButton(
                                  onPressed: () => {},
                                  child: Text(
                                    "ADD +",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(width: 1),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
