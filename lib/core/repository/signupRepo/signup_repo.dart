import 'package:vipin_final/core/model/signup_model.dart';

abstract class SignupRepo{

  Future<SignupResponse>signupAPI(String name, String emailId, String password, String phoneNumber);



}