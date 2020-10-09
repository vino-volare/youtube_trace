import 'package:flutter/material.dart';
import 'package:youtube_trace/Movie_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){},
          ),
          title: const Text('YouTube'),
          backgroundColor: Colors.indigo,
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.airplay,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.search,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.network('https://www.ysgear.co.jp/share/images/modeltop/promotion/promotion1183WFn.jpg'),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 90.0,
                      height: 90.0,
                      child: IconButton(
                        icon: Image.network(
                          'https://avatars1.githubusercontent.com/u/71433683?s=460&u=7d25550a6ca9470b5057c5e4ae31440f8393c736&v=4',
                        ),
                        iconSize: 60.0,
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            SizedBox(
                              height: 27.0,
                              child: FlatButton(
                                height: 20.0,
                                child: Text(
                                  'ビーノ',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                            Text(
                              'チャンネル登録者数 100人',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                              width: 97.0,
                              child: FlatButton(
                                height: 15.0,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.video_call,
                                      color: Colors.red,
                                      size: 13.0,
                                    ),
                                    Text(
                                      '登録する',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ]
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add_alert_outlined,
                        color: Colors.black,
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      leading: Image.network(
                        'https://avatars1.githubusercontent.com/u/71433683?s=460&u=7d25550a6ca9470b5057c5e4ae31440f8393c736&v=4',
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '動画$index',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'ビーノ',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black38,
                                ),
                              ),
                              Text(
                                '100回視聴・1か月前',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: (){},
                      ),
                      onTap: ()async{
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
