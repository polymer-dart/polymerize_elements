  @JS('Polymer')
  library Polymer.NeonAnimationRunnerBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_elements/neon_animatable_behavior.dart' as imp0;

  /**
 * `Polymer.NeonAnimationRunnerBehavior` adds a method to run animations.
 */

@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animation-runner-behavior.html",name:'neon-animation')
@JS('NeonAnimationRunnerBehavior')
abstract class NeonAnimationRunnerBehavior implements imp0.NeonAnimatableBehavior {

  /**
   * Plays an animation with an optional `type`.
   * @param {string=} type
   * @param {!Object=} cookie
   */
  external void playAnimation();

  /**
   * Cancels the currently running animations.
   */
  external void cancelAnimation();

}

