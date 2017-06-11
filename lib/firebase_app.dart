@JS('Polymer')
library FirebaseApp;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * The firebase-app element is used for initializing and configuring your
 * connection to firebase. It is permanently initialized once attached and
 * should not be dynamically bound.
 */

@JS('FirebaseApp')
@PolymerRegister('firebase-app',native:true)
@BowerImport(ref:'polymerfire#v2.1.0',import:"polymerfire/firebase-app.html",name:'polymerfire')
abstract class FirebaseApp extends PolymerElement  {
  /**
   * The name of your app. Optional.
   * You can use this with the `appName` property of other Polymerfire elements
   * in order to use multiple firebase configurations on a page at once.
   * In that case the name is used as a key to lookup the configuration.
   */
  external String get name;
  external set name(String value);

  /**
   * Your API key.
   * Get this from the Auth > Web Setup panel of the new
   * Firebase Console at https://console.firebase.google.com
   * It looks like this: 'AIzaSyDTP-eiQezleFsV2WddFBAhF_WEzx_8v_g'
   */
  external String get apiKey;
  external set apiKey(String value);

  /**
   * The domain name to authenticate with.
   * The same as your Firebase Hosting subdomain or custom domain.
   * Available on the Firebase Console.
   * For example: 'polymerfire-test.firebaseapp.com'
   */
  external String get authDomain;
  external set authDomain(String value);

  /**
   * The URL of your Firebase Realtime Database. You can find this
   * URL in the Database panel of the Firebase Console.
   * Available on the Firebase Console.
   * For example: 'https://polymerfire-test.firebaseio.com/'
   */
  external String get databaseUrl;
  external set databaseUrl(String value);

  /**
   * The Firebase Storage bucket for your project. You can find this
   * in the Firebase Console under "Web Setup".
   * For example: `polymerfire-test.appspot.com`
   */
  external String get storageBucket;
  external set storageBucket(String value);

  /**
   * The Firebase Cloud Messaging Sender ID for your project. You can find
   * this in the Firebase Console under "Web Setup".
   */
  external String get messagingSenderId;
  external set messagingSenderId(String value);

  /**
   * The Firebase app object constructed from the other fields of
   * this element.
   * @type {firebase.app.App}
   */
  external  get app;
  external set app( value);


}
