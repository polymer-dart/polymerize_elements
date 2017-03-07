@JS('Polymer')
library NeonAnimatedPages;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp0;
import 'package:polymer_elements/iron_selectable.dart' as imp1;
import 'package:polymer_elements/neon_animation_runner_behavior.dart' as imp2;

/**
 * Material design: [Meaningful transitions](https://www.google.com/design/spec/animation/meaningful-transitions.html)
 * `neon-animated-pages` manages a set of pages and runs an animation when switching between them. Its
 * children pages should implement `Polymer.NeonAnimatableBehavior` and define `entry` and `exit`
 * animations to be run when switching to or switching out of the page.
 * @group Neon Elements
 * @element neon-animated-pages
 * @demo demo/index.html
 */

@JS('NeonAnimatedPages')
@PolymerRegister('neon-animated-pages',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animated-pages.html",name:'neon-animation')
abstract class NeonAnimatedPages extends PolymerElement implements imp0.IronResizableBehavior,imp1.IronSelectableBehavior,imp2.NeonAnimationRunnerBehavior {
  /**
   * 
   */
  external String get activateEvent;
  external set activateEvent(String value);

  /**
   * if true, the initial page selection will also be animated according to its animation config.
   */
  external bool get animateInitialSelection;
  external set animateInitialSelection(bool value);


}
