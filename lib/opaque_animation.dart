@JS('PolymerElements')
library OpaqueAnimation;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;

/**
 * `<opaque-animation>` makes an element `opacity:1` for the duration of the animation. Used to prevent
 * webkit/safari from drawing a frame before an animation for elements that animate from display:none.
 */

//@JS('PaperButton')
@PolymerRegister('opaque-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/opaque-animation.html",name:'neon-animation')
abstract class OpaqueAnimation extends PolymerElement with imp0.NeonAnimationBehavior {

}
