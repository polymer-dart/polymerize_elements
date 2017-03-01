  @JS('Polymer')
  library Polymer.IronButtonState;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_element/polymer_element.dart' as imp0;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp1;
import 'package:polymer_elements/iron_control_state.dart' as imp2;

  /**
 * 
 * 
 */

@BowerImport(ref:'PolymerElements/iron-behaviors#2.0-preview',import:"iron-behaviors/iron-button-state.html",name:'iron-behaviors')
@JS('IronButtonState')
abstract class IronButtonState implements imp1.IronA11yKeysBehavior {
  /**
   * If true, the user is currently holding down the button.
   */
  external bool get pressed;
  external set pressed(bool value);

  /**
   * If true, the button toggles the active state with each tap or press
   * of the spacebar.
   */
  external bool get toggles;
  external set toggles(bool value);

  /**
   * If true, the button is a toggle and is currently in the active state.
   */
  external bool get active;
  external set active(bool value);

  /**
   * True if the element is currently being pressed by a "pointer," which
   * is loosely defined as mouse or touch input (but specifically excluding
   * keyboard input).
   */
  external bool get pointerDown;
  external set pointerDown(bool value);

  /**
   * True if the input device that caused the element to receive focus
   * was a keyboard.
   */
  external bool get receivedFocusFromKeyboard;
  external set receivedFocusFromKeyboard(bool value);

  /**
   * The aria attribute to be set if the button is a toggle and in the
   * active state.
   */
  external String get ariaActiveAttribute;
  external set ariaActiveAttribute(String value);

}

