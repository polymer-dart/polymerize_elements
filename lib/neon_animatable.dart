@JS('PolymerElements')
library NeonAnimatable;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp0;
import 'package:polymer_elements/neon_animatable_behavior.dart' as imp1;

/**
 * `<neon-animatable>` is a simple container element implementing `Polymer.NeonAnimatableBehavior`. This is a convenience element for use with `<neon-animated-pages>`.
 * ```
 * <neon-animated-pages selected="0"
 *                      entry-animation="slide-from-right-animation"
 *                      exit-animation="slide-left-animation">
 *   <neon-animatable>1</neon-animatable>
 *   <neon-animatable>2</neon-animatable>
 * </neon-animated-pages>
 * ```
 */

//@JS('PaperButton')
@PolymerRegister('neon-animatable',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animatable.html",name:'neon-animation')
abstract class NeonAnimatable extends PolymerElement with imp1.NeonAnimatableBehavior,imp0.IronResizableBehavior {

}
