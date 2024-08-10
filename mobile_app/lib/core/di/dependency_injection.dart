import 'package:get_it/get_it.dart';
import 'package:mobile_app/features/chat/data/repositories/chat_repository.dart';
import 'package:mobile_app/features/chat/logic/bloc/chat_bloc.dart';

import '../../features/chat/data/data_source/chat_remote_data_source.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // chat
  getIt.registerLazySingleton<ChatBloc>(() => ChatBloc(getIt()));
  getIt.registerLazySingleton<ChatRepository>(
      () => ChatRepositoryImplementation(getIt()));
  getIt.registerLazySingleton<ChatRemoteDataSource>(
      () => ChatRemoteDataSourceImplementation());
}
