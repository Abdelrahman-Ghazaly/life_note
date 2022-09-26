class Diary {
  const Diary({
    required this.note,
    required this.date,
    this.catagory,
    this.tags,
  });
  final String note;
  final DateTime date;
  final String? catagory;
  final List<String>? tags;

  Diary copyWith({
    String? note,
    DateTime? date,
    String? catagory,
    List<String>? tags,
  }) {
    return Diary(
      note: note ?? this.note,
      date: date ?? this.date,
      catagory: catagory ?? this.catagory,
      tags: tags ?? this.tags,
    );
  }

  @override
  String toString() {
    return 'date: ${date.toString().replaceAll("00:00:00.000", "")}\ncatagory: $catagory\ntags: $tags\nnote: $note';
  }

  Map<String, dynamic> toMap() {
    return {
      'note': note,
      'date': date.millisecondsSinceEpoch,
      'catagory': catagory,
      'tags': tags,
    };
  }

  factory Diary.fromMap(Map<String, dynamic> map) {
    return Diary(
      note: map['note'] ?? '',
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      catagory: map['catagory'],
      tags: List<String>.from(map['tags']),
    );
  }
}
