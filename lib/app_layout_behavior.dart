  @JS('Polymer')
  library Polymer.AppLayoutBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_elements/iron_resizable_behavior.dart' as imp0;

  /**
 * 
 */

@BowerImport(ref:'PolymerElements/app-layout#2.0-preview',import:"app-layout/app-layout-behavior/app-layout-behavior.html",name:'app-layout')
@JS('AppLayoutBehavior')
abstract class AppLayoutBehavior implements imp0.IronResizableBehavior {

  /**
   * 
   */
  external void attached();

  /**
   * Resets the layout. If you changed the size of this element via CSS
   * you can notify the changes by either firing the `iron-resize` event
   * or calling `resetLayout` directly.
   * @method resetLayout
   */
  external void resetLayout();

}

