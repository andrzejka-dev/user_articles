import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/app/injection_container.dart';
import 'package:user_articles/features/details/cubit/details_cubit.dart';

class DetailsPage extends StatelessWidget {
  final int articleId;

  const DetailsPage({super.key, required this.articleId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailsCubit>()..fetchData(id: articleId),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Article Details'),
        ),
        body: BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.initial:
                return const Center(child: Text('Initial state'));
              case Status.loading:
                return const Center(child: CircularProgressIndicator());
              case Status.success:
                if (state.articles.isEmpty) {
                  return const Center(child: Text('No article found'));
                }
                final article = state.articles.first;
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 200.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.network(
                          article.picture,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            article.title,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors
                                  .black, // Or choose any color you prefer
                            ),
                            textAlign: TextAlign.center, // Center the title
                          ),
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.all(16.0),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          article.content,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                );
              case Status.error:
                return Center(child: Text('Error: ${state.errorMessage}'));
            }
          },
        ),
      ),
    );
  }
}
