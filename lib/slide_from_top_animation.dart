@JS('PolymerElements')
library SlideFromTopAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<slide-from-top-animation>` animates the transform of an element from `translateY(-100%)` to
 * `none`. The `transformOrigin` defaults to `50% 0`.
 * Configuration:
 * ```
 * {
 *   name: 'slide-from-top-animation',
 *   node: <node>,
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

//@JS('PaperButton')
@PolymerRegister('slide-from-top-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/slide-from-top-animation.html",name:'neon-animation')
abstract class SlideFromTopAnimation extends PolymerElement with imp1.NeonAnimationBehavior {

}
