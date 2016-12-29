@JS('PolymerElements')
library Polymer.PaperCheckedElementBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/paper_ripple.dart' as imp1;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp2;
import 'package:polymer_elements/iron_checked_element_behavior.dart' as imp3;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp4;
import 'package:polymer_elements/iron_control_state.dart' as imp5;
import 'package:polymer_elements/iron_button_state.dart' as imp6;
import 'package:polymer_elements/paper_ripple_behavior.dart' as imp7;
import 'package:polymer_elements/paper_inky_focus_behavior.dart' as imp8;

/**
 * 
 * Use `Polymer.PaperCheckedElementBehavior` to implement a custom element
 * that has a `checked` property similar to `Polymer.IronCheckedElementBehavior`
 * and is compatible with having a ripple effect.
 * 
 */

@BowerImport(ref:'PolymerElements/paper-behaviors#2.0-preview',import:"paper-behaviors/paper-checked-element-behavior.html",name:'paper-behaviors')
abstract class PaperCheckedElementBehavior implements imp8.PaperInkyFocusBehavior,imp3.IronCheckedElementBehavior {

}

