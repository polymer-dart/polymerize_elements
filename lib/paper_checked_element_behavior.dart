@JS('PolymerElements')
library Polymer.PaperCheckedElementBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/paper_inky_focus_behavior.dart' as imp0;
import 'package:polymer_elements/iron_checked_element_behavior.dart' as imp1;

/**
 * 
 * Use `Polymer.PaperCheckedElementBehavior` to implement a custom element
 * that has a `checked` property similar to `Polymer.IronCheckedElementBehavior`
 * and is compatible with having a ripple effect.
 * 
 */

@BowerImport(ref:'PolymerElements/paper-behaviors#2.0-preview',import:"paper-behaviors/paper-checked-element-behavior.html",name:'Polymer.PaperCheckedElementBehavior')
abstract class PaperCheckedElementBehavior implements imp0.PaperInkyFocusBehavior,imp1.IronCheckedElementBehavior {

}

