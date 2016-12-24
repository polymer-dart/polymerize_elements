@JS('PolymerElements')
library NeonAnimatedPages;
import 'dart:html';
import 'package:js/js.dart';
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

//@JS('PaperButton')
@PolymerRegister('neon-animated-pages',native:true)
@BowerImport(ref:'PolymerElements/neon-animation#2.0-preview',import:"neon-animation/neon-animated-pages.html",name:'neon-animated-pages')
abstract class NeonAnimatedPages extends PolymerElement with imp0.IronResizableBehavior,imp1.IronSelectableBehavior,imp2.NeonAnimationRunnerBehavior {
  /**
   * 
   */
  String get activateEvent;
  set activateEvent(String value);

  /**
   * if true, the initial page selection will also be animated according to its animation config.
   */
  bool get animateInitialSelection;
  set animateInitialSelection(bool value);

}
