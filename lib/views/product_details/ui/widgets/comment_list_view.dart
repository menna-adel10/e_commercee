

import 'package:flutter/material.dart';

import 'User_comment.dart';

class CommentListView extends StatelessWidget {
  const CommentListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index)=> UserComment(), separatorBuilder: (context,index)=>Divider(), itemCount: 10);
  }
}
