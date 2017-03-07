@JS('Polymer')
library HeroAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_shared_element_animation_behavior.dart' as imp0;

/**
 * `<hero-animation>` is a shared element animation that scales and transform an element such that it
 * appears to be shared between two pages. Use this in `<neon-animated-pages>`. The source page
 * should use this animation in an 'exit' animation and set the `fromPage` configuration property to
 * itself, and the destination page should use this animation in an `entry` animation and set the
 * `toPage` configuration property to itself. They should also define the hero elements in the
 * `sharedElements` property (not a configuration property, see
 * `Polymer.NeonSharedElementAnimatableBehavior`).
 * Configuration:
 * ```
 * {
 *   name: 'hero-animation',
 *   id: <shared-element-id>,
 *   timing: <animation-timing>,
 *   toPage: <node>, /* define for the destination page */
 *   fromPage: <node>, /* define for the source page */
 * }
 * ```
 */

@JS('HeroAnimation')
@PolymerRegister('hero-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/hero-animation.html",name:'neon-animation')
abstract class HeroAnimation extends PolymerElement implements imp0.NeonSharedElementAnimationBehavior {


}
