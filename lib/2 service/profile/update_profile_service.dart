// ignore_for_file: avoid_print

import 'dart:async';
import 'package:cargo_sync_driver/1%20model/profile/update_profile_model.dart';
import 'package:cargo_sync_driver/2%20service/base%20service/base_service.dart';
import 'package:cargo_sync_driver/7%20constants/urls.dart';
import 'package:shared_preferences/shared_preferences.dart'; // For accessing SharedPreferences

class UpdateProfileService extends BaseApiProvider {
  // Method to update user profile
  Future<dynamic> updateUserProfile(UpdateProfileModel updateprofile) async {
    var body = updateprofile.toJson();
    try {
      // Retrieve the userId from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final userId =
          prefs.getString('userid'); // Assuming userId is saved as a string

      if (userId == null) {
        throw Exception('User ID not found');
      }

      final response = await patchRequest(
          Uri.parse(
            "${UrlConstant.uatUrl}${UrlConstant.profile}${UrlConstant.updateprofile}/$userId",
          ),
          body);
      // You can handle the response here according to your requirements
      return response;
    } catch (e) {
      // Handle errors like network issues or other exceptions
      print('Error in updating profile: $e');
      rethrow; // Rethrow the error to be handled at the caller level if needed
    }
  }

  // Method to update user profile
  Future<dynamic> viewUserProfile() async {
    try {
      // Retrieve the userId from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final userId =
          prefs.getString('userid'); // Assuming userId is saved as a string

      if (userId == null) {
        throw Exception('User ID not found');
      }

      final uri = Uri.parse(
        "${UrlConstant.uatUrl}${UrlConstant.profile}${UrlConstant.viewprofile}/$userId",
      );
      final response = await getRequest(Uri.parse(
        uri.toString(),
      ));
      print("UPDATE PROFILE REQUEST CALLED-------");
      print(uri);
      // You can handle the response here according to your requirements
      return response;
    } catch (e) {
      // Handle errors like network issues or other exceptions
      print('Error in viewing profile: $e');
      rethrow; // Rethrow the error to be handled at the caller level if needed
    }
  }
}
