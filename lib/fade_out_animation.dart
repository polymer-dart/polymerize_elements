@JS('Polymer')
library FadeOutAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;
part 'fade_out_animation.polymerize.dart';
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
@BowerImport(ref:'PolymerElements/neon-animation#v2.0.0',import:"neon-animation/animations/fade-out-animation.html",name:'neon-animation')
abstract class FadeOutAnimation extends PolymerElement implements imp0.NeonAnimationBehavior {


}
