class Notificationmodel {
  const Notificationmodel({
    required this.id,
    required this.friends,
    required this.day,
    required this.text,
    required this.imageUrl,
  });
  final String id;
  final String friends;
  final String text;
  final String day;
  final String imageUrl;
}
