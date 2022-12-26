import 'package:dio/dio.dart';
import 'package:vipin_final/core/url_constant.dart';
import 'package:vipin_final/service/http_service.dart';

class HttpServiceImpl implements HttpService {

  late Dio _dio;


  @override
  void init() {
    // TODO: implement init
    _dio = Dio(BaseOptions(baseUrl: URLConstant.baseUrl));
  }

  @override
  Future<Response> signupAPIRequest(String name, String emailId,
      String password, String phoneNumber) async {
    Response response;
    try {
      print(URLConstant.baseUrl + URLConstant.signup + 'name=$name&emailId=$emailId&password=$password&phone=$phoneNumber');
      response = await _dio.post(URLConstant.baseUrl + URLConstant.signup + 'name=$name&emailId=$emailId&password=$password&phone=$phoneNumber');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }
}