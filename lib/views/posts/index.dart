import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:memoapp2/Controllers/posts_index_state.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("<Index>");
    print(context);
    print("</Index>");

    String _searchWord =
        context.select<PostsIndexState, String>((state) => state.searchWord);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 100,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: new TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10),
                    hintText: '検索',
                  ),
                  enabled: true,
                  // 入力数
                  maxLength: 10,
                  maxLengthEnforced: false,
                  style: TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines: 1,
                  //パスワード
//      onChanged: _handleText,
                ),
              ),
              IconButton(
//                onPressed: _handlePressed,
                color: Colors.blue,
                icon: Icon(Icons.star),
              )
            ],
          ),
        ),
        Flexible(
            child: StreamBuilder(
          stream: _searchWord,
          builder: (BuildContext context, AsyncSnapshot<String> snapShot) {
            return ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                MemoTile("1hoge", "diary", ["hoge", "fuga"], Icon(Icons.menu)),
              ],
            );
          },
        )),
      ],
    );
  }
}

class MemoTile extends StatelessWidget {
  String title;
  String category_name;
  List tags;
  Icon icon;

  MemoTile(this.title, this.category_name, this.tags, this.icon);

  @override
  Widget build(BuildContext context) {
    String category_name_tags = "category:" + category_name + "\n tags:";
    tags.forEach((tag) {
      category_name_tags += " ";
      category_name_tags += tag;
    });

    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.20,
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            child: icon,
            backgroundColor: Colors.pink,
          ),
          title: Text(title),
          subtitle: Text(category_name_tags),
//          isThreeLine: true,
          onTap: () => {},
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          color: Colors.black45,
          iconWidget: Text(
            "非表示",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {}, // _showSnackBar('More'),
        ),
        IconSlideAction(
          color: Colors.red,
          iconWidget: Text(
            "削除",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {}, // _showSnackBar('Delete'),
        ),
      ],
    );
  }
}
