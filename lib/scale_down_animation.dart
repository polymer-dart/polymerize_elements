@JS('PolymerElements')
library ScaleDownAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;

/**
 * `<scale-down-animation>` animates the scale transform of an element from 1 to 0. By default it
 * scales in both the x and y axes.
 * Configuration:
 * ```
 * {
 *   name: 'scale-down-animation',
 *   node: <node>,
 *   axis: 'x' | 'y' | '',
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

//@JS('PaperButton')
@PolymerRegister('scale-down-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/scale-down-animation.html",name:'neon-animation')
abstract class ScaleDownAnimation extends PolymerElement with imp0.NeonAnimationBehavior {

}
