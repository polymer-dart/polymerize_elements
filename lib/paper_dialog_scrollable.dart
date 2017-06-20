@JS('Polymer')
library PaperDialogScrollable;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * Material design: [Dialogs](https://www.google.com/design/spec/components/dialogs.html)
 * `paper-dialog-scrollable` implements a scrolling area used in a Material Design dialog. It shows
 * a divider at the top and/or bottom indicating more content, depending on scroll position. Use this
 * together with elements implementing `Polymer.PaperDialogBehavior`.
 *     <paper-dialog-impl>
 *       <h2>Header</h2>
 *       <paper-dialog-scrollable>
 *         Lorem ipsum...
 *       </paper-dialog-scrollable>
 *       <div class="buttons">
 *         <paper-button>OK</paper-button>
 *       </div>
 *     </paper-dialog-impl>
 * It shows a top divider after scrolling if it is not the first child in its parent container,
 * indicating there is more content above. It shows a bottom divider if it is scrollable and it is not
 * the last child in its parent container, indicating there is more content below. The bottom divider
 * is hidden if it is scrolled to the bottom.
 * If `paper-dialog-scrollable` is not a direct child of the element implementing `Polymer.PaperDialogBehavior`,
 * remember to set the `dialogElement`:
 *     <paper-dialog-impl id="myDialog">
 *       <h2>Header</h2>
 *       <div class="my-content-wrapper">
 *         <h4>Sub-header</h4>
 *         <paper-dialog-scrollable>
 *           Lorem ipsum...
 *         </paper-dialog-scrollable>
 *       </div>
 *       <div class="buttons">
 *         <paper-button>OK</paper-button>
 *       </div>
 *     </paper-dialog-impl>
 *     <script>
 *       var scrollable = Polymer.dom(myDialog).querySelector('paper-dialog-scrollable');
 *       scrollable.dialogElement = myDialog;
 *     </script>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-dialog-scrollable` | Mixin for the scrollable content | {}
 * @group Paper Elements
 * @element paper-dialog-scrollable
 * @demo demo/index.html
 * @hero hero.svg
 */

@JS('PaperDialogScrollable')
@PolymerRegister('paper-dialog-scrollable',native:true)
@BowerImport(ref:'PolymerElements/paper-dialog-scrollable#v2.1.0',import:"paper-dialog-scrollable/paper-dialog-scrollable.html",name:'paper-dialog-scrollable')
abstract class PaperDialogScrollable extends PolymerElement  {
  /**
   * The dialog element that implements `Polymer.PaperDialogBehavior` containing this element.
   * @type {?Node}
   */
  external  get dialogElement;
  external set dialogElement( value);

  /**
   * Returns the scrolling element.
   */
  external void scrollTarget();

}
