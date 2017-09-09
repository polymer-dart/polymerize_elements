@JS('Polymer')
library PaperMenuButton;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp0;
import 'package:polymer_elements/iron_control_state.dart' as imp1;
part 'paper_menu_button.polymerize.dart';
/**
 * Material design: [Dropdown buttons](https://www.google.com/design/spec/components/buttons.html#buttons-dropdown-buttons)
 * `paper-menu-button` allows one to compose a designated "trigger" element with
 * another element that represents "content", to create a dropdown menu that
 * displays the "content" when the "trigger" is clicked.
 * The child element assigned to the `dropdown-trigger` slot will be used as the
 * "trigger" element. The child element assigned to the `dropdown-content` slot will be
 * used as the "content" element.
 * The `paper-menu-button` is sensitive to its content's `iron-select` events. If
 * the "content" element triggers an `iron-select` event, the `paper-menu-button`
 * will close automatically.
 * Example:
 *     <paper-menu-button>
 *       <paper-icon-button icon="menu" slot="dropdown-trigger"></paper-icon-button>
 *       <paper-listbox slot="dropdown-content">
 *         <paper-item>Share</paper-item>
 *         <paper-item>Settings</paper-item>
 *         <paper-item>Help</paper-item>
 *       </paper-listbox>
 *     </paper-menu-button>
 * ### Styling
 * The following custom properties and mixins are also available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-menu-button-dropdown-background` | Background color of the paper-menu-button dropdown | `--primary-background-color`
 * `--paper-menu-button` | Mixin applied to the paper-menu-button | `{}`
 * `--paper-menu-button-disabled` | Mixin applied to the paper-menu-button when disabled | `{}`
 * `--paper-menu-button-dropdown` | Mixin applied to the paper-menu-button dropdown | `{}`
 * `--paper-menu-button-content` | Mixin applied to the paper-menu-button content | `{}`
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperMenuButton')
@PolymerRegister('paper-menu-button',native:true)
@BowerImport(ref:'PolymerElements/paper-menu-button#v2.0.0',import:"paper-menu-button/paper-menu-button.html",name:'paper-menu-button')
abstract class PaperMenuButton extends PolymerElement implements imp0.IronA11yKeysBehavior,imp1.IronControlState {
  /**
   * True if the content is currently displayed.
   */
  external bool get opened;
  external set opened(bool value);

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
   * A pixel value that will be added to the position calculated for the
   * given `horizontalAlign`. Use a negative value to offset to the
   * left, or a positive value to offset to the right.
   */
  external num get horizontalOffset;
  external set horizontalOffset(num value);

  /**
   * A pixel value that will be added to the position calculated for the
   * given `verticalAlign`. Use a negative value to offset towards the
   * top, or a positive value to offset towards the bottom.
   */
  external num get verticalOffset;
  external set verticalOffset(num value);

  /**
   * If true, the dropdown will be positioned so that it doesn't overlap
   * the button.
   */
  external bool get noOverlap;
  external set noOverlap(bool value);

  /**
   * Set to true to disable animations when opening and closing the
   * dropdown.
   */
  external bool get noAnimations;
  external set noAnimations(bool value);

  /**
   * Set to true to disable automatically closing the dropdown after
   * a selection has been made.
   */
  external bool get ignoreSelect;
  external set ignoreSelect(bool value);

  /**
   * Set to true to enable automatically closing the dropdown after an
   * item has been activated, even if the selection did not change.
   */
  external bool get closeOnActivate;
  external set closeOnActivate(bool value);

  /**
   * An animation config. If provided, this will be used to animate the
   * opening of the dropdown.
   */
  external  get openAnimationConfig;
  external set openAnimationConfig( value);

  /**
   * An animation config. If provided, this will be used to animate the
   * closing of the dropdown.
   */
  external  get closeAnimationConfig;
  external set closeAnimationConfig( value);

  /**
   * By default, the dropdown will constrain scrolling on the page
   * to itself when opened.
   * Set to true in order to prevent scroll from being constrained
   * to the dropdown when it opens.
   */
  external bool get allowOutsideScroll;
  external set allowOutsideScroll(bool value);

  /**
   * Whether focus should be restored to the button when the menu closes.
   */
  external bool get restoreFocusOnClose;
  external set restoreFocusOnClose(bool value);

  /**
   * The content element that is contained by the menu button, if any.
   */
  external void contentElement();

}
