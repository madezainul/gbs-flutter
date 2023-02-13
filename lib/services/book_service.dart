// import 'package:gbs/models/book_model.dart';
// import 'package:http/http.dart' as http;

// class BookService {
//   String baseUrl = 'http://localhost:3000/api';

//   Future<List<BookModel>> getBooks() async {
//     var url = '$baseUrl/books';
//     var headers = {'Content-Type': 'application/json'};

//     var response = await http.get(url, headers: headers);

//     print(response.body);

//     if (response.statusCode == 200) {
//       List book = jsonDecode(response.body)['data'];
//       List<BookModel> books = [];
//     }
//   }
// }
