import 'package:dio/dio.dart';

class DioHelper {
     late Dio dio=Dio(
       BaseOptions(
         baseUrl: 'https://fakestoreapi.com/',
         receiveDataWhenStatusError: true,
         connectTimeout: Duration(seconds: 30),
         receiveTimeout: Duration(seconds: 30),
       ),
     );

   // done

   Future<List> getAllProducts ({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',
    };


     try{
       Response response =await dio.get(
         url,
         queryParameters: query,
       );
       return response.data;
     }catch(e){
       print (e.toString());
       return [];
     }
  }

  //
     Future getProduct ({
       required String url,
       Map<String, dynamic>? query,
       String? token,
     }) async {
       dio.options.headers = {
         'Content-Type': 'application/json',
         'Authorization': token ?? '',
       };
       try{
         Response response =await dio.get(
           url,
           queryParameters: query,
         );
         return response.data;
       }catch(e){
         print (e.toString());
         return [];
       }
     }

     Future<List> getAllCategory({
       required String url,
       Map<String, dynamic>? query,
       String? token,
     }) async {
       dio.options.headers = {
         'Content-Type': 'application/json',
         'Authorization': token ?? '',
       };
       try{
         Response response =await dio.get(
           url,
           queryParameters: query,
         );
         print (response.data);
         return response.data;
       }catch(e){
         print (e.toString());
         return [];
       }
     }
     Future<List> getInCategory({
       required String url,
       Map<String, dynamic>? query,
       String? token,
     }) async {
       dio.options.headers = {
         'Content-Type': 'application/json',
         'Authorization': token ?? '',
       };
       try{
         Response response =await dio.get(
           url,
           queryParameters: query,
         );
         return response.data;
       }catch(e){
         print (e.toString());
         return [];
       }
     }






}
