@JS('Polymer')
library SlideRightAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;

/**
 * `<slide-right-animation>` animates the transform of an element from `none` to `translateX(100%)`.
 * The `transformOrigin` defaults to `0 50%`.
 * Configuration:
 * ```
 * {
 *   name: 'slide-right-animation',
 *   node: <node>,
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

@JS('SlideRightAnimation')
@PolymerRegister('slide-right-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#v2.0.0',import:"neon-animation/animations/slide-right-animation.html",name:'neon-animation')
abstract class SlideRightAnimation extends PolymerElement implements imp0.NeonAnimationBehavior {


}
