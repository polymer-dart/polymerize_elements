@JS('Polymer')
library Polymer.PlatinumSwRegisterableBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * `Polymer.PlatinumSwRegisterableBehavior` fires un/registration events which
 * are handled by `platinum-sw-register`. Also provides abstract methods for
 * each platinum-sw registerable element.
 */

@BowerImport(ref:'PolymerElements/platinum-sw#2.0-preview',import:"platinum-sw/platinum-sw-registerable-behavior.html",name:'platinum-sw')
@JS('PlatinumSwRegisterableBehavior')
abstract class PlatinumSwRegisterableBehavior  {

  /**
   * Fired when the element is detached.
   * @event platinum-sw-unregister
   */
  external void attached();

  /**
   * 
   */
  external void detached();

}

