@JS('PolymerElements')
library Polymer.IronSelectableBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * 
 */

@BowerImport(ref:'PolymerElements/iron-selector#2.0-preview',import:"iron-selector/iron-selectable.html",name:'iron-selector')
abstract class IronSelectableBehavior  {
  /**
   * If you want to use an attribute value or property of an element for
   * `selected` instead of the index, set this to the name of the attribute
   * or property. Hyphenated values are converted to camel case when used to
   * look up the property of a selectable element. Camel cased values are
   * *not* converted to hyphenated values for attribute lookup. It's
   * recommended that you provide the hyphenated form of the name so that
   * selection works in both cases. (Use `attr-or-property-name` instead of
   * `attrOrPropertyName`.)
   */
  String get attrForSelected;
  set attrForSelected(String value);

  /**
   * Gets or sets the selected element. The default is to use the index of the item.
   * @type {string|number}
   */
  String get selected;
  set selected(String value);

  /**
   * Returns the currently selected item.
   * @type {?Object}
   */
   get selectedItem;
  set selectedItem( value);

  /**
   * The event that fires from items when they are selected. Selectable
   * will listen for this event from items and update the selection state.
   * Set to empty string to listen to no events.
   */
  String get activateEvent;
  set activateEvent(String value);

  /**
   * The class to set on elements when selected.
   */
  String get selectedClass;
  set selectedClass(String value);

  /**
   * The attribute to set on elements when selected.
   */
  String get selectedAttribute;
  set selectedAttribute(String value);

  /**
   * Default fallback if the selection based on selected with `attrForSelected`
   * is not found.
   */
  String get fallbackSelection;
  set fallbackSelection(String value);

  /**
   * The list of items from which a selection can be made.
   */
  List get items;
  set items(List value);

}

