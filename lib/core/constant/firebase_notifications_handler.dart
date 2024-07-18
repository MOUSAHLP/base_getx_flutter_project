// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:miamed/bloc/post_bloc/post_bloc.dart';
// import 'package:miamed/core/app_router/app_router.dart';
// import 'package:miamed/core/services/services_locator.dart';
// import 'package:miamed/presentation/screens/vacation_screen/vacation_screen.dart';

// import '../bloc/post_bloc/post_event.dart';


// void notificationTapBackground(NotificationResponse notificationResponse) {
//   if (kDebugMode) {
//     print('notification(${notificationResponse.id}) action tapped: '
//         '${notificationResponse.actionId} with'
//         ' payload: ${notificationResponse.payload}');
//   }
//   if (notificationResponse.input?.isNotEmpty ?? false) {
//     if (kDebugMode) {
//       print(
//           'notification action tapped with input: ${notificationResponse.input}');
//     }
//   }
// }

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print("_firebaseMessagingBackgroundHandler");
//   // await Firebase.initializeApp();
// }

// class FirebaseNotificationsHandler {
//   static final FirebaseNotificationsHandler _firebase =
//       FirebaseNotificationsHandler._internal();
//  static bool isOpen=false;
//   static bool isRead=false;
//   factory FirebaseNotificationsHandler() {
//     return _firebase;
//   }
//   FirebaseNotificationsHandler._internal();
//   bool _requestToken = true;
//   RemoteMessage? newMessage;
//   BuildContext? context;
//   String idVacation="0";

//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   Future<String?> refreshFcmToken() async {
//     String? currentToken = await _firebaseMessaging.getToken();
//     if (kDebugMode) print('FCM Token: $currentToken');
//     return currentToken;
//   }

//   Future<void> init() async {
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//     const AndroidNotificationChannel channel = AndroidNotificationChannel(
//       'high_importance_channel',
//       'High Importance Notifications',
//       importance: Importance.max,
//     );
//     FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();

//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);

//     var android = const AndroidInitializationSettings(
//         '@drawable/ic_stat_ic_notification');
//     var ios = const DarwinInitializationSettings();
//     var platform = InitializationSettings(android: android, iOS: ios);
//     flutterLocalNotificationsPlugin.initialize(platform,
//         onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
//        onDidReceiveNotificationResponse: _onNotificationDialogClick
//     );

//     await _firebaseMessaging.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     _firebaseMessaging.requestPermission(sound: true, alert: true, badge: true);

//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       if (kDebugMode) {
//         print('OpenedApp');
//       }
//       sl<PostBloc>().add(NoReadNotification());
//       newMessage = message;
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null) {
//         flutterLocalNotificationsPlugin
//             .show(
//                 notification.hashCode,
//                 notification.title,
//                 notification.body,
//                 NotificationDetails(
//                   android: AndroidNotificationDetails(
//                     channel.id,
//                     channel.name,
//                     // icon: android!.smallIcon,
//                     showWhen: true,
// //                    color: ColorManager.primaryColor,
//                   ),
//                 ))
//             .catchError((onError) {
//           if (kDebugMode) {
//             print('from LOCAL: ${onError}');
//           }
//         });
//       }
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {

//       if (kDebugMode) {
//         print('background not terminated');
//       }
//       processMessage(message);
//     });

//     FirebaseMessaging.instance
//         .getInitialMessage()
//         .then((RemoteMessage? message) {
//       if (kDebugMode) {
//         print("FirebaseMessaging.getInitialMessage");
//       }

//       if (message != null) {
//        // isRead=true;
//         if(message.data['type']=="vacations") {
//           isOpen=true;

//           idVacation=message.data['vacation_id'];
//         }

//       }
//     });

//     // for iOS only
//     _firebaseMessaging.requestPermission(
//       alert: true,
//       announcement: true,
//       badge: true,
//       carPlay: true,
//       criticalAlert: true,
//       provisional: true,
//       sound: true,
//     );

//     _firebaseMessaging.getToken().then((token) {
//       if (kDebugMode) print('FCM Token: $token');
//       _registerToken(token!);
//     });

//     _firebaseMessaging.onTokenRefresh.listen(_registerToken);
//   }

//   void _registerToken(String token) {
//     if (_requestToken) {
//       _requestToken = false;
//       // ApiClient client = PaprikaApiClient();
//       // NotificationsApi api = NotificationsApi(client);
//       // api
//       //     .apiServicesAppNotificationsRegisterFirebaseNotificationsPost(
//       //         token: token)
//       //     .then((_) {
//       //   _requestToken = true;
//       // }).catchError((error) {
//       //   _requestToken = true;
//       // });
//     }
//   }

//   void processMessage(RemoteMessage? model) {
//     sl<PostBloc>().add(NoReadNotification());
//     print("processMessage");
//  //   isRead=true;
//     if(model?.data['type']=="vacations"){
//       idVacation=model?.data['vacation_id'];
//       AppRouter.push(context!, VacationScreen());
//     }
//     // if (model == null) return;
//     // final data = model.data["Model"];
//     // int type;
//     // try {
//     //   type = int.parse(model.data['NotificationName'] as String);
//     // } catch (e) {
//     //   return;
//     // }

//     // switch (type) {
//     //   case NotificationType.reservationApprovedInt:
//     //     Get.to(ReservationsScreen());
//     //     break;
//     //
//     //   case NotificationType.newRestaurantAddedInt:
//     //     final int? restId =
//     //     (json.decode(data as String))["RestaurantId"] as int?;
//     //     if (restId != null && restId > 0) {
//     //       navigationController.toRestaurantScreen(restaurantId: restId);
//     //     }
//     //     break;
//     // }
//   }

//   Future<dynamic> _onNotificationDialogClick(NotificationResponse? message) {
//     if (newMessage != null) {
//       processMessage(newMessage);
//       return Future<dynamic>.value();
//     } else {
//       return Future<dynamic>.value();
//     }
//   }

// }
