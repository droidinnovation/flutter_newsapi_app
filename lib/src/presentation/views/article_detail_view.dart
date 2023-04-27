import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:oktoast/oktoast.dart';

import '../../config/router/app_router.dart';
import '../../domain/models/models.dart';
import 'package:ionicons/ionicons.dart';
import '../cubits/cubits.dart';

class ArticleDetailView extends HookWidget {
  final Article article;

  const ArticleDetailView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localArticleCubit = BlocProvider.of<LocalArticlesCubit>(context);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => appRouter.pop(),
          child: const Icon(Ionicons.chevron_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          localArticleCubit.saveArticle(article: article);
          showToast('Article Saved Successfully');
        },
        child: const Icon(Ionicons.bookmark, color: Colors.white),
      ),
    );
  }
}
