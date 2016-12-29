@JS('PolymerElements')
library ScaleUpAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<scale-up-animation>` animates the scale transform of an element from 0 to 1. By default it
 * scales in both the x and y axes.
 * Configuration:
 * ```
 * {
 *   name: 'scale-up-animation',
 *   node: <node>,
 *   axis: 'x' | 'y' | '',
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

//@JS('PaperButton')
@PolymerRegister('scale-up-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/scale-up-animation.html",name:'neon-animation')
abstract class ScaleUpAnimation extends PolymerElement with imp1.NeonAnimationBehavior {

}
