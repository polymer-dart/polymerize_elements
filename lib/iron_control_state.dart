  @JS('Polymer')
  library Polymer.IronControlState;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  

  /**
 * 
 */

@BowerImport(ref:'PolymerElements/iron-behaviors#2.0-preview',import:"iron-behaviors/iron-control-state.html",name:'iron-behaviors')
@JS('IronControlState')
abstract class IronControlState  {
  /**
   * If true, the element currently has focus.
   */
  external bool get focused;
  external set focused(bool value);

  /**
   * If true, the user cannot interact with this element.
   */
  external bool get disabled;
  external set disabled(bool value);

  /**
   * 
   */
  external void ready();

}

