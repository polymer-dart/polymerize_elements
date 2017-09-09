@JS('Polymer')
library Polymer.NeonSharedElementAnimatableBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animatable_behavior.dart' as imp0;
part 'neon_shared_element_animatable_behavior.polymerize.dart';
/**
 * Use `Polymer.NeonSharedElementAnimatableBehavior` to implement elements containing shared element
 * animations.
 */

@BowerImport(ref:'PolymerElements/neon-animation#v2.0.0',import:"neon-animation/neon-shared-element-animatable-behavior.html",name:'neon-animation')
@JS('NeonSharedElementAnimatableBehavior')
abstract class NeonSharedElementAnimatableBehavior implements imp0.NeonAnimatableBehavior {
  /**
   * A map of shared element id to node.
   */
  external  get sharedElements;
  external set sharedElements( value);


}

