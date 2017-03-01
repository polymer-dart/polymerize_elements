@JS('Polymer')
library PaperSpinner;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_flex_layout.dart' as imp0;
import 'package:polymer_element/polymer_element.dart' as imp1;
import 'package:polymer_elements/paper_spinner_behavior.dart' as imp2;

/**
 * Material design: [Progress & activity](https://www.google.com/design/spec/components/progress-activity.html)
 * Element providing a multiple color material design circular spinner.
 *     <paper-spinner active></paper-spinner>
 * The default spinner cycles between four layers of colors; by default they are
 * blue, red, yellow and green. It can be customized to cycle between four different
 * colors. Use <paper-spinner-lite> for single color spinners.
 * ### Accessibility
 * Alt attribute should be set to provide adequate context for accessibility. If not provided,
 * it defaults to 'loading'.
 * Empty alt can be provided to mark the element as decorative if alternative content is provided
 * in another form (e.g. a text block following the spinner).
 *     <paper-spinner alt="Loading contacts list" active></paper-spinner>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-spinner-layer-1-color` | Color of the first spinner rotation | `--google-blue-500`
 * `--paper-spinner-layer-2-color` | Color of the second spinner rotation | `--google-red-500`
 * `--paper-spinner-layer-3-color` | Color of the third spinner rotation | `--google-yellow-500`
 * `--paper-spinner-layer-4-color` | Color of the fourth spinner rotation | `--google-green-500`
 * `--paper-spinner-stroke-width` | The width of the spinner stroke | 3px
 * @group Paper Elements
 * @element paper-spinner
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperSpinner')
@PolymerRegister('paper-spinner',native:true)
@BowerImport(ref:'PolymerElements/paper-spinner#2.0-preview',import:"paper-spinner/paper-spinner.html",name:'paper-spinner')
abstract class PaperSpinner extends PolymerElement implements imp2.PaperSpinnerBehavior {

}
