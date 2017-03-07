  @JS('Polymer')
  library Polymer.PaperRippleBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  

  /**
 * `Polymer.PaperRippleBehavior` dynamically implements a ripple
 * when the element has focus via pointer or keyboard.
 * NOTE: This behavior is intended to be used in conjunction with and after
 * `Polymer.IronButtonState` and `Polymer.IronControlState`.
 */

@BowerImport(ref:'PolymerElements/paper-behaviors#2.0-preview',import:"paper-behaviors/paper-ripple-behavior.html",name:'paper-behaviors')
@JS('PaperRippleBehavior')
abstract class PaperRippleBehavior  {
  /**
   * If true, the element will not produce a ripple effect when interacted
   * with via the pointer.
   */
  external bool get noink;
  external set noink(bool value);

  /**
   * Ensures this element contains a ripple effect. For startup efficiency
   * the ripple effect is dynamically on demand when needed.
   * @param {!Event=} optTriggeringEvent (optional) event that triggered the
   * ripple.
   */
  external void ensureRipple();

  /**
   * Returns the `<paper-ripple>` element used by this element to create
   * ripple effects. The element's ripple is created on demand, when
   * necessary, and calling this method will force the
   * ripple to be created.
   */
  external void getRipple();

  /**
   * Returns true if this element currently contains a ripple effect.
   * @return {boolean}
   */
  external void hasRipple();

}

