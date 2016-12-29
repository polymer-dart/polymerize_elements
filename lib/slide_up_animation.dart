@JS('PolymerElements')
library SlideUpAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<slide-up-animation>` animates the transform of an element from `translateY(0)` to
 * `translateY(-100%)`. The `transformOrigin` defaults to `50% 0`.
 * Configuration:
 * ```
 * {
 *   name: 'slide-up-animation',
 *   node: <node>,
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

//@JS('PaperButton')
@PolymerRegister('slide-up-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/slide-up-animation.html",name:'neon-animation')
abstract class SlideUpAnimation extends PolymerElement with imp1.NeonAnimationBehavior {

}
