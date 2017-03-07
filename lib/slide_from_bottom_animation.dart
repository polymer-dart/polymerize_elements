@JS('Polymer')
library SlideFromBottomAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;

/**
 * `<slide-from-bottom-animation>` animates the transform of an element from `none` to `translateY(100%)`.
 * The `transformOrigin` defaults to `50% 0`.
 * Configuration:
 * ```
 * {
 *   name: 'slide-from-bottom-animation',
 *   node: <node>,
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

@JS('SlideFromBottomAnimation')
@PolymerRegister('slide-from-bottom-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/slide-from-bottom-animation.html",name:'neon-animation')
abstract class SlideFromBottomAnimation extends PolymerElement implements imp0.NeonAnimationBehavior {


}
