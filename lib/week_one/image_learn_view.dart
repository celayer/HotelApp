import 'package:flutter/material.dart';

const String _text = "Şanlıurfa Aynı-Zeliha Gölü";
const String _textHikaye = "Şanlıurfa Aynı-Zeliha Gölü'nün Hikayesi";
const String _imageNetwork ="https://www.neredekal.com/res/blog/sanliurfa-city-in-turkey-picture-id1159775374jpg.jpeg";
const String _assetsImages = "assets/images/5.jpg";
final String _textMetin="Rivayetlere göre, Hz İbrahim ateşe atılacağı zaman, Nemrut'un kızı Zeliha, Hz. İbrahim'in dinine iman ettiğini söyleyince, babası tarafından ateşe atılır. Zeliha yanarak can verir. Daha sonra, Zeliha'nın düştüğü yerde bir göl oluşur";



class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            _text,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                _assetsImages,
                //height: 300,
                // width: 300,
                fit: BoxFit.fill,
                alignment: Alignment.topRight,
              ),
            ),
            sizeboxheight(),
            sizeboxwidth(),
            Text(
              _textHikaye,
              style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black,),                               
              
            ),
            sizeboxheight(),
            sizeboxwidth(),
            Text(_textMetin,style:Theme.of(context).textTheme.headline2?.copyWith(color: Colors.blue,),),

           //               ElevatedButton(onPressed: , child: child)




          ],
        ),
      ),
    );
  }

  SizedBox sizeboxwidth() => SizedBox(width: 40,);

  SizedBox sizeboxheight() {
    return SizedBox(
            height: 40,
            
          );
  }
}
