@JS('Polymer')
library Polymer.IronMenuBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_multi_selectable.dart' as imp0;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp1;

/**
 * `Polymer.IronMenuBehavior` implements accessible menu behavior.
 */

@BowerImport(ref:'PolymerElements/iron-menu-behavior#v2.0.0',import:"iron-menu-behavior/iron-menu-behavior.html",name:'iron-menu-behavior')
@JS('IronMenuBehavior')
abstract class IronMenuBehavior implements imp0.IronMultiSelectableBehavior,imp1.IronA11yKeysBehavior {
  /**
   * Returns the currently focused item.
   * @type {?Object}
   */
  external  get focusedItem;
  external set focusedItem( value);

  /**
   * The attribute to use on menu items to look up the item title. Typing the first
   * letter of an item when the menu is open focuses that item. If unset, `textContent`
   * will be used.
   */
  external String get attrForItemTitle;
  external set attrForItemTitle(String value);

  /**
   * 
   */
  external bool get disabled;
  external set disabled(bool value);

  /**
   * 
   */
  external void attached();

  /**
   * Selects the given value. If the `multi` property is true, then the selected state of the
   * `value` will be toggled; otherwise the `value` will be selected.
   * @param {string|number} value the value to select.
   */
  external void select();

}

