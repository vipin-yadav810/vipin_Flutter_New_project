import 'package:dio/dio.dart';

abstract class HttpService {
  void init();

  Future<Response> signupAPIRequest(String name, String emailId, String password, String phoneNumber);


}