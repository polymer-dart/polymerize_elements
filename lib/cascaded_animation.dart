@JS('PolymerElements')
library CascadedAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<cascaded-animation>` applies an animation on an array of elements with a delay between each.
 * the delay defaults to 50ms.
 * Configuration:
 * ```
 * {
 *   name: 'cascaded-animation',
 *   animation: <animation-name>,
 *   nodes: <array-of-nodes>,
 *   nodeDelay: <node-delay-in-ms>,
 *   timing: <animation-timing>
 * }
 * ```
 */

//@JS('PaperButton')
@PolymerRegister('cascaded-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/cascaded-animation.html",name:'neon-animation')
abstract class CascadedAnimation extends PolymerElement with imp1.NeonAnimationBehavior {

}
