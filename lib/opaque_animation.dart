@JS('Polymer')
library OpaqueAnimation;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * `<opaque-animation>` makes an element `opacity:1` for the duration of the animation. Used to prevent
 * webkit/safari from drawing a frame before an animation for elements that animate from display:none.
 */

@JS('OpaqueAnimation')
@PolymerRegister('opaque-animation',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/animations/opaque-animation.html",name:'neon-animation')
abstract class OpaqueAnimation extends PolymerElement implements imp1.NeonAnimationBehavior {

}
