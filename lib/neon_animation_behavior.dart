  @JS('Polymer')
  library Polymer.NeonAnimationBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_elements/iron_meta.dart' as imp0;

  /**
 * 
 * Use `Polymer.NeonAnimationBehavior` to implement an animation.
 * 
 */

@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animation-behavior.html",name:'neon-animation')
@JS('NeonAnimationBehavior')
abstract class NeonAnimationBehavior  {
  /**
   * Defines the animation timing.
   */
  external  get animationTiming;
  external set animationTiming( value);

}

