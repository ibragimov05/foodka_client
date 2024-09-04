// class AuthDioService {
//   Future<User> _authenticate({
//     required String email,
//     required String password,
//     required String query,
//   }) async {
//     String url =
//         "https://identitytoolkit.googleapis.com/v1/accounts:$query?key=AIzaSyBETfX8XDGAJBdBzkRZY68vBBeIYO0HWT0";
//
//     try {
//       final response = await _dio.post(
//         url,
//         data: {
//           "email": email,
//           "password": password,
//           "returnSecureToken": true,
//         },
//       );
//
//       if (response.statusCode == 200) {
//         final data = response.data;
//         final user = User.fromJson(data);
//         _saveUserData(user);
//         return user;
//       }
//
//       throw (response.data['error ']['message']);
//     } on DioException catch (e) {
//       if (e.response != null) {
//         throw (e.response?.data['error']['message'] ?? 'An error occurred');
//       } else {
//         throw ('An error occurred: ${e.message}');
//       }
//     }
//   }
//
//   Future<User> register({
//     required String email,
//     required String password,
//   }) async =>
//       await _authenticate(
//         email: email,
//         password: password,
//         query: "signUp",
//       );
//
//   Future<User> login({
//     required String email,
//     required String password,
//   }) async =>
//       await _authenticate(
//         email: email,
//         password: password,
//         query: "signInWithPassword",
//       );
// }