class NotificationModel {
  final String? title;
  final dynamic icon;
  final String? leading;
  final String? condition;
  final String? time;
  NotificationModel(
    this.icon,
    this.leading,
    this.time,
    this.title,
    this.condition,
  );
}
