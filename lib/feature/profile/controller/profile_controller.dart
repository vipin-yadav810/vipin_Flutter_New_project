import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController{



  //late FetchupRepo _fetchupRepo;

  // ProfileController() {
  // _fetchupRepo = Get.find<FetchupRepoImpl>();
  //
  // }
  //var phoneNumber='8109520402';
  RxString phoneNumber=''.obs;
  RxString name = ''.obs;
  RxString emailId = ''.obs;
  RxString password = ''.obs;
  RxBool loader = true.obs;
  RxString id = ''.obs;

 // RxList<FetchupResponse> fetchDataList = <FetchupResponse>[].obs;

  @override
  void onInit() {
  // TODO: implement onInit
    fetchData();
  super.onInit();
  }

  // fetchData()async{
  // loader.value=true;
  // final response = await _fetchupRepo.fetchupAPI(phoneNumber);
  // if(response!=null){
  // fetchDataList.value = response;
  // print("Line Number 21");
  // print(response![0].id);
  // print(response![0].name);
  // print(response![0].emailId);
  // print(response![0].password);
  // print(response![0].phoneNumber);
  // id.value = response[0].id!;
  // name.value = response[0].name!;
  // emailId.value = response[0].emailId!;
  // password.value = response[0].password!;
  // phoneNumber = response[0].phoneNumber!;
  // loader.value = false;
  // }
  // }

  fetchData()async{
    //loader.value=true;
    final response = await SharedPreferences.getInstance();

    SharedPreferences prefs = await SharedPreferences.getInstance();

    password.value = prefs.getString("password")!;
    name.value= prefs.getString("name")!;
    emailId.value= prefs.getString("email")!;
    phoneNumber.value= prefs.getString("phone")!;
    id.value= prefs.getString("id")!;
    //loader.value=false;

    print("line numer 56");
    print(emailId);
    print(name);
    print(phoneNumber);

  }




  }



