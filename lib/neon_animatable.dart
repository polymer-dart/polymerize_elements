@JS('Polymer')
library NeonAnimatable;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

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

@JS('NeonAnimatable')
@PolymerRegister('neon-animatable',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animatable.html",name:'neon-animation')
abstract class NeonAnimatable extends PolymerElement implements imp1.NeonAnimatableBehavior,imp0.IronResizableBehavior {

}
