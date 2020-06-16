import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_icons/flutter_icons.dart';

import 'package:memoapp2/Controllers/posts_index_state.dart';

import '../partials/posts_post_tile.dart';

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
                child: TextField(
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
                    onChanged: (text) {
                      _searchWord = context
                          .read<PostsIndexStateNotifier>()
                          .changeWord(text);
                      print("changed:${_searchWord}");
                    }),
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
          child: buildPosts(_searchWord),
        )
      ],
    );
  }
}

class buildPosts extends StatelessWidget {
  final String searchWord;
  buildPosts(this.searchWord);

  List posts = ["hoge", "fuga", "bar"];

  Widget build(BuildContext context) {
    List hittedPosts =
        posts.where((post) => post.contains(searchWord)).toList();
    return ListView.builder(
      itemCount: hittedPosts.length,
      itemBuilder: (context, int index) {
        return MemoTile(
            hittedPosts[index], "bar", ["hoge", "fuga"], Icon(Icons.menu));
      },
      padding: const EdgeInsets.all(8),
    );
  }
}
