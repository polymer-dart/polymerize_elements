@JS('Polymer')
library Polymer.FirebaseCommonBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_network_status_behavior.dart' as imp0;

/**
 * 
 */

@BowerImport(ref:'polymerfire#v2.1.0',import:"polymerfire/firebase-common-behavior.html",name:'polymerfire')
@JS('FirebaseCommonBehavior')
abstract class FirebaseCommonBehavior implements imp0.AppNetworkStatusBehavior {
  /**
   * @type {!firebase.app.App|undefined}
   */
  external  get app;
  external set app( value);

  /**
   * 
   */
  external String get appName;
  external set appName(String value);


}

