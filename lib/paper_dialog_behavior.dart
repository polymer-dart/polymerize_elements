  @JS('Polymer')
  library Polymer.PaperDialogBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_elements/iron_overlay_backdrop.dart' as imp0;
import 'package:polymer_element/polymer_element.dart' as imp1;
import 'package:polymer_elements/iron_fit_behavior.dart' as imp2;
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp3;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp4;
import 'package:polymer_elements/iron_overlay_behavior.dart' as imp5;
import 'package:polymer_elements/iron_overlay_behavior.dart' as imp6;

  /**
 * 
 * Use `Polymer.PaperDialogBehavior` and `paper-dialog-shared-styles.html` to implement a Material Design
 * dialog.
 * For example, if `<paper-dialog-impl>` implements this behavior:
 *     <paper-dialog-impl>
 *         <h2>Header</h2>
 *         <div>Dialog body</div>
 *         <div class="buttons">
 *             <paper-button dialog-dismiss>Cancel</paper-button>
 *             <paper-button dialog-confirm>Accept</paper-button>
 *         </div>
 *     </paper-dialog-impl>
 * `paper-dialog-shared-styles.html` provide styles for a header, content area, and an action area for buttons.
 * Use the `<h2>` tag for the header and the `buttons` class for the action area. You can use the
 * `paper-dialog-scrollable` element (in its own repository) if you need a scrolling content area.
 * Use the `dialog-dismiss` and `dialog-confirm` attributes on interactive controls to close the
 * dialog. If the user dismisses the dialog with `dialog-confirm`, the `closingReason` will update
 * to include `confirmed: true`.
 * ### Accessibility
 * This element has `role="dialog"` by default. Depending on the context, it may be more appropriate
 * to override this attribute with `role="alertdialog"`.
 * If `modal` is set, the element will prevent the focus from exiting the element.
 * It will also ensure that focus remains in the dialog.
 * 
 */

@BowerImport(ref:'PolymerElements/paper-dialog-behavior#2.0-preview',import:"paper-dialog-behavior/paper-dialog-behavior.html",name:'paper-dialog-behavior')
@JS('PaperDialogBehavior')
abstract class PaperDialogBehavior implements imp6.IronOverlayBehavior {
  /**
   * If `modal` is true, this implies `no-cancel-on-outside-click`, `no-cancel-on-esc-key` and `with-backdrop`.
   */
  external bool get modal;
  external set modal(bool value);

}

