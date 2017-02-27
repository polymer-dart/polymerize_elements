@JS('Polymer')
library PaperRipple;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp0;

/**
 * Material design: [Surface reaction](https://www.google.com/design/spec/animation/responsive-interaction.html#responsive-interaction-surface-reaction)
 * `paper-ripple` provides a visual effect that other paper elements can
 * use to simulate a rippling effect emanating from the point of contact.  The
 * effect can be visualized as a concentric circle with motion.
 * Example:
 *     <div style="position:relative">
 *       <paper-ripple></paper-ripple>
 *     </div>
 * Note, it's important that the parent container of the ripple be relative position, otherwise
 * the ripple will emanate outside of the desired container.
 * `paper-ripple` listens to "mousedown" and "mouseup" events so it would display ripple
 * effect when touches on it.  You can also defeat the default behavior and
 * manually route the down and up actions to the ripple element.  Note that it is
 * important if you call `downAction()` you will have to make sure to call
 * `upAction()` so that `paper-ripple` would end the animation loop.
 * Example:
 *     <paper-ripple id="ripple" style="pointer-events: none;"></paper-ripple>
 *     ...
 *     downAction: function(e) {
 *       this.$.ripple.downAction({detail: {x: e.x, y: e.y}});
 *     },
 *     upAction: function(e) {
 *       this.$.ripple.upAction();
 *     }
 * Styling ripple effect:
 *   Use CSS color property to style the ripple:
 *     paper-ripple {
 *       color: #4285f4;
 *     }
 *   Note that CSS color property is inherited so it is not required to set it on
 *   the `paper-ripple` element directly.
 * By default, the ripple is centered on the point of contact.  Apply the `recenters`
 * attribute to have the ripple grow toward the center of its container.
 *     <paper-ripple recenters></paper-ripple>
 * You can also  center the ripple inside its container from the start.
 *     <paper-ripple center></paper-ripple>
 * Apply `circle` class to make the rippling effect within a circle.
 *     <paper-ripple class="circle"></paper-ripple>
 * @group Paper Elements
 * @element paper-ripple
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperRipple')
@PolymerRegister('paper-ripple',native:true)
@BowerImport(ref:'PolymerElements/paper-ripple#2.0-preview',import:"paper-ripple/paper-ripple.html",name:'paper-ripple')
abstract class PaperRipple extends PolymerElement implements imp0.IronA11yKeysBehavior {
  /**
   * The initial opacity set on the wave.
   * @attribute initialOpacity
   * @type number
   * @default 0.25
   */
  external num get initialOpacity;
  external set initialOpacity(num value);

  /**
   * How fast (opacity per second) the wave fades out.
   * @attribute opacityDecayVelocity
   * @type number
   * @default 0.8
   */
  external num get opacityDecayVelocity;
  external set opacityDecayVelocity(num value);

  /**
   * If true, ripples will exhibit a gravitational pull towards
   * the center of their container as they fade away.
   * @attribute recenters
   * @type boolean
   * @default false
   */
  external bool get recenters;
  external set recenters(bool value);

  /**
   * If true, ripples will center inside its container
   * @attribute recenters
   * @type boolean
   * @default false
   */
  external bool get center;
  external set center(bool value);

  /**
   * A list of the visual ripples.
   * @attribute ripples
   * @type Array
   * @default []
   */
  external List get ripples;
  external set ripples(List value);

  /**
   * True when there are visible ripples animating within the
   * element.
   */
  external bool get animating;
  external set animating(bool value);

  /**
   * If true, the ripple will remain in the "down" state until `holdDown`
   * is set to false again.
   */
  external bool get holdDown;
  external set holdDown(bool value);

  /**
   * If true, the ripple will not generate a ripple effect
   * via pointer interaction.
   * Calling ripple's imperative api like `simulatedRipple` will
   * still generate the ripple effect.
   */
  external bool get noink;
  external set noink(bool value);

}
