@JS('Polymer')
library Polymer.PaperInputAddonBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'paper_input_addon_behavior.polymerize.dart';

/**
 * Use `Polymer.PaperInputAddonBehavior` to implement an add-on for `<paper-input-container>`. A
 * add-on appears below the input, and may display information based on the input value and
 * validity such as a character counter or an error message.
 */

@BowerImport(ref:'PolymerElements/paper-input#v2.0.0',import:"paper-input/paper-input-addon-behavior.html",name:'paper-input')
@JS('PaperInputAddonBehavior')
abstract class PaperInputAddonBehavior  {

  /**
   * 
   */
  external void attached();

  /**
   * The function called by `<paper-input-container>` when the input value or validity changes.
   * @param {{
   *   inputElement: (Element|undefined),
   *   value: (string|undefined),
   *   invalid: boolean
   * }} state -
   *     inputElement: The input element.
   *     value: The input value.
   *     invalid: True if the input value is invalid.
   */
  external void update();

}

