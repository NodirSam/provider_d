// class Post {
//   int userId;
//   int id;
//   String title;
//   String body;
//
//   Post({required this.userId, required this.id, required this.title, required this.body});
//
//   Post.fromJson(Map<String, dynamic> json)
//       : id = json['id'],
//         title = json['title'],
//         body = json['body'],
//         userId = json['userId'];
//
//   Map<String, dynamic> toJson() => {
//     'userId' : userId,
//     'id' : id,
//     'title' : title,
//     'body' : body
//   };
// }
class Post {
  int? id;
  String? title;
  String? body;
  int? userId;

  Post({this.id, this.title, this.body, this.userId,} );

  Post.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        body = json["body"],
        userId = json["userId"];

  Map<String, dynamic> toJson() => {
    "id" : id,
    "body" : body,
    "title" : title,
    "userId" : userId,
  };
}