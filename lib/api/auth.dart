import 'dart:convert';
import 'package:e_mart/Auth_screen/login_screen.dart';
import 'package:e_mart/Const/consts.dart';
import 'package:e_mart/HomeScreen/Home_screen.dart';
import 'package:e_mart/HomeScreen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../common _widget/error.dart';
class authApi extends GetxController {

  RxBool ischeck = false.obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController altphnController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController loginnameController = TextEditingController();
  TextEditingController loginpassController = TextEditingController();

  final userdata = GetStorage();


  Future<void> Signup() async {
    const String apiUrl = "http://192.168.1.11/fynkoop/insert.php";
    final String name = nameController.text;
    final String phone = phoneController.text;
    final String altphn = altphnController.text;
    final String address = addressController.text;
    final String city = cityController.text;
    final String state = stateController.text;
    final String password = passwordcontroller.text;


    Map<String, dynamic> sendData = {
      'name': name,
      'phone': phone,
      'altphn': altphn,
      'address': address,
      'city': city,
      'state': state,
      'password': password,
      'table': 'b2b_signup'
    };
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: jsonEncode(sendData),
      );
      if (response.statusCode == 201) {
        final Map<String, dynamic> data = json.decode(response.body);
        // print(response.body);
        if (data['message'] == 'Record Inserted') {
          Get.to(LoginScreen());
          nameController.clear();
          passwordcontroller.clear();
          phoneController.clear();
          altphnController.clear();
          addressController.clear();
          cityController.clear();
          stateController.clear();
          showMessage(content: "Please login to continue",
              title: "Sign_Up Successfull");
        }
      } else {
        showMessage(content: "x", title: "Enter Valid details");
        print("please fill all the fields");
        print("Failed to log in. Status code: ${response.statusCode}");
      }
    } catch (e) {
      // Handle exception
      print("Exception during login: $e");
    }
  }

  Future<void> login() async {
    final String username = loginnameController.text.trim();
    final String password = loginpassController.text.trim();

    // Replace 'your_login_api_url' with your actual login API endpoint
    const String apiUrl = 'http://192.168.1.11/fynkoop/login.php';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body:
            {
              'name': username,
              'password':password
            }
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body.toString());
        print(responseData);
        if(responseData['status'] == 'success'){
          userdata.write("email", phoneController.text);
          userdata.write("username",username);
          userdata.write("isloged", true);
          loginpassController.clear();
           loginnameController.clear();
           Get.off(Home());
          print(responseData);
          Get.snackbar("success!","Login Success",icon: Icon(Icons.run_circle,color: Colors.blue),);
        }
      }
      else {
        final Map<String, dynamic> responseData = json.decode(response.body);
        print(responseData);
        final String errorMessage = responseData['message'];
        Get.snackbar("error!", errorMessage,icon: Icon(Icons.warning_amber,color: Colors.yellow,),);
      }
    } catch (e) {
      showMessage(content: "X",
          title: "Enter valid details");
      loginpassController.clear();
      loginnameController.clear();
      // Handle other errors, such as network errors
      print('Error: $e');
    }
  }
}
