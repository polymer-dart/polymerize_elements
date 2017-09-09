@JS('Polymer')
library PaperItemBody;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'paper_item_body.polymerize.dart';

/**
 * Use `<paper-item-body>` in a `<paper-item>` or `<paper-icon-item>` to make two- or
 * three- line items. It is a flex item that is a vertical flexbox.
 *     <paper-item>
 *       <paper-item-body two-line>
 *         <div>Show your status</div>
 *         <div secondary>Your status is visible to everyone</div>
 *       </paper-item-body>
 *     </paper-item>
 * The child elements with the `secondary` attribute is given secondary text styling.
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-item-body-two-line-min-height`   | Minimum height of a two-line item          | `72px`
 * `--paper-item-body-three-line-min-height` | Minimum height of a three-line item        | `88px`
 * `--paper-item-body-secondary-color`       | Foreground color for the `secondary` area  | `--secondary-text-color`
 * `--paper-item-body-secondary`             | Mixin applied to the `secondary` area      | `{}`
 */

@JS('PaperItemBody')
@PolymerRegister('paper-item-body',native:true)
@BowerImport(ref:'PolymerElements/paper-item#v2.0.0',import:"paper-item/paper-item-body.html",name:'paper-item')
abstract class PaperItemBody extends PolymerElement  {


}
