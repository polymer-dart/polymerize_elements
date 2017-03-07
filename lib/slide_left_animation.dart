@JS('Polymer')
library SlideLeftAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;

/**
 * `<slide-left-animation>` animates the transform of an element from `none` to `translateX(-100%)`.
 * The `transformOrigin` defaults to `0 50%`.
 * Configuration:
 * ```
 * {
 *   name: 'slide-left-animation',
 *   node: <node>,
 *   transformOrigin: <transform-origin>,
 *   timing: <animation-timing>
 * }
 * ```
 */

@JS('SlideLeftAnimation')
@PolymerRegister('slide-left-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/slide-left-animation.html",name:'neon-animation')
abstract class SlideLeftAnimation extends PolymerElement implements imp0.NeonAnimationBehavior {


}
