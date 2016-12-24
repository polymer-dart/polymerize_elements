@JS('PolymerElements')
library Polymer.IronControlState;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';


/**
 * 
 * 
 */

@BowerImport(ref:'PolymerElements/iron-behaviors#2.0-preview',import:"iron-behaviors/iron-control-state.html",name:'iron-behaviors')
abstract class IronControlState  {
  /**
   * If true, the element currently has focus.
   */
  bool get focused;
  set focused(bool value);

  /**
   * If true, the user cannot interact with this element.
   */
  bool get disabled;
  set disabled(bool value);

}

