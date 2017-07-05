@JS('Polymer')
library PaperTooltip;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_runner_behavior.dart' as imp0;

/**
 * Material design: [Tooltips](https://www.google.com/design/spec/components/tooltips.html)
 * `<paper-tooltip>` is a label that appears on hover and focus when the user
 * hovers over an element with the cursor or with the keyboard. It will be centered
 * to an anchor element specified in the `for` attribute, or, if that doesn't exist,
 * centered to the parent node containing it. Note that as of `paper-tooltip#2.0.0`,
 * you must explicitely include the `web-animations` polyfill if you want this
 * element to work on browsers not implementing the WebAnimations spec.
 * Example:
 *     // polyfill 
 *     <link rel="import" href="../../neon-animation/web-animations.html">
 *     <div style="display:inline-block">
 *       <button>Click me!</button>
 *       <paper-tooltip>Tooltip text</paper-tooltip>
 *     </div>
 *     <div>
 *       <button id="btn">Click me!</button>
 *       <paper-tooltip for="btn">Tooltip text</paper-tooltip>
 *     </div>
 * The tooltip can be positioned on the top|bottom|left|right of the anchor using
 * the `position` attribute. The default position is bottom.
 *     <paper-tooltip for="btn" position="left">Tooltip text</paper-tooltip>
 *     <paper-tooltip for="btn" position="top">Tooltip text</paper-tooltip>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-tooltip-background` | The background color of the tooltip | `#616161`
 * `--paper-tooltip-opacity` | The opacity of the tooltip | `0.9`
 * `--paper-tooltip-text-color` | The text color of the tooltip | `white`
 * `--paper-tooltip` | Mixin applied to the tooltip | `{}`
 * @group Paper Elements
 * @element paper-tooltip
 * @demo demo/index.html
 */

@JS('PaperTooltip')
@PolymerRegister('paper-tooltip',native:true)
@BowerImport(ref:'PolymerElements/paper-tooltip#v2.0.0',import:"paper-tooltip/paper-tooltip.html",name:'paper-tooltip')
abstract class PaperTooltip extends PolymerElement implements imp0.NeonAnimationRunnerBehavior {
  /**
   * The id of the element that the tooltip is anchored to. This element
   * must be a sibling of the tooltip.
   */
  external String get JS$for;
  external set JS$for(String value);

  /**
   * Set this to true if you want to manually control when the tooltip
   * is shown or hidden.
   */
  external bool get manualMode;
  external set manualMode(bool value);

  /**
   * Positions the tooltip to the top, right, bottom, left of its content.
   */
  external String get position;
  external set position(String value);

  /**
   * If true, no parts of the tooltip will ever be shown offscreen.
   */
  external bool get fitToVisibleBounds;
  external set fitToVisibleBounds(bool value);

  /**
   * The spacing between the top of the tooltip and the element it is
   * anchored to.
   */
  external num get offset;
  external set offset(num value);

  /**
   * This property is deprecated, but left over so that it doesn't
   * break exiting code. Please use `offset` instead. If both `offset` and
   * `marginTop` are provided, `marginTop` will be ignored.
   * @deprecated since version 1.0.3
   */
  external num get marginTop;
  external set marginTop(num value);

  /**
   * The delay that will be applied before the `entry` animation is
   * played when showing the tooltip.
   */
  external num get animationDelay;
  external set animationDelay(num value);

  /**
   * The entry and exit animations that will be played when showing and
   * hiding the tooltip. If you want to override this, you must ensure
   * that your animationConfig has the exact format below.
   */
  external  get animationConfig;
  external set animationConfig( value);

  /**
   * Returns the target element that this tooltip is anchored to. It is
   * either the element given by the `for` attribute, or the immediate parent
   * of the tooltip.
   */
  external void target();

}
