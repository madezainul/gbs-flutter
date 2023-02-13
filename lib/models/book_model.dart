// import 'dart:convert';

// class BookModel {
//   int? id;
//   String? title;
//   int? price;
//   String? image;
//   String? desc;

//   BookModel({
//     this.id,
//     this.title,
//     this.price,
//     this.image,
//     this.desc,
//   });

//   factory BookModel.fromJson(Map<String, dynamic> map) {
//     return BookModel(
//       id: map["id"],
//       title: map["title"],
//       price: map["price"],
//       image: map["image"],
//       desc: map["desc"],
//     );

//     Map<String, dynamic> toJson() {
//       return {
//         "id": id,
//         "title": title,
//         "price": price,
//         "image": image,
//         "desc": desc,
//       };
//     }

//     @override
//     String toString() {
//       return 'BookModel{id: $id, title: $title, price: $price, image: $image, desc: $desc,}';
//     }
//   }

//   List<BookModel> BookModelFromJson(String jsonData) {
//     final data = json.decode(jsonData);
//     return List<BookModel>.from(data.map((item) => BookModel.fromJson(item)));
//   }

//   String BookModelToJson(BookModel data) {
//     final jsonData = data.toJson();
//     return json.encode(jsonData);
//   }
// }
