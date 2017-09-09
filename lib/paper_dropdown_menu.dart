@JS('Polymer')
library PaperDropdownMenu;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_button_state.dart' as imp0;
import 'package:polymer_elements/iron_control_state.dart' as imp1;
import 'package:polymer_elements/iron_form_element_behavior.dart' as imp2;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp3;
part 'paper_dropdown_menu.polymerize.dart';
/**
 * Material design: [Dropdown menus](https://www.google.com/design/spec/components/buttons.html#buttons-dropdown-buttons)
 * `paper-dropdown-menu` is similar to a native browser select element.
 * `paper-dropdown-menu` works with selectable content. The currently selected
 * item is displayed in the control. If no item is selected, the `label` is
 * displayed instead.
 * Example:
 *     <paper-dropdown-menu label="Your favourite pastry">
 *       <paper-listbox slot="dropdown-content">
 *         <paper-item>Croissant</paper-item>
 *         <paper-item>Donut</paper-item>
 *         <paper-item>Financier</paper-item>
 *         <paper-item>Madeleine</paper-item>
 *       </paper-listbox>
 *     </paper-dropdown-menu>
 * This example renders a dropdown menu with 4 options.
 * The child element with the slot `dropdown-content` is used as the dropdown
 * menu. This can be a [`paper-listbox`](paper-listbox), or any other or
 * element that acts like an [`iron-selector`](iron-selector).
 * Specifically, the menu child must fire an
 * [`iron-select`](iron-selector#event-iron-select) event when one of its
 * children is selected, and an [`iron-deselect`](iron-selector#event-iron-deselect)
 * event when a child is deselected. The selected or deselected item must
 * be passed as the event's `detail.item` property.
 * Applications can listen for the `iron-select` and `iron-deselect` events
 * to react when options are selected and deselected.
 * ### Styling
 * The following custom properties and mixins are also available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-dropdown-menu` | A mixin that is applied to the element host | `{}`
 * `--paper-dropdown-menu-disabled` | A mixin that is applied to the element host when disabled | `{}`
 * `--paper-dropdown-menu-ripple` | A mixin that is applied to the internal ripple | `{}`
 * `--paper-dropdown-menu-button` | A mixin that is applied to the internal menu button | `{}`
 * `--paper-dropdown-menu-input` | A mixin that is applied to the internal paper input | `{}`
 * `--paper-dropdown-menu-icon` | A mixin that is applied to the internal icon | `{}`
 * You can also use any of the `paper-input-container` and `paper-menu-button`
 * style mixins and custom properties to style the internal input and menu button
 * respectively.
 * @group Paper Elements
 * @element paper-dropdown-menu
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperDropdownMenu')
@PolymerRegister('paper-dropdown-menu',native:true)
@BowerImport(ref:'PolymerElements/paper-dropdown-menu#v2.0.0',import:"paper-dropdown-menu/paper-dropdown-menu.html",name:'paper-dropdown-menu')
abstract class PaperDropdownMenu extends PolymerElement implements imp0.IronButtonState,imp1.IronControlState,imp2.IronFormElementBehavior,imp3.IronValidatableBehavior {
  /**
   * The derived "label" of the currently selected item. This value
   * is the `label` property on the selected item if set, or else the
   * trimmed text content of the selected item.
   */
  external String get selectedItemLabel;
  external set selectedItemLabel(String value);

  /**
   * The last selected item. An item is selected if the dropdown menu has
   * a child with slot `dropdown-content`, and that child triggers an
   * `iron-select` event with the selected `item` in the `detail`.
   * @type {?Object}
   */
  external  get selectedItem;
  external set selectedItem( value);

  /**
   * The value for this element that will be used when submitting in
   * a form. It is read only, and will always have the same value
   * as `selectedItemLabel`.
   */
  external String get value;
  external set value(String value);

  /**
   * The label for the dropdown.
   */
  external String get label;
  external set label(String value);

  /**
   * The placeholder for the dropdown.
   */
  external String get placeholder;
  external set placeholder(String value);

  /**
   * The error message to display when invalid.
   */
  external String get errorMessage;
  external set errorMessage(String value);

  /**
   * True if the dropdown is open. Otherwise, false.
   */
  external bool get opened;
  external set opened(bool value);

  /**
   * By default, the dropdown will constrain scrolling on the page
   * to itself when opened.
   * Set to true in order to prevent scroll from being constrained
   * to the dropdown when it opens.
   */
  external bool get allowOutsideScroll;
  external set allowOutsideScroll(bool value);

  /**
   * Set to true to disable the floating label. Bind this to the
   * `<paper-input-container>`'s `noLabelFloat` property.
   */
  external bool get noLabelFloat;
  external set noLabelFloat(bool value);

  /**
   * Set to true to always float the label. Bind this to the
   * `<paper-input-container>`'s `alwaysFloatLabel` property.
   */
  external bool get alwaysFloatLabel;
  external set alwaysFloatLabel(bool value);

  /**
   * Set to true to disable animations when opening and closing the
   * dropdown.
   */
  external bool get noAnimations;
  external set noAnimations(bool value);

  /**
   * The orientation against which to align the menu dropdown
   * horizontally relative to the dropdown trigger.
   */
  external String get horizontalAlign;
  external set horizontalAlign(String value);

  /**
   * The orientation against which to align the menu dropdown
   * vertically relative to the dropdown trigger.
   */
  external String get verticalAlign;
  external set verticalAlign(String value);

  /**
   * If true, the `horizontalAlign` and `verticalAlign` properties will
   * be considered preferences instead of strict requirements when
   * positioning the dropdown and may be changed if doing so reduces
   * the area of the dropdown falling outside of `fitInto`.
   */
  external bool get dynamicAlign;
  external set dynamicAlign(bool value);

  /**
   * Whether focus should be restored to the dropdown when the menu closes.
   */
  external bool get restoreFocusOnClose;
  external set restoreFocusOnClose(bool value);

  /**
   * The content element that is contained by the dropdown menu, if any.
   */
  external void contentElement();

}
