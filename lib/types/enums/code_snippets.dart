enum CodeSnippets {
  pageViewBlueprint,
  controlsAnimationInit,
  controlsAnimationSizeTransition,
  keyboardListener,
  goRouterPath,
  goRouterShell,
  goRouterState,
  goRouterOfState;

  String get text {
    switch (this) {
      case CodeSnippets.pageViewBlueprint:
        return '''
  PageView.builder(
    controller: _controller,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: widget.slides.length,
    itemBuilder: (context, index) =>  ...''';
      case CodeSnippets.controlsAnimationInit:
        return '''
  _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  );

  _size = Tween<double>(begin: 0, end: 1.0).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ),
  );''';
      case CodeSnippets.controlsAnimationSizeTransition:
        return '''
  AnimatedBuilder(
    animation: _controller,
    builder: (context, child) => 
      SizeTransition(
        sizeFactor: _size,
        axisAlignment: 1.0 <or> -1.0,
        axis: Axis.vertical <or> Axis.horizontal,
        child: widget.child,
      ),
  ),''';
      case CodeSnippets.keyboardListener:
        return '''
  KeyboardListener(
    focusNode: FocusNode(),
    onKeyEvent: (event) {
      if (event is KeyRepeatEvent || event is KeyDownEvent) {
        if (event.logicalKey.keyLabel == 'Arrow Left' ||
            event.logicalKey.keyLabel == 'Page Up') {
          ...
  ...''';
      case CodeSnippets.goRouterPath:
        return '''
  GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => ...
      ),
      GoRoute(
        path: '/slides/:id',
        pageBuilder: (context, state) => ...
        routes: [
          GoRoute(
            path: 'details',
            pageBuilder: (context, state) => ...
  ...''';
      case CodeSnippets.goRouterShell:
        return '''
  GoRouter(
    routes: [
      ShellRoute(
        pageBuilder: (context, state, child) {
          ...
          <persistant-widget>
          ...
        }
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => ...
  ...''';
      case CodeSnippets.goRouterState:
        return '''
  GoRoute(
    path: '/slides/:id',
    pageBuilder: (context, state) => {
      ...
      return SlidesView(
          id: int.tryParse(state.params['id'] ?? '') ?? 1,
      ),
  ...''';
      case CodeSnippets.goRouterOfState:
        return '''
  GoRouterState.of(context).params['id']''';
    }
  }
}
