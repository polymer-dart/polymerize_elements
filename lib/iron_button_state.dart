@JS('PolymerElements')
library Polymer.IronButtonState;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp0;

/**
 * 
 * 
 */

@BowerImport(ref:'PolymerElements/iron-behaviors#2.0-preview',import:"iron-behaviors/iron-button-state.html",name:'Polymer.IronButtonState')
abstract class IronButtonState implements imp0.IronA11yKeysBehavior {
  /**
   * If true, the user is currently holding down the button.
   */
  bool get pressed;
  set pressed(bool value);

  /**
   * If true, the button toggles the active state with each tap or press
   * of the spacebar.
   */
  bool get toggles;
  set toggles(bool value);

  /**
   * If true, the button is a toggle and is currently in the active state.
   */
  bool get active;
  set active(bool value);

  /**
   * True if the element is currently being pressed by a "pointer," which
   * is loosely defined as mouse or touch input (but specifically excluding
   * keyboard input).
   */
  bool get pointerDown;
  set pointerDown(bool value);

  /**
   * True if the input device that caused the element to receive focus
   * was a keyboard.
   */
  bool get receivedFocusFromKeyboard;
  set receivedFocusFromKeyboard(bool value);

  /**
   * The aria attribute to be set if the button is a toggle and in the
   * active state.
   */
  String get ariaActiveAttribute;
  set ariaActiveAttribute(String value);

}

