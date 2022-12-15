import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/slides/details/details.dart';
import '../views/slides/slides.dart';
import '../views/start/start.dart';

class RouterUtils {
  static final router = GoRouter(
    routes: [
      ShellRoute(
        pageBuilder: (context, state, child) => _webTransition(
          context,
          state,
          Stack(
            children: [
              child,
              if (state.subloc.length > 1)
                Positioned(
                  top: 24.0,
                  left: 24.0,
                  child: FloatingActionButton(
                    onPressed: () => navigateTo(
                      context,
                      StartRoute(),
                    ),
                    child: const Icon(
                      Icons.home,
                    ),
                  ),
                ),
            ],
          ),
        ),
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => _webTransition(
              context,
              state,
              Title(
                color: Colors.black,
                title: 'Home',
                child: const StartView(),
              ),
            ),
          ),
          GoRoute(
            path: '/slides/:id',
            pageBuilder: (context, state) => _webTransition(
              context,
              state,
              Title(
                color: Colors.black,
                title: 'Slides',
                child: SlidesView(
                  id: int.tryParse(state.params['id'] ?? '') ?? 1,
                ),
              ),
            ),
            routes: [
              GoRoute(
                path: 'details',
                pageBuilder: (context, state) => _webTransition(
                  context,
                  state,
                  Title(
                    color: Colors.black,
                    title: 'Details',
                    child: SlideDetailsView(
                      id: int.tryParse(state.params['id'] ?? '') ?? 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  static void navigateTo(BuildContext context, BaseRoute route) {
    context.go(route.path);
  }
}

abstract class BaseRoute {
  String path;

  BaseRoute(this.path);
}

class StartRoute extends BaseRoute {
  StartRoute() : super('/');
}

class SlidesRoute extends BaseRoute {
  SlidesRoute({int? id}) : super('/slides/${id ?? 1}');
}

class SlidesDetailsRoute extends SlidesRoute {
  SlidesDetailsRoute(BuildContext context)
      : super(
          id: int.tryParse(GoRouterState.of(context).params['id'] ?? '') ?? 1,
        ) {
    path += '/details';
  }
}

CustomTransitionPage _webTransition(
        BuildContext context, GoRouterState state, Widget view) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
