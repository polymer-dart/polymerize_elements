@JS('Polymer')
library Polymer.NeonSharedElementAnimationBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/neon_animation_behavior.dart' as imp1;

/**
 * 
 * Use `Polymer.NeonSharedElementAnimationBehavior` to implement shared element animations.
 * 
 */

@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-shared-element-animation-behavior.html",name:'neon-animation')
@JS('NeonSharedElementAnimationBehavior')
abstract class NeonSharedElementAnimationBehavior implements imp1.NeonAnimationBehavior {
  /**
   * Cached copy of shared elements.
   */
  external  get sharedElements;
  external set sharedElements( value);

}

