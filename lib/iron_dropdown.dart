@JS('Polymer')
library IronDropdown;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_control_state.dart' as imp0;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp1;
import 'package:polymer_elements/iron_overlay_behavior.dart' as imp2;
import 'package:polymer_elements/neon_animation_runner_behavior.dart' as imp3;
part 'iron_dropdown.polymerize.dart';
/**
 * `<iron-dropdown>` is a generalized element that is useful when you have
 * hidden content (`dropdown-content`) that is revealed due to some change in
 * state that should cause it to do so.
 * Note that this is a low-level element intended to be used as part of other
 * composite elements that cause dropdowns to be revealed.
 * Examples of elements that might be implemented using an `iron-dropdown`
 * include comboboxes, menubuttons, selects. The list goes on.
 * The `<iron-dropdown>` element exposes attributes that allow the position
 * of the `dropdown-content` relative to the `dropdown-trigger` to be
 * configured.
 *     <iron-dropdown horizontal-align="right" vertical-align="top">
 *       <div slot="dropdown-content">Hello!</div>
 *     </iron-dropdown>
 * In the above example, the `<div>` assigned to the `dropdown-content` slot will be
 * hidden until the dropdown element has `opened` set to true, or when the `open`
 * method is called on the element.
 * @demo demo/index.html
 */

@JS('IronDropdown')
@PolymerRegister('iron-dropdown',native:true)
@BowerImport(ref:'PolymerElements/iron-dropdown#v2.0.0',import:"iron-dropdown/iron-dropdown.html",name:'iron-dropdown')
abstract class IronDropdown extends PolymerElement implements imp0.IronControlState,imp1.IronA11yKeysBehavior,imp2.IronOverlayBehavior,imp3.NeonAnimationRunnerBehavior {
  /**
   * The orientation against which to align the dropdown content
   * horizontally relative to the dropdown trigger.
   * Overridden from `Polymer.IronFitBehavior`.
   */
  external String get horizontalAlign;
  external set horizontalAlign(String value);

  /**
   * The orientation against which to align the dropdown content
   * vertically relative to the dropdown trigger.
   * Overridden from `Polymer.IronFitBehavior`.
   */
  external String get verticalAlign;
  external set verticalAlign(String value);

  /**
   * An animation config. If provided, this will be used to animate the
   * opening of the dropdown. Pass an Array for multiple animations.
   * See `neon-animation` documentation for more animation configuration
   * details.
   */
  external  get openAnimationConfig;
  external set openAnimationConfig( value);

  /**
   * An animation config. If provided, this will be used to animate the
   * closing of the dropdown. Pass an Array for multiple animations.
   * See `neon-animation` documentation for more animation configuration
   * details.
   */
  external  get closeAnimationConfig;
  external set closeAnimationConfig( value);

  /**
   * If provided, this will be the element that will be focused when
   * the dropdown opens.
   */
  external  get focusTarget;
  external set focusTarget( value);

  /**
   * Set to true to disable animations when opening and closing the
   * dropdown.
   */
  external bool get noAnimations;
  external set noAnimations(bool value);

  /**
   * By default, the dropdown will constrain scrolling on the page
   * to itself when opened.
   * Set to true in order to prevent scroll from being constrained
   * to the dropdown when it opens.
   */
  external bool get allowOutsideScroll;
  external set allowOutsideScroll(bool value);

  /**
   * The element that is contained by the dropdown, if any.
   */
  external void containedElement();

}
