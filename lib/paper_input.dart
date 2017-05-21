@JS('Polymer')
library PaperInput;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/paper_input_behavior.dart' as imp0;
import 'package:polymer_elements/iron_form_element_behavior.dart' as imp1;

/**
 * This is a fresh new hell to make this element hybrid. Basically, in 2.0
 *     we lost is=, so the example same template can't be used with iron-input 1.0 and 2.0.
 *     Expect some conditional code (especially in the tests).
 */

@JS('PaperInput')
@PolymerRegister('paper-input',native:true)
@BowerImport(ref:'PolymerElements/paper-input#v2.0.0',import:"paper-input/paper-input.html",name:'paper-input')
abstract class PaperInput extends PolymerElement implements imp0.PaperInputBehavior,imp1.IronFormElementBehavior {


}
