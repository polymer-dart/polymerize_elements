@JS('PolymerElements')
library Polymer.PaperRippleBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';


/**
 * 
 * `Polymer.PaperRippleBehavior` dynamically implements a ripple
 * when the element has focus via pointer or keyboard.
 * NOTE: This behavior is intended to be used in conjunction with and after
 * `Polymer.IronButtonState` and `Polymer.IronControlState`.
 * 
 */

@BowerImport(ref:'PolymerElements/paper-behaviors#2.0-preview',import:"paper-behaviors/paper-ripple-behavior.html",name:'Polymer.PaperRippleBehavior')
abstract class PaperRippleBehavior  {
  /**
   * If true, the element will not produce a ripple effect when interacted
   * with via the pointer.
   */
  bool get noink;
  set noink(bool value);

}

