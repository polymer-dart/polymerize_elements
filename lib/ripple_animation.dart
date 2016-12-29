@JS('PolymerElements')
library RippleAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;
import 'package:polymer_elements/neon_shared_element_animation_behavior.dart' as imp2;

/**
 * `<ripple-animation>` scales and transform an element such that it appears to ripple from either
 * a shared element, or from a screen position, to full screen.
 * If using as a shared element animation in `<neon-animated-pages>`, use this animation in an `exit`
 * animation in the source page and in an `entry` animation in the destination page. Also, define the
 * hero elements in the `sharedElements` property (not a configuration property, see
 * `Polymer.NeonSharedElementAnimatableBehavior`).
 * If using a screen position, define the `gesture` property.
 * Configuration:
 * ```
 * {
 *   name: 'ripple-animation`.
 *   id: <shared-element-id>, /* set this or gesture */
 *   gesture: {x: <page-x>, y: <page-y>}, /* set this or id */
 *   timing: <animation-timing>,
 *   toPage: <node>, /* define for the destination page */
 *   fromPage: <node>, /* define for the source page */
 * }
 * ```
 */

//@JS('PaperButton')
@PolymerRegister('ripple-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/ripple-animation.html",name:'neon-animation')
abstract class RippleAnimation extends PolymerElement with imp2.NeonSharedElementAnimationBehavior {

}
