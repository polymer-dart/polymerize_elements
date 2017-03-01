@JS('Polymer')
library PaperToast;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_a11y_announcer.dart' as imp0;
import 'package:polymer_elements/iron_overlay_backdrop.dart' as imp1;
import 'package:polymer_element/polymer_element.dart' as imp2;
import 'package:polymer_elements/iron_fit_behavior.dart' as imp3;
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp4;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp5;
import 'package:polymer_elements/iron_overlay_behavior.dart' as imp6;
import 'package:polymer_elements/iron_overlay_behavior.dart' as imp7;

/**
 * Material design: [Snackbars & toasts](https://www.google.com/design/spec/components/snackbars-toasts.html)
 * `paper-toast` provides a subtle notification toast. Only one `paper-toast` will
 * be visible on screen.
 * Use `opened` to show the toast:
 * Example:
 *     <paper-toast text="Hello world!" opened></paper-toast>
 * Also `open()` or `show()` can be used to show the toast:
 * Example:
 *     <paper-button on-click="openToast">Open Toast</paper-button>
 *     <paper-toast id="toast" text="Hello world!"></paper-toast>
 *     ...
 *     openToast: function() {
 *       this.$.toast.open();
 *     }
 * Set `duration` to 0, a negative number or Infinity to persist the toast on screen:
 * Example:
 *     <paper-toast text="Terms and conditions" opened duration="0">
 *       <a href="#">Show more</a>
 *     </paper-toast>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-toast-background-color` | The paper-toast background-color | `#323232`
 * `--paper-toast-color` | The paper-toast color | `#f1f1f1`
 * This element applies the mixin `--paper-font-common-base` but does not import `paper-styles/typography.html`.
 * In order to apply the `Roboto` font to this element, make sure you've imported `paper-styles/typography.html`.
 * @group Paper Elements
 * @element paper-toast
 * @demo demo/index.html
 * @hero hero.svg
 */

@JS('PaperToast')
@PolymerRegister('paper-toast',native:true)
@BowerImport(ref:'PolymerElements/paper-toast#2.0-preview',import:"paper-toast/paper-toast.html",name:'paper-toast')
abstract class PaperToast extends PolymerElement implements imp7.IronOverlayBehavior {
  /**
   * The element to fit `this` into.
   * Overridden from `Polymer.IronFitBehavior`.
   */
  external  get fitInto;
  external set fitInto( value);

  /**
   * The orientation against which to align the dropdown content
   * horizontally relative to `positionTarget`.
   * Overridden from `Polymer.IronFitBehavior`.
   */
  external String get horizontalAlign;
  external set horizontalAlign(String value);

  /**
   * The orientation against which to align the dropdown content
   * vertically relative to `positionTarget`.
   * Overridden from `Polymer.IronFitBehavior`.
   */
  external String get verticalAlign;
  external set verticalAlign(String value);

  /**
   * The duration in milliseconds to show the toast.
   * Set to `0`, a negative number, or `Infinity`, to disable the
   * toast auto-closing.
   */
  external num get duration;
  external set duration(num value);

  /**
   * The text to display in the toast.
   */
  external String get text;
  external set text(String value);

  /**
   * Overridden from `IronOverlayBehavior`.
   * Set to false to enable closing of the toast by clicking outside it.
   */
  external bool get noCancelOnOutsideClick;
  external set noCancelOnOutsideClick(bool value);

  /**
   * Overridden from `IronOverlayBehavior`.
   * Set to true to disable auto-focusing the toast or child nodes with
   * the `autofocus` attribute` when the overlay is opened.
   */
  external bool get noAutoFocus;
  external set noAutoFocus(bool value);

}
