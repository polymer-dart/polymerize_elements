@JS('PolymerElements')
library Polymer.IronMultiSelectableBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_selectable.dart' as imp0;

/**
 * 
 */

@BowerImport(ref:'PolymerElements/iron-selector#2.0-preview',import:"iron-selector/iron-multi-selectable.html",name:'Polymer.IronMultiSelectableBehavior')
abstract class IronMultiSelectableBehavior implements imp0.IronSelectableBehavior {
  /**
   * If true, multiple selections are allowed.
   */
  bool get multi;
  set multi(bool value);

  /**
   * Gets or sets the selected elements. This is used instead of `selected` when `multi`
   * is true.
   */
  List get selectedValues;
  set selectedValues(List value);

  /**
   * Returns an array of currently selected items.
   */
  List get selectedItems;
  set selectedItems(List value);

}

