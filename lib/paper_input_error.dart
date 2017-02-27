@JS('Polymer')
library PaperInputError;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/paper_input_addon_behavior.dart' as imp0;

/**
 * `<paper-input-error>` is an error message for use with `<paper-input-container>`. The error is
 * displayed when the `<paper-input-container>` is `invalid`.
 *     <paper-input-container>
 *       <input is="iron-input" pattern="[0-9]*">
 *       <paper-input-error>Only numbers are allowed!</paper-input-error>
 *     </paper-input-container>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-input-container-invalid-color` | The foreground color of the error | `--error-color`
 * `--paper-input-error`                   | Mixin applied to the error        | `{}`
 */

@JS('PaperInputError')
@PolymerRegister('paper-input-error',native:true)
@BowerImport(ref:'PolymerElements/paper-input#2.0-preview',import:"paper-input/paper-input-error.html",name:'paper-input')
abstract class PaperInputError extends PolymerElement implements imp0.PaperInputAddonBehavior {
  /**
   * True if the error is showing.
   */
  external bool get invalid;
  external set invalid(bool value);

}
