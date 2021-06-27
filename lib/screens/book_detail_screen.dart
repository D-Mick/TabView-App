import 'package:flutter/material.dart';
import 'package:tab_view_app/model/list.dart';

class BookDetailScreen extends StatefulWidget {
  final ImageList contentList;

  const BookDetailScreen({Key? key, required this.contentList}) : super(key: key);

  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey,width: 2)
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ))),

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.contentList.image,
                    fit: BoxFit.contain,
                  )),
            ),
            SizedBox(height:10,),
            Center(child: Text(widget.contentList.title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
            SizedBox(height:5,),
            Center(child: Text(widget.contentList.author,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Text(widget.contentList.description,textAlign: TextAlign.justify,style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w600),),
            )

          ],
        ),
      ),
    );
  }
}