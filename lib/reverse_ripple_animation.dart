@JS('Polymer')
library ReverseRippleAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_element/polymer_element.dart' as imp1;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp2;
import 'package:polymer_elements/neon_shared_element_animation_behavior.dart' as imp3;

/**
 * `<reverse-ripple-animation>` scales and transform an element such that it appears to ripple down from this element, to either
 * a shared element, or a screen position.
 * If using as a shared element animation in `<neon-animated-pages>`, use this animation in an `exit`
 * animation in the source page and in an `entry` animation in the destination page. Also, define the
 * reverse-ripple elements in the `sharedElements` property (not a configuration property, see
 * `Polymer.NeonSharedElementAnimatableBehavior`).
 * If using a screen position, define the `gesture` property.
 * Configuration:
 * ```
 * {
 *   name: 'reverse-ripple-animation`.
 *   id: <shared-element-id>, /* set this or gesture */
 *   gesture: {x: <page-x>, y: <page-y>}, /* set this or id */
 *   timing: <animation-timing>,
 *   toPage: <node>, /* define for the destination page */
 *   fromPage: <node>, /* define for the source page */
 * }
 * ```
 */

@JS('ReverseRippleAnimation')
@PolymerRegister('reverse-ripple-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/reverse-ripple-animation.html",name:'neon-animation')
abstract class ReverseRippleAnimation extends PolymerElement implements imp3.NeonSharedElementAnimationBehavior {

}
