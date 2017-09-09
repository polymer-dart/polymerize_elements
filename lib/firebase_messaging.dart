@JS('Polymer')
library FirebaseMessaging;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/firebase_common_behavior.dart' as imp0;
part 'firebase_messaging.polymerize.dart';
/**
 * `firebase-messaging` is a wrapper around the Firebase Cloud Messaging API. It
 * allows you to receive Web Push messages in your application, including when
 * your site isn't in an open tab.
 * Example Usage:
 * ```html
 * <firebase-messaging id="messaging"
 *   token="{{token}}"
 *   on-message="handleMessage">
 * </firebase-messaging>
 * ```
 * Before you can start receiving push messages, you'll need to request permission
 * to use notifications:
 * ```js
 * this.$.messaging.requestPermission().then(function() {
 *   // permission was granted
 * }, function(err) {
 *   // permission was denied
 * });
 * ```
 * You'll also need to persist your token somewhere that a server can access it so
 * you can actually send push messsages:
 * ```html
 * <firebase-messaging token="{{token}}"></firebase-messaging>
 * <firebase-document path="/users/[[user.uid]]/token" data="[[token]]"></firebase-document>
 * ```
 * You'll also need a [Web App Manifest](https://developer.mozilla.org/en-US/docs/Web/Manifest)
 * for your site. It must contain the following:
 * ```json
 * {
 *   "gcm_sender_id": "103953800507"
 * }
 * ```
 * **Note:** You must use the **exact line specified above**. Do *not* change the sender
 * id to your project's individual sender id.
 * Finally, Firebase Cloud Messaging requires a service worker to handle push messages.
 * The easiest way is using a service worker called `firebase-messaging-sw.js` in your
 * app's root directory. See [the FCM docs](https://firebase.google.com/docs/cloud-messaging/js/receive#handle_messages_when_your_web_app_is_in_the_foreground)
 * for more information.
 * To use a different service worker than the default, you will need to add the
 * `custom-sw` attribute to your `<firebase-messaging>` element, and then explicitly
 * call `.activate()` on the element once you've
 */

@JS('FirebaseMessaging')
@PolymerRegister('firebase-messaging',native:true)
@BowerImport(ref:'polymerfire#v2.1.0',import:"polymerfire/firebase-messaging.html",name:'polymerfire')
abstract class FirebaseMessaging extends PolymerElement implements imp0.FirebaseCommonBehavior {
  /**
   * The current registration token for this session. Save this
   * somewhere server-accessible so that you can target push messages
   * to this device.
   * @type {string|null}
   */
  external String get token;
  external set token(String value);

  /**
   * True when Firebase Cloud Messaging is successfully
   * registered and actively listening for messages.
   */
  external bool get active;
  external set active(bool value);

  /**
   * True after an attempt has been made to fetch a push
   * registration token, regardless of whether one was available.
   */
  external bool get statusKnown;
  external set statusKnown(bool value);

  /**
   * The most recent push message received. Generally in the format:
   *     {
   *       "from": "<sender_id>",
   *       "category": "",
   *       "collapse_key": "do_not_collapse",
   *       "data": {
   *         "...": "..."
   *       },
   *       "notification": {
   *         "...": "..."
   *       }
   *     }
   */
  external  get lastMessage;
  external set lastMessage( value);

  /**
   * When true, Firebase Messaging will not initialize until `activate()`
   * is called explicitly. This allows for custom service worker registration.
   */
  external bool get customSw;
  external set customSw(bool value);

  /**
   * True if the Push API is supported in the user's browser.
   */
  external bool get pushSupported;
  external set pushSupported(bool value);


}
