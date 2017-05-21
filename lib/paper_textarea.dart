@JS('Polymer')
library PaperTextarea;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/paper_input_behavior.dart' as imp0;
import 'package:polymer_elements/iron_form_element_behavior.dart' as imp1;

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

@JS('PaperTextarea')
@PolymerRegister('paper-textarea',native:true)
@BowerImport(ref:'PolymerElements/paper-input#v2.0.0',import:"paper-input/paper-textarea.html",name:'paper-input')
abstract class PaperTextarea extends PolymerElement implements imp0.PaperInputBehavior,imp1.IronFormElementBehavior {
  /**
   * The initial number of rows.
   * @attribute rows
   * @type number
   * @default 1
   */
  external num get rows;
  external set rows(num value);

  /**
   * The maximum number of rows this element can grow to until it
   * scrolls. 0 means no maximum.
   * @attribute maxRows
   * @type number
   * @default 0
   */
  external num get maxRows;
  external set maxRows(num value);


}
