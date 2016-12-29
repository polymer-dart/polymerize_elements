@JS('PolymerElements')
library PaperCheckbox;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;
import 'package:polymer_elements/paper_ripple.dart' as imp1;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp2;
import 'package:polymer_elements/iron_checked_element_behavior.dart' as imp3;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp4;
import 'package:polymer_elements/iron_control_state.dart' as imp5;
import 'package:polymer_elements/iron_button_state.dart' as imp6;
import 'package:polymer_elements/paper_ripple_behavior.dart' as imp7;
import 'package:polymer_elements/paper_inky_focus_behavior.dart' as imp8;
import 'package:polymer_elements/paper_checked_element_behavior.dart' as imp9;

/**
 * Material design: [Checkbox](https://www.google.com/design/spec/components/selection-controls.html#selection-controls-checkbox)
 * `paper-checkbox` is a button that can be either checked or unchecked.  User
 * can tap the checkbox to check or uncheck it.  Usually you use checkboxes
 * to allow user to select multiple options from a set.  If you have a single
 * ON/OFF option, avoid using a single checkbox and use `paper-toggle-button`
 * instead.
 * Example:
 *     <paper-checkbox>label</paper-checkbox>
 *     <paper-checkbox checked> label</paper-checkbox>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-checkbox-unchecked-background-color` | Checkbox background color when the input is not checked | `transparent`
 * `--paper-checkbox-unchecked-color` | Checkbox border color when the input is not checked | `--primary-text-color`
 * `--paper-checkbox-unchecked-ink-color` | Selected/focus ripple color when the input is not checked | `--primary-text-color`
 * `--paper-checkbox-checked-color` | Checkbox color when the input is checked | `--primary-color`
 * `--paper-checkbox-checked-ink-color` | Selected/focus ripple color when the input is checked | `--primary-color`
 * `--paper-checkbox-checkmark-color` | Checkmark color | `white`
 * `--paper-checkbox-label-color` | Label color | `--primary-text-color`
 * `--paper-checkbox-label-checked-color` | Label color when the input is checked | `--paper-checkbox-label-color`
 * `--paper-checkbox-label-spacing` | Spacing between the label and the checkbox | `8px`
 * `--paper-checkbox-label` | Mixin applied to the label | `{}`
 * `--paper-checkbox-label-checked` | Mixin applied to the label when the input is checked | `{}`
 * `--paper-checkbox-error-color` | Checkbox color when invalid | `--error-color`
 * `--paper-checkbox-size` | Size of the checkbox | `18px`
 * `--paper-checkbox-ink-size` | Size of the ripple | `48px`
 * `--paper-checkbox-margin` | Margin around the checkbox container | `initial`
 * `--paper-checkbox-vertical-align` | Vertical alignment of the checkbox container | `middle`
 * This element applies the mixin `--paper-font-common-base` but does not import `paper-styles/typography.html`.
 * In order to apply the `Roboto` font to this element, make sure you've imported `paper-styles/typography.html`.
 * @demo demo/index.html
 */

//@JS('PaperButton')
@PolymerRegister('paper-checkbox',native:true)
@BowerImport(ref:'PolymerElements/paper-checkbox#2.0-preview',import:"paper-checkbox/paper-checkbox.html",name:'paper-checkbox')
abstract class PaperCheckbox extends PolymerElement with imp9.PaperCheckedElementBehavior {
  /**
   * Fired when the checked state changes.
   * @event iron-change
   */
  String get ariaActiveAttribute;
  set ariaActiveAttribute(String value);

}
