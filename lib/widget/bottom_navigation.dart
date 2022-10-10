import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hote_info.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hotel_detail.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hotel_home.dart';

class BottomNavigationClassLearn extends StatefulWidget {
  const BottomNavigationClassLearn({super.key});

  @override
  State<BottomNavigationClassLearn> createState() =>
      _BottomNavigationClassLearnState();
}

class _BottomNavigationClassLearnState extends State<BottomNavigationClassLearn>
//initstate tabcontroller this degerini sekronize gitmesii saglar.
    with
        TickerProviderStateMixin {
//Controller contorl ve skronizasyonu saglar
  late final TabController _tabController;

//ekranda çizim yapmadan contorller degeri ataması için gerekli
  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: _MyTabBarView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    //defaulttabcontroller olamdan tabbar çalışmaz
    return DefaultTabController(
      //length mytab olusturulan degerın ıcındekı uzunlugu anlamına gelıo
      length: _MyTabBarView.values.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 3,
          child: _myTabbar(),
        ),
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //extra float actıon batotomda sayfa acıyor.
            showModalBottomSheet(
              //isScrollControlled: true, //Sayfanın tamamen kaplanmasını saglıyor
              backgroundColor: Colors.red,
              //enableDrag: false, //tutup çekme özelligini aktif ediyor.
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              context: context,
              builder: (context) => Center(
                child: Column(
                  children: [ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.home_outlined), label:Text("data"))],
                ),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: _myTabbarView(),
      ),
    );
  }

//mytabbar olusturulan tabbar haritalandırmaile liste ye dönusturup içerisindeki isimleri yansıtması
  TabBar _myTabbar() {
    return TabBar(
      controller: _tabController,
      physics: NeverScrollableScrollPhysics(),
      unselectedLabelColor: Colors.black,
      labelColor: Colors.amber,
      indicator: BoxDecoration(
          border: Border(bottom: BorderSide(width: 3, color: Colors.orange))),
      onTap: (int index) {},
      tabs: _MyTabBarView.values
          .map((e) => Tab(
                text: e.name,
              ))
          .toList(),
    );
  }

  TabBarView _myTabbarView() {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        ClassHotelHome(),
        HotelDetail(),
        ClassOtelInfo(),
        HotelDetail(),
      ],
    );
  }
}

//enum yapısı list gibi ama daha az yük taşıma ve az maliyetle oluşuturlan ifade
enum _MyTabBarView {
  Home,
  Shop,
  Favori,
  Profile,
}

//extensin oluşturdugumuz bir kapı mytabbarviewextension adli boş bir kap private olan yapıyı public yani paylaşıma açma ve kopyalamaya yarıyor.

extension _MyTabbarviewExtension on _MyTabBarView {}
