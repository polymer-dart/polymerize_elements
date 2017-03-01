@JS('Polymer')
library PaperInput;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_a11y_announcer.dart' as imp0;
import 'package:polymer_elements/iron_meta.dart' as imp1;
import 'package:polymer_elements/iron_input.dart' as imp2;
import 'package:polymer_elements/paper_input_char_counter.dart' as imp3;
import 'package:polymer_elements/iron_flex_layout.dart' as imp4;
import 'package:polymer_elements/paper_input_container.dart' as imp5;
import 'package:polymer_elements/paper_input_error.dart' as imp6;
import 'package:polymer_element/polymer_element.dart' as imp7;
import 'package:polymer_elements/iron_form_element_behavior.dart' as imp8;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp9;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp10;
import 'package:polymer_elements/iron_control_state.dart' as imp11;
import 'package:polymer_elements/paper_input_behavior.dart' as imp12;
import 'package:polymer_elements/paper_input_addon_behavior.dart' as imp13;

/**
 * This is a fresh new hell to make this element hybrid. Basically, in 2.0
 *     we lost is=, so the example same template can't be used with iron-input 1.0 and 2.0.
 *     Expect some conditional code (especially in the tests).
 */

@JS('PaperInput')
@PolymerRegister('paper-input',native:true)
@BowerImport(ref:'PolymerElements/paper-input#2.0-preview',import:"paper-input/paper-input.html",name:'paper-input')
abstract class PaperInput extends PolymerElement implements imp12.PaperInputBehavior,imp8.IronFormElementBehavior {

}
