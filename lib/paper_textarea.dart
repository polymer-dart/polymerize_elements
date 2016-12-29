@JS('PolymerElements')
library PaperTextarea;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_flex_layout.dart' as imp0;
import 'package:polymer_elements/iron_meta.dart' as imp1;
import 'package:polymer_elements/iron_autogrow_textarea.dart' as imp2;
import 'package:polymer_elements/paper_input_char_counter.dart' as imp3;
import 'package:polymer_elements/paper_input_container.dart' as imp4;
import 'package:polymer_elements/paper_input_error.dart' as imp5;
import 'package:polymer_elements/iron_control_state.dart' as imp6;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp7;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp8;
import 'package:polymer_elements/paper_input_behavior.dart' as imp9;
import 'package:polymer_elements/paper_input_addon_behavior.dart' as imp10;

/**
 * `<paper-textarea>` is a multi-line text field with Material Design styling.
 *     <paper-textarea label="Textarea label"></paper-textarea>
 * See `Polymer.PaperInputBehavior` for more API docs.
 * ### Validation
 * Currently only `required` and `maxlength` validation is supported.
 * ### Styling
 * See `Polymer.PaperInputContainer` for a list of custom properties used to
 * style this element.
 */

//@JS('PaperButton')
@PolymerRegister('paper-textarea',native:true)
@BowerImport(ref:'PolymerElements/paper-input#2.0-preview',import:"paper-input/paper-textarea.html",name:'paper-input')
abstract class PaperTextarea extends PolymerElement with imp9.PaperInputBehavior {
  /**
   * The initial number of rows.
   * @attribute rows
   * @type number
   * @default 1
   */
  num get rows;
  set rows(num value);

  /**
   * The maximum number of rows this element can grow to until it
   * scrolls. 0 means no maximum.
   * @attribute maxRows
   * @type number
   * @default 0
   */
  num get maxRows;
  set maxRows(num value);

}
