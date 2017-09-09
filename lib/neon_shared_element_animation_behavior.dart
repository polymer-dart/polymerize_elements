@JS('Polymer')
library Polymer.NeonSharedElementAnimationBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animation_behavior.dart' as imp0;
part 'neon_shared_element_animation_behavior.polymerize.dart';
/**
 * Use `Polymer.NeonSharedElementAnimationBehavior` to implement shared element animations.
 */

@BowerImport(ref:'PolymerElements/neon-animation#v2.0.0',import:"neon-animation/neon-shared-element-animation-behavior.html",name:'neon-animation')
@JS('NeonSharedElementAnimationBehavior')
abstract class NeonSharedElementAnimationBehavior implements imp0.NeonAnimationBehavior {
  /**
   * Cached copy of shared elements.
   */
  external  get sharedElements;
  external set sharedElements( value);

  /**
   * Finds shared elements based on `config`.
   */
  external void findSharedElements();

}

