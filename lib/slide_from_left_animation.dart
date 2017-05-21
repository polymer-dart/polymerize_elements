@JS('Polymer')
library SlideFromLeftAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;

/**
 * `<slide-from-left-animation>` animates the transform of an element from
 * `translateX(-100%)` to `none`.
 * The `transformOrigin` defaults to `0 50%`.
 * Configuration:
 * ```
 * {
 *   name: 'slide-from-left-animation',
 *   node: <node>,
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

@JS('SlideFromLeftAnimation')
@PolymerRegister('slide-from-left-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#v2.0.0',import:"neon-animation/animations/slide-from-left-animation.html",name:'neon-animation')
abstract class SlideFromLeftAnimation extends PolymerElement implements imp0.NeonAnimationBehavior {


}
