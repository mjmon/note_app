import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/blocs/note_list/note_list_bloc.dart';
import 'package:noteapp/injection.dart';
import 'package:noteapp/routing/routing.dart';
import 'package:noteapp/service/i_api_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => NoteListBloc(apiService: getIt<IApiService>()))
      ],
      child: GestureDetector(
        onTap: () {
          // to dismiss keyboard when outside is tapped
          FocusScope.of(context).requestFocus(FocusNode());
        },
        behavior: HitTestBehavior.translucent,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: true,
          title: "Note App",
          routerConfig: appRouter,
        ),
      ),
    );
  }
}
