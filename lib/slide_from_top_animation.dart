@JS('Polymer')
library SlideFromTopAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;
part 'slide_from_top_animation.polymerize.dart';
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

@JS('SlideFromTopAnimation')
@PolymerRegister('slide-from-top-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#v2.0.0',import:"neon-animation/animations/slide-from-top-animation.html",name:'neon-animation')
abstract class SlideFromTopAnimation extends PolymerElement implements imp0.NeonAnimationBehavior {


}
