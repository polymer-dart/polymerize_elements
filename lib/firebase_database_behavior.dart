@JS('Polymer')
library Polymer.FirebaseDatabaseBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_storage_behavior.dart' as imp0;
import 'package:polymer_elements/firebase_common_behavior.dart' as imp1;

/**
 * 
 */

@BowerImport(ref:'polymerfire#v2.1.0',import:"polymerfire/firebase-database-behavior.html",name:'polymerfire')
@JS('FirebaseDatabaseBehavior')
abstract class FirebaseDatabaseBehavior implements imp0.AppStorageBehavior,imp1.FirebaseCommonBehavior {
  /**
   * 
   */
  external  get db;
  external set db( value);

  /**
   * 
   */
  external  get ref;
  external set ref( value);

  /**
   * Path to a Firebase root or endpoint. N.B. `path` is case sensitive.
   * @type {string|null}
   */
  external String get path;
  external set path(String value);

  /**
   * When true, Firebase listeners won't be activated. This can be useful
   * in situations where elements are loaded into the DOM before they're
   * ready to be activated (e.g. navigation, initialization scenarios).
   */
  external bool get disabled;
  external set disabled(bool value);


}

