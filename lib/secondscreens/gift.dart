import 'package:flutter/material.dart';

import 'detailphoto.dart';

class Gift extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/background.jpeg?alt=media&token=018e76e8-e52d-4870-b76b-20587ec780c5'),
              fit: BoxFit.fill),
        ),
        child: ListView(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                child: Image(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/WhatsApp%20Image%202021-06-04%20at%209.07.26%20AM.jpeg?alt=media&token=344437bb-79d0-4167-a22a-1dadf48163c9'),
                    width: double.infinity,
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 610,
                  width: double.infinity,
                  child: GridView.count(
                      crossAxisCount: 2, children: [
                    Container(
                      child: InkWell(
                        onTap: () {
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 15,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/gift%2F1.jpg?alt=media&token=797d696b-d512-4c90-b45d-93d6a62d8b9f'),
                                  height: 170,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 15,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/gift%2F2.jpg?alt=media&token=82bf6420-bc56-4674-8812-5e28bfc49509'),
                                  fit: BoxFit.fill,
                                  height: 170,                            ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 15,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/gift%2F3.jpg?alt=media&token=3bd5eb1a-6fcc-4607-be45-8c85773de246'),
                                  fit: BoxFit.fill,
                                  height: 170,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 15,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/gift%2F4-2.jpg?alt=media&token=e78d0a4a-ae76-4915-aa19-6fd438a23d8e'),
                                  height: 170,
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 15,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/gift%2F5-2.jpg?alt=media&token=df4275f7-8bff-4517-ac68-eee9f4687c22'),
                                  height: 170,
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 15,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/gift%2F6-2.jpg?alt=media&token=d28adc96-4b82-4343-b2ed-fa8eec2b2719'),
                                  height: 170,
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>
                      DetailPhoto(
                      )));
                },
                  child: Image(image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/9.png?alt=media&token=a0845b61-6bc5-4a02-a92f-e62eee573996'),
                  ),
                ),
              ),
              SizedBox(height: 20,),

            ],
          ),
      ),
    );
  }
}
