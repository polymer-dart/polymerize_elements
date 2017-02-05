@JS('Polymer')
library SlideFromRightAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<slide-from-right-animation>` animates the transform of an element from
 * `translateX(100%)` to `none`.
 * The `transformOrigin` defaults to `0 50%`.
 * Configuration:
 * ```
 * {
 *   name: 'slide-from-right-animation',
 *   node: <node>,
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

@JS('SlideFromRightAnimation')
@PolymerRegister('slide-from-right-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/slide-from-right-animation.html",name:'neon-animation')
abstract class SlideFromRightAnimation extends PolymerElement implements imp1.NeonAnimationBehavior {

}
