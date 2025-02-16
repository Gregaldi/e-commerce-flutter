import 'package:bloc/bloc.dart';
import 'package:ecommerce/data/datasource/auth_remote_datasource.dart';
import 'package:ecommerce/data/model/request/register_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(AuthRemoteDatasource authRemoteDatasource) : super(_Initial()) {
    on<RegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
