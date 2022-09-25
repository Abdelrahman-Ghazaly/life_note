class Note {
  const Note({
    required this.title,
    required this.note,
    required this.date,
    this.catagory,
    this.tags,
  });

  final String title;
  final String note;
  final DateTime date;
  final String? catagory;
  final List<String>? tags;

  Note copyWith({
    String? title,
    String? note,
    DateTime? date,
    String? catagory,
    List<String>? tags,
  }) {
    return Note(
      title: title ?? this.title,
      note: note ?? this.note,
      date: date ?? this.date,
      catagory: catagory ?? this.catagory,
      tags: tags ?? this.tags,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'note': note,
      'date': date.millisecondsSinceEpoch,
      'catagory': catagory,
      'tags': tags,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'] ?? '',
      note: map['note'] ?? '',
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      catagory: map['catagory'] ?? '',
      tags: List<String>.from(map['tags']),
    );
  }

  @override
  String toString() {
    return 'title: $title\ndate: ${date.toString().replaceAll("00:00:00.000", "")}\ncatagory: $catagory\ntags: $tags\nnote: $note';
  }
}
