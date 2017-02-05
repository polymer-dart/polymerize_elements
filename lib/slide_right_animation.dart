@JS('Polymer')
library SlideRightAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

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
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/slide-right-animation.html",name:'neon-animation')
abstract class SlideRightAnimation extends PolymerElement implements imp1.NeonAnimationBehavior {

}
