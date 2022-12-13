// // import 'package:mvc_pattern/mvc_pattern.dart';
// //
// // import '../../Models/notifications_model.dart';
// //
// // class NotificationController extends ControllerMVC {
// //   factory NotificationController() {
// //     _this ??= NotificationController._();
// //     return _this!;
// //   }
// //
// //   static NotificationController? _this;
// //
// //   NotificationController._();
// //
// //   bool loading = false;
// //
// //   NotificationModel? notificationList = NotificationModel();
// //
// //   Future getAllNotifications() async {
// //     loading = true;
// //     setState(() {});
// //     // notificationList = await NotificationAPI.getAllNotifications();
// //     await Future.delayed(const Duration(seconds: 1));
// //     notificationList = NotificationModel(
// //       notifications: Notifications(
// //         data: [
// //           Notification(
// //             id: 0,
// //             category: 'طلبات المنزل',
// //             contents: 'محتويات das wqdsا تاتتتلب',
// //             createdAt: DateTime.now(),
// //             seen: '0',
// //           ),
// //           Notification(
// //             id: 1,
// //             category: 'طلبات الجيم',
// //             contents: 'تم إضافة تعليق وإعجات على تعليق من قبل خالد محمد',
// //             createdAt: DateTime.now(),
// //             seen: '1',
// //           ),
// //           Notification(
// //             id: 1,
// //             category: 'طلبات الجيم',
// //             contents: 'محتوياتر نمبسي اتاتتتلب',
// //             createdAt: DateTime.now(),
// //             seen: '1',
// //           ),
// //           Notification(
// //             id: 0,
// //             category: 'طلبات المنزل',
// //             contents: 'محتوياتاتاتتتلب',
// //             createdAt: DateTime.now(),
// //             seen: '0',
// //           ),
// //         ],
// //       ),
// //     );
// //
// //     loading = false;
// //
// //     setState(() {});
// //   }
// // }
//
// import 'package:delivery_elsala_aliqtisadya_app/API/notifications_api.dart';
// import 'package:delivery_elsala_aliqtisadya_app/Models/notifications_model.dart';
// import 'package:mvc_pattern/mvc_pattern.dart';
//
// class NotificationController extends ControllerMVC {
//   factory NotificationController() {
//     _this ??= NotificationController._();
//     return _this!;
//   }
//
//   static NotificationController? _this;
//
//   NotificationController._();
//
//   bool loading = false, notificationsArRead = false, isRead = false;
//
//   Notifications? notificationList = Notifications();
//
//   Future getAllNotifications() async {
//     loading = true;
//     setState(() {});
//     notificationList = await NotificationAPI.getAllNotifications();
//     loading = false;
//     setState(() {});
//   }
//
//   Future markAllNotificationsRead() async {
//     loading = true;
//     setState(() {});
//     notificationsArRead = await NotificationAPI.markAllNotificationsRead();
//     loading = false;
//     setState(() {});
//   }
//
//   Future markNotificationIsRead(int id) async {
//     loading = true;
//     setState(() {});
//     isRead = await NotificationAPI.markNotificationIsRead(id).whenComplete(() {
//       getAllNotifications();
//       setState(() {});
//     });
//     // notificationsArRead = await NotificationAPI.markAllNotificationsRead();
//
//     loading = false;
//     setState(() {});
//   }
// }
