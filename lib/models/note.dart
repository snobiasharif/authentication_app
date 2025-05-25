class Note {
  String? id;
  final String title;
  final String content;
  final DateTime createdAt;
  final String userId;

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.userId,
  });

  factory Note.fromMap(Map<String, dynamic> map, String id) {
    return Note(
      id: id,
      title: map['title'],
      content: map['content'],
      createdAt: map['createdAt'].toDate(),
      userId: map['userId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'createdAt': createdAt,
      'userId': userId,
    };
  }
}