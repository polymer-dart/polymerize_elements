@JS('PolymerElements')
library Polymer.NeonSharedElementAnimatableBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/neon_animatable_behavior.dart' as imp0;

/**
 * 
 * Use `Polymer.NeonSharedElementAnimatableBehavior` to implement elements containing shared element
 * animations.
 * 
 */

@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-shared-element-animatable-behavior.html",name:'Polymer.NeonSharedElementAnimatableBehavior')
abstract class NeonSharedElementAnimatableBehavior implements imp0.NeonAnimatableBehavior {
  /**
   * A map of shared element id to node.
   */
   get sharedElements;
  set sharedElements( value);

}

