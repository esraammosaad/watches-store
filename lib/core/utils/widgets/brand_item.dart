import 'package:flutter/material.dart';
import '../../../Features/home_page/data/models/brands_model.dart';
import '../styles.dart';

class BrandsItem extends StatelessWidget {
  BrandsItem({Key? key, required this.index, required this.brands,required this.onTap}) : super(key: key);
  int index;
  List<ProductsModel> brands;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(

          height: 125,
          width: 123,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xB2000000),
              width: 1,),
        ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15,top: 15),
                child: Image.asset(
                  brands[index].image,
                  width:95,
                  height: 74,
                ),
              ),
             Expanded(
               child: Container(
                 padding: const EdgeInsets.all(10),

                width: double.infinity,
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 decoration: const BoxDecoration(
                   color: Color(0xFF444444),

                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(16),
                     bottomRight: Radius.circular(16),
                   ),
                 ),

                 child:  Text(
                   brands[index].productBrand,
                   style: Styles.fontSize20.copyWith(color: const Color(0xB2000000)),
                   textAlign: TextAlign.center,
                 ),
               ),
             )
            ],
          ),
        ),
      ),

    );
  }
}

