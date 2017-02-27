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
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp7;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp8;
import 'package:polymer_elements/iron_control_state.dart' as imp9;
import 'package:polymer_elements/paper_input_behavior.dart' as imp10;
import 'package:polymer_elements/paper_input_addon_behavior.dart' as imp11;

/**
 * Material design: [Text fields](https://www.google.com/design/spec/components/text-fields.html)
 * `<paper-input>` is a single-line text field with Material Design styling.
 *     <paper-input label="Input label"></paper-input>
 * It may include an optional error message or character counter.
 *     <paper-input error-message="Invalid input!" label="Input label"></paper-input>
 *     <paper-input char-counter label="Input label"></paper-input>
 * It can also include custom prefix or suffix elements, which are displayed
 * before or after the text input itself. In order for an element to be
 * considered as a prefix, it must have the `prefix` attribute (and similarly
 * for `suffix`).
 *     <paper-input label="total">
 *       <div prefix>$</div>
 *       <paper-icon-button suffix icon="clear"></paper-icon-button>
 *     </paper-input>
 * A `paper-input` can use the native `type=search` or `type=file` features.
 * However, since we can't control the native styling of the input (search icon,
 * file button, date placeholder, etc.), in these cases the label will be
 * automatically floated. The `placeholder` attribute can still be used for
 * additional informational text.
 *     <paper-input label="search!" type="search"
 *         placeholder="search for cats" autosave="test" results="5">
 *     </paper-input>
 * See `Polymer.PaperInputBehavior` for more API docs.
 * ### Focus
 * To focus a paper-input, you can call the native `focus()` method as long as the
 * paper input has a tab index.
 * ### Styling
 * See `Polymer.PaperInputContainer` for a list of custom properties used to
 * style this element.
 * @group Paper Elements
 * @element paper-input
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperInput')
@PolymerRegister('paper-input',native:true)
@BowerImport(ref:'PolymerElements/paper-input#2.0-preview',import:"paper-input/paper-input.html",name:'paper-input')
abstract class PaperInput extends PolymerElement implements imp10.PaperInputBehavior {

}
