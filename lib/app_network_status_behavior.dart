@JS('Polymer')
library Polymer.AppNetworkStatusBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * `Polymer.AppNetworkStatusBehavior` tracks the status of whether the browser
 * is online or offline. True if the browser is online, and false if the browser is
 * offline matching the HTML browser state spec.
 */

@BowerImport(ref:'PolymerElements/app-storage#v2.0.0',import:"app-storage/app-network-status-behavior.html",name:'app-storage')
@JS('AppNetworkStatusBehavior')
abstract class AppNetworkStatusBehavior  {
  /**
   * True if the browser is online, and false if the browser is offline
   * matching the HTML browser state spec.
   * @type {Boolean}
   */
  external bool get online;
  external set online(bool value);

  /**
   * 
   */
  external void attached();

  /**
   * 
   */
  external void detached();

  /**
   * Updates the `online` property to reflect the browser connection status.
   */
  external void refreshNetworkStatus();

}

