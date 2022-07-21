import 'dart:convert';

import 'package:flutter/material.dart';
import './getjson.dart';

class rendering extends StatefulWidget {
  const rendering({Key? key}) : super(key: key);

  @override
  State<rendering> createState() => _renderingState();
}

class _renderingState extends State<rendering> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: Netinfo.getInfo(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            var _data = jsonDecode(snapshot.data.toString());
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 90,
                    childAspectRatio: 1 / 1,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 10),
                itemCount: _data.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          offset: Offset(1.0, 6.0),
                          blurRadius: 12.0,
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: Colors.pink,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://game.gtimg.cn/images/yxzj/img201606/heroimg/${_data[index]['ename']}/${_data[index]['ename']}.jpg')),
                    ),
                    // child: Text('${_data[index]['cname']}'),
                  );
                });
          } else {
            return const Text('.........');
          }
        },
      ),
    );
  }
}
