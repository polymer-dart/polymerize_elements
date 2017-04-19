@JS('Polymer')
library PaperRadioButton;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/paper_checked_element_behavior.dart' as imp0;

/**
 * Material design: [Radio button](https://www.google.com/design/spec/components/selection-controls.html#selection-controls-radio-button)
 * `paper-radio-button` is a button that can be either checked or unchecked.
 * User can tap the radio button to check or uncheck it.
 * Use a `<paper-radio-group>` to group a set of radio buttons.  When radio buttons
 * are inside a radio group, exactly one radio button in the group can be checked
 * at any time.
 * Example:
 *     <paper-radio-button></paper-radio-button>
 *     <paper-radio-button>Item label</paper-radio-button>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--paper-radio-button-unchecked-background-color` | Radio button background color when the input is not checked | `transparent`
 * `--paper-radio-button-unchecked-color` | Radio button color when the input is not checked | `--primary-text-color`
 * `--paper-radio-button-unchecked-ink-color` | Selected/focus ripple color when the input is not checked | `--primary-text-color`
 * `--paper-radio-button-checked-color` | Radio button color when the input is checked | `--primary-color`
 * `--paper-radio-button-checked-ink-color` | Selected/focus ripple color when the input is checked | `--primary-color`
 * `--paper-radio-button-size` | Size of the radio button | `16px`
 * `--paper-radio-button-ink-size` | Size of the ripple | `48px`
 * `--paper-radio-button-label-color` | Label color | `--primary-text-color`
 * `--paper-radio-button-label-spacing` | Spacing between the label and the button | `10px`
 * `--paper-radio-button-radio-container` | A mixin applied to the internal radio container | `{}`
 * This element applies the mixin `--paper-font-common-base` but does not import `paper-styles/typography.html`.
 * In order to apply the `Roboto` font to this element, make sure you've imported `paper-styles/typography.html`.
 * @group Paper Elements
 * @element paper-radio-button
 * @hero hero.svg
 * @demo demo/index.html
 */

@JS('PaperRadioButton')
@PolymerRegister('paper-radio-button',native:true)
@BowerImport(ref:'PolymerElements/paper-radio-button#2.0-preview',import:"paper-radio-button/paper-radio-button.html",name:'paper-radio-button')
abstract class PaperRadioButton extends PolymerElement implements imp0.PaperCheckedElementBehavior {
  /**
   * Fired when the checked state changes.
   * @event iron-change
   */
  external String get ariaActiveAttribute;
  external set ariaActiveAttribute(String value);


}
