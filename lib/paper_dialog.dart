@JS('PolymerElements')
library PaperDialog;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/iron_overlay_backdrop.dart' as imp1;
import 'package:polymer_elements/iron_flex_layout.dart' as imp2;
import 'package:polymer_elements/neon_animatable_behavior.dart' as imp3;
import 'package:polymer_elements/neon_animation_runner_behavior.dart' as imp4;
import 'package:polymer_elements/iron_fit_behavior.dart' as imp5;
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp6;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp7;
import 'package:polymer_elements/iron_overlay_behavior.dart' as imp8;
import 'package:polymer_elements/paper_dialog_behavior.dart' as imp9;

/**
 * Material design: [Dialogs](https://www.google.com/design/spec/components/dialogs.html)
 * `<paper-dialog>` is a dialog with Material Design styling and optional animations when it is
 * opened or closed. It provides styles for a header, content area, and an action area for buttons.
 * You can use the `<paper-dialog-scrollable>` element (in its own repository) if you need a scrolling
 * content area. To autofocus a specific child element after opening the dialog, give it the `autofocus`
 * attribute. See `Polymer.PaperDialogBehavior` and `Polymer.IronOverlayBehavior` for specifics.
 * For example, the following code implements a dialog with a header, scrolling content area and
 * buttons. Focus will be given to the `dialog-confirm` button when the dialog is opened.
 *     <paper-dialog>
 *       <h2>Header</h2>
 *       <paper-dialog-scrollable>
 *         Lorem ipsum...
 *       </paper-dialog-scrollable>
 *       <div class="buttons">
 *         <paper-button dialog-dismiss>Cancel</paper-button>
 *         <paper-button dialog-confirm autofocus>Accept</paper-button>
 *       </div>
 *     </paper-dialog>
 * ### Styling
 * See the docs for `Polymer.PaperDialogBehavior` for the custom properties available for styling
 * this element.
 * ### Animations
 * Set the `entry-animation` and/or `exit-animation` attributes to add an animation when the dialog
 * is opened or closed. See the documentation in
 * [PolymerElements/neon-animation](https://github.com/PolymerElements/neon-animation) for more info.
 * For example:
 *     <link rel="import" href="components/neon-animation/animations/scale-up-animation.html">
 *     <link rel="import" href="components/neon-animation/animations/fade-out-animation.html">
 *     <paper-dialog entry-animation="scale-up-animation"
 *                   exit-animation="fade-out-animation">
 *       <h2>Header</h2>
 *       <div>Dialog body</div>
 *     </paper-dialog>
 * ### Accessibility
 * See the docs for `Polymer.PaperDialogBehavior` for accessibility features implemented by this
 * element.
 * @group Paper Elements
 * @element paper-dialog
 * @hero hero.svg
 * @demo demo/index.html
 */

//@JS('PaperButton')
@PolymerRegister('paper-dialog',native:true)
@BowerImport(ref:'PolymerElements/paper-dialog#2.0-preview',import:"paper-dialog/paper-dialog.html",name:'paper-dialog')
abstract class PaperDialog extends PolymerElement with imp9.PaperDialogBehavior,imp4.NeonAnimationRunnerBehavior {

}
