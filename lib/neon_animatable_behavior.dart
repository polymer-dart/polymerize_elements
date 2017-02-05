  @JS('Polymer')
  library Polymer.NeonAnimatableBehavior;
  import 'dart:html';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  

  /**
 * 
 * `Polymer.NeonAnimatableBehavior` is implemented by elements containing animations for use with
 * elements implementing `Polymer.NeonAnimationRunnerBehavior`.
 * 
 */

@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animatable-behavior.html",name:'neon-animation')
@JS('NeonAnimatableBehavior')
abstract class NeonAnimatableBehavior  {
  /**
   * Animation configuration. See README for more info.
   */
  external  get animationConfig;
  external set animationConfig( value);

  /**
   * Convenience property for setting an 'entry' animation. Do not set `animationConfig.entry`
   * manually if using this. The animated node is set to `this` if using this property.
   */
  external String get entryAnimation;
  external set entryAnimation(String value);

  /**
   * Convenience property for setting an 'exit' animation. Do not set `animationConfig.exit`
   * manually if using this. The animated node is set to `this` if using this property.
   */
  external String get exitAnimation;
  external set exitAnimation(String value);

}

