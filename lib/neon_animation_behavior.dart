@JS('Polymer')
library Polymer.NeonAnimationBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * Use `Polymer.NeonAnimationBehavior` to implement an animation.
 */

@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animation-behavior.html",name:'neon-animation')
@JS('NeonAnimationBehavior')
abstract class NeonAnimationBehavior  {
  /**
   * Defines the animation timing.
   */
  external  get animationTiming;
  external set animationTiming( value);

  /**
   * Returns the animation timing by mixing in properties from `config` to the defaults defined
   * by the animation.
   */
  external void timingFromConfig();

  /**
   * Sets `transform` and `transformOrigin` properties along with the prefixed versions.
   */
  external void setPrefixedProperty();

  /**
   * Called when the animation finishes.
   */
  external void complete();

}

