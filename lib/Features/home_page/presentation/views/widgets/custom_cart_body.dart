import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/brands_model.dart';

class CustomCartBody extends StatefulWidget {
   CustomCartBody({
    super.key,
     required this.items,
     required this.index
  });
  List <ProductsModel> items;
  int index;

  @override
  State<CustomCartBody> createState() => _CustomCartBodyState();
}

class _CustomCartBodyState extends State<CustomCartBody> {
  int items=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19.0),
      child: Container(
        width: 430,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff929292),
          border: Border.all(
            color: Colors.black.withOpacity(0.25),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.5),
              ),
              height: double.infinity,
              width: MediaQuery.of(context).size.width * 0.3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                //fit: BoxFit.fill,
                widget.items[widget.index].image,
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.items[widget.index].description!,
                      style: Styles.fontSize20.copyWith(
                        color: Colors.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 37),
                          child: Text(
                            widget.items[widget.index].price.toString()+r'$',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          if(items>=1){

                            items--;
                            setState(() {

                            });
                          }
                        },
                        child: Text(
                          "-",
                          style: Styles.fontSize20.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "$items",
                        style: Styles.fontSize20.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          items++;
                          setState(() {

                          });
                        },
                        child: Text(
                          "+",
                          style: Styles.fontSize20.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
