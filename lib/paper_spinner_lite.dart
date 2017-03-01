@JS('Polymer')
library PaperSpinnerLite;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_flex_layout.dart' as imp0;
import 'package:polymer_element/polymer_element.dart' as imp1;
import 'package:polymer_elements/paper_spinner_behavior.dart' as imp2;

/**
 * Material design: [Progress & activity](https://www.google.com/design/spec/components/progress-activity.html)
 * Element providing a single color material design circular spinner.
 *     <paper-spinner-lite active></paper-spinner-lite>
 * The default spinner is blue. It can be customized to be a different color.
 * ### Accessibility
 * Alt attribute should be set to provide adequate context for accessibility. If not provided,
 * it defaults to 'loading'.
 * Empty alt can be provided to mark the element as decorative if alternative content is provided
 * in another form (e.g. a text block following the spinner).
 *     <paper-spinner-lite alt="Loading contacts list" active></paper-spinner-lite>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-spinner-color` | Color of the spinner | `--google-blue-500`
 * `--paper-spinner-stroke-width` | The width of the spinner stroke | 3px
 * @group Paper Elements
 * @element paper-spinner-lite
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperSpinnerLite')
@PolymerRegister('paper-spinner-lite',native:true)
@BowerImport(ref:'PolymerElements/paper-spinner#2.0-preview',import:"paper-spinner/paper-spinner-lite.html",name:'paper-spinner')
abstract class PaperSpinnerLite extends PolymerElement implements imp2.PaperSpinnerBehavior {

}
