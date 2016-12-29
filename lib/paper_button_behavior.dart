@JS('PolymerElements')
library Polymer.PaperButtonBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/paper_ripple.dart' as imp0;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp1;
import 'package:polymer_elements/iron_control_state.dart' as imp2;
import 'package:polymer_elements/iron_button_state.dart' as imp3;
import 'package:polymer_elements/paper_ripple_behavior.dart' as imp4;

/**
 * 
 */

@BowerImport(ref:'PolymerElements/paper-behaviors#2.0-preview',import:"paper-behaviors/paper-button-behavior.html",name:'paper-behaviors')
abstract class PaperButtonBehavior implements imp3.IronButtonState,imp2.IronControlState,imp4.PaperRippleBehavior {
  /**
   * The z-depth of this element, from 0-5. Setting to 0 will remove the
   * shadow, and each increasing number greater than 0 will be "deeper"
   * than the last.
   * @attribute elevation
   * @type number
   * @default 1
   */
  num get elevation;
  set elevation(num value);

}

