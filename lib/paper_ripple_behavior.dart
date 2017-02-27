  @JS('Polymer')
  library Polymer.PaperRippleBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_elements/paper_ripple.dart' as imp0;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp1;

  /**
 * 
 * `Polymer.PaperRippleBehavior` dynamically implements a ripple
 * when the element has focus via pointer or keyboard.
 * NOTE: This behavior is intended to be used in conjunction with and after
 * `Polymer.IronButtonState` and `Polymer.IronControlState`.
 * 
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

}

