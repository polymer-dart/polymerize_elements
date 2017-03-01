  @JS('Polymer')
  library Polymer.IronMultiSelectableBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_element/polymer_element.dart' as imp0;
import 'package:polymer_elements/iron_selectable.dart' as imp1;

  /**
 * 
 */

@BowerImport(ref:'PolymerElements/iron-selector#2.0-preview',import:"iron-selector/iron-multi-selectable.html",name:'iron-selector')
@JS('IronMultiSelectableBehavior')
abstract class IronMultiSelectableBehavior implements imp1.IronSelectableBehavior {
  /**
   * If true, multiple selections are allowed.
   */
  external bool get multi;
  external set multi(bool value);

  /**
   * Gets or sets the selected elements. This is used instead of `selected` when `multi`
   * is true.
   */
  external List get selectedValues;
  external set selectedValues(List value);

  /**
   * Returns an array of currently selected items.
   */
  external List get selectedItems;
  external set selectedItems(List value);

}

