import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/custom_app_bar.dart';
import 'package:watsh_store/core/utils/widgets/custom_category_bar.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_title.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              left: 8,
              right: 16,
            ),
            child: CustomTitle(text: "Favorite"),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context,index)=>const FavoriteItem(),itemCount: 3,))


        ],
      ),

    );
  }
}
class FavoriteItem extends StatelessWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0,right: 4,bottom: 12),
      child: Stack(
        alignment: Alignment.centerLeft,

        children: [

          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Card(


              elevation: 12,
              shadowColor:  const Color(0x80000000)      ,
              color:  const  Color(0xB2FFFFFF),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: const BorderSide(color: Color(0x80000000),width: 1)
              ),

              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 72,top: 26,bottom: 26,right: 8),


                title: Text(
                    "Piaget Tribute To The Altiplano",maxLines: 3,overflow: TextOverflow.ellipsis,
                  style: Styles.fontSize16.copyWith(color: const Color(0xB2000000),fontWeight: FontWeight.w600),
                ),
                trailing: IconButton(onPressed: (){},icon: Image.asset('assets/icons/flat-color-icons_like.png'),),
              ),

            ),
          ),
          const CircleAvatar(radius: 68,backgroundColor:  Color(0xB2F9F0F0),backgroundImage: AssetImage('assets/icons/Ellipse4.png'
          ),)
        ],
      ),
    );
  }
}

