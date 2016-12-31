@JS('PolymerElements')
library FadeOutAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<fade-out-animation>` animates the opacity of an element from 1 to 0.
 * Configuration:
 * ```
 * {
 *   name: 'fade-out-animation',
 *   node: <node>
 *   timing: <animation-timing>
 * }
 * ```
 */

@JS('FadeOutAnimation')
@PolymerRegister('fade-out-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/fade-out-animation.html",name:'neon-animation')
abstract class FadeOutAnimation extends PolymerElement with imp1.NeonAnimationBehavior {

}
