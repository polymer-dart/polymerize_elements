@JS('Polymer')
library FadeInAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<fade-in-animation>` animates the opacity of an element from 0 to 1.
 * Configuration:
 * ```
 * {
 *   name: 'fade-in-animation',
 *   node: <node>
 *   timing: <animation-timing>
 * }
 * ```
 */

@JS('FadeInAnimation')
@PolymerRegister('fade-in-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/fade-in-animation.html",name:'neon-animation')
abstract class FadeInAnimation extends PolymerElement implements imp1.NeonAnimationBehavior {

}
