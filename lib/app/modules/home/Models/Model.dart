class Model {
    int userId;
    int id;
    String title;
    bool completed;

    Model({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    factory Model.fromJson(Map<String, dynamic> json) => Model(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}