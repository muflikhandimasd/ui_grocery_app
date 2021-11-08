import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_grocery_app/widgets/categories_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.gripLines),
          color: Colors.grey,
          tooltip: "Menu",
        ),
        actions: _buildActions,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Center(
                child: Image.asset('assets/banner.png'),
              ),
              _buildCategories(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get _buildActions => <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.grey,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.shoppingBasket),
          color: Colors.grey,
        ),
      ];

  Widget _buildCategories() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",
                    style: GoogleFonts.varelaRound(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700])),
                _ExploreAllButton(
                  onTap: () {},
                ),
              ],
            ),
          ),
          _buildCategoriesList()
        ],
      ),
    );
  }

  Widget _buildCategoriesList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CategoriesTile(
          assetPath: 'assets/bread.png',
          color: Color(0xffFCE8A8),
          title: "Bakery",
        ),
        CategoriesTile(
          assetPath: 'assets/apple.png',
          color: Color(0xffDFECF8),
          title: "Fruits",
        ),
        CategoriesTile(
          assetPath: 'assets/vegetable.png',
          color: Color(0xffe2f3C2),
          title: "Vegetables",
        ),
        CategoriesTile(
          assetPath: 'assets/milk.png',
          color: Color(0xffFfDBC5),
          title: "Drinks",
        ),
      ],
    );
  }
}

class _ExploreAllButton extends StatelessWidget {
  final Function() onTap;
  const _ExploreAllButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text("Explore all",
            style: GoogleFonts.varelaRound(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.grey[700])),
        decoration: BoxDecoration(
          color: Color(0xffE0E6EE),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
// MENIT KE 13