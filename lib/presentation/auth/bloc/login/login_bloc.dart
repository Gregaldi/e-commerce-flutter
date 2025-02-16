import 'package:bloc/bloc.dart';
import 'package:ecommerce/data/datasource/auth_remote_datasource.dart';
import 'package:ecommerce/data/model/request/login_request_model.dart';
import 'package:ecommerce/data/model/response/login_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource datasource;

  LoginBloc(this.datasource) : super(const LoginState.initial()) {
    on<_Login>(
      (event, emit) async {
        emit(const _Loading());
        final result = await datasource.login(event.model);
        result.fold((l) {
          emit(_Error(l));
        }, (r) {
          emit(_Loaded(r));
        });
      },
    );
  }
}
