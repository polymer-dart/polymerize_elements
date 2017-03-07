@JS('Polymer')
library Polymer.IronSelectableBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * ### Notable breaking changes between 1.x and 2.x (hybrid):
 * - IronSelectableBehavior no longer updates its list of items synchronously
 *   when it is connected to avoid triggering a situation introduced in the
 *   Custom Elements v1 spec that might cause custom element reactions to be
 *   called later than expected.
 *   If you are using an element with IronSelectableBehavior and ...
 *   1. are reading or writing properties of the element that depend on its
 *      items (`items`, `selectedItems`, etc.)
 *   1. are performing these accesses after the element is created or connected
 *     (attached) either **synchronously** or **after a timeout**
 *   ... you should wait for the element to dispatch an `iron-items-changed`
 *   event instead.
 * - `Polymer.dom.flush()` no longer triggers the observer used by
 *   IronSelectableBehavior to watch for changes to its items. You can call
 *   `forceSynchronousItemUpdate` instead or, preferably, listen for the
 *   `iron-items-changed` event.
 */

@BowerImport(ref:'PolymerElements/iron-selector#2.0-preview',import:"iron-selector/iron-selectable.html",name:'iron-selector')
@JS('IronSelectableBehavior')
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
  external String get attrForSelected;
  external set attrForSelected(String value);

  /**
   * Gets or sets the selected element. The default is to use the index of the item.
   * @type {string|number}
   */
  external String get selected;
  external set selected(String value);

  /**
   * Returns the currently selected item.
   * @type {?Object}
   */
  external  get selectedItem;
  external set selectedItem( value);

  /**
   * The event that fires from items when they are selected. Selectable
   * will listen for this event from items and update the selection state.
   * Set to empty string to listen to no events.
   */
  external String get activateEvent;
  external set activateEvent(String value);

  /**
   * The class to set on elements when selected.
   */
  external String get selectedClass;
  external set selectedClass(String value);

  /**
   * The attribute to set on elements when selected.
   */
  external String get selectedAttribute;
  external set selectedAttribute(String value);

  /**
   * Default fallback if the selection based on selected with `attrForSelected`
   * is not found.
   */
  external String get fallbackSelection;
  external set fallbackSelection(String value);

  /**
   * The list of items from which a selection can be made.
   */
  external List get items;
  external set items(List value);

  /**
   * 
   */
  external void created();

  /**
   * 
   */
  external void attached();

  /**
   * 
   */
  external void detached();

  /**
   * Returns the index of the given item.
   * @method indexOf
   * @param {Object} item
   * @returns Returns the index of the item
   */
  external void indexOf();

  /**
   * Selects the given value.
   * @method select
   * @param {string|number} value the value to select.
   */
  external void select();

  /**
   * Selects the previous item.
   * @method selectPrevious
   */
  external void selectPrevious();

  /**
   * Selects the next item.
   * @method selectNext
   */
  external void selectNext();

  /**
   * Selects the item at the given index.
   * @method selectIndex
   */
  external void selectIndex();

  /**
   * Force a synchronous update of the `items` property.
   * NOTE: Consider listening for the `iron-items-changed` event to respond to
   * updates to the set of selectable items after updates to the DOM list and
   * selection state have been made.
   * WARNING: If you are using this method, you should probably consider an
   * alternate approach. Synchronously querying for items is potentially
   * slow for many use cases. The `items` property will update asynchronously
   * on its own to reflect selectable items in the DOM.
   */
  external void forceSynchronousItemUpdate();

}

