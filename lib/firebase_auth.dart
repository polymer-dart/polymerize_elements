@JS('Polymer')
library FirebaseAuth;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/firebase_common_behavior.dart' as imp0;

/**
 * `firebase-auth` is a wrapper around the Firebase authentication API. It notifies
 * successful authentication, provides user information, and handles different
 * types of authentication including anonymous, email / password, and several OAuth
 * workflows.
 * Example Usage:
 * ```html
 * <firebase-app auth-domain="polymerfire-test.firebaseapp.com"
 *   database-url="https://polymerfire-test.firebaseio.com/"
 *   api-key="AIzaSyDTP-eiQezleFsV2WddFBAhF_WEzx_8v_g">
 * </firebase-app>
 * <firebase-auth id="auth" user="{{user}}" provider="google" on-error="handleError">
 * </firebase-auth>
 * ```
 * The `firebase-app` element initializes `app` in `firebase-auth` (see
 * `firebase-app` documentation for more information), but an app name can simply
 * be specified at `firebase-auth`'s `app-name` property instead.
 * JavaScript sign-in calls can then be made to the `firebase-auth` object to
 * attempt authentication, e.g.:
 * ```javascript
 * this.$.auth.signInWithPopup()
 *     .then(function(response) {// optionally handle a successful login})
 *     .catch(function(error) {// unsuccessful authentication response here});
 * ```
 * This popup sign-in will then attempt to sign in using Google as an OAuth
 * provider since there was no provider argument specified and since `"google"` was
 * defined as the default provider.
 * The `user` property will automatically be populated if an active session is
 * available, so handling the resolved promise of sign-in methods is optional.
 * It's important to note that if you're using a Service Worker, and hosting on
 * Firebase, you should let urls that contain `/__/` go through to the network,
 * rather than have the Service Worker attempt to serve something from the cache.
 * The `__` namespace is reserved by Firebase and intercepting it will cause the
 * OAuth sign-in flow to break.
 * If you are self-deploying your app to some non-Firebase domain, this shouldn't
 * be a problem.
 */

@JS('FirebaseAuth')
@PolymerRegister('firebase-auth',native:true)
@BowerImport(ref:'polymerfire#v2.1.0',import:"polymerfire/firebase-auth.html",name:'polymerfire')
abstract class FirebaseAuth extends PolymerElement implements imp0.FirebaseCommonBehavior {
  /**
   * [`firebase.Auth`](https://firebase.google.com/docs/reference/js/firebase.auth.Auth) service interface.
   */
  external  get auth;
  external set auth( value);

  /**
   * Default auth provider OAuth flow to use when attempting provider
   * sign in. This property can remain undefined when attempting to sign
   * in anonymously, using email and password, or when specifying a
   * provider in the provider sign-in function calls (i.e.
   * `signInWithPopup` and `signInWithRedirect`).
   * Current accepted providers are:
   * ```
   * 'facebook'
   * 'github'
   * 'google'
   * 'twitter'
   * ```
   */
  external String get provider;
  external set provider(String value);

  /**
   * True if the client is authenticated, and false if the client is not
   * authenticated.
   */
  external bool get signedIn;
  external set signedIn(bool value);

  /**
   * The currently-authenticated user with user-related metadata. See
   * the [`firebase.User`](https://firebase.google.com/docs/reference/js/firebase.User)
   * documentation for the spec.
   */
  external  get user;
  external set user( value);

  /**
   * When true, login status can be determined by checking `user` property.
   */
  external bool get statusKnown;
  external set statusKnown(bool value);


  external signInWithPopup(String domain);
}
