@JS('Polymer')
library Polymer.PaperInputBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp0;
import 'package:polymer_elements/iron_control_state.dart' as imp1;

/**
 * 
 * Use `Polymer.PaperInputBehavior` to implement inputs with `<paper-input-container>`. This
 * behavior is implemented by `<paper-input>`. It exposes a number of properties from
 * `<paper-input-container>` and `<input is="iron-input">` and they should be bound in your
 * template.
 * The input element can be accessed by the `inputElement` property if you need to access
 * properties or methods that are not exposed.
 * 
 */

@BowerImport(ref:'PolymerElements/paper-input#2.0-preview',import:"paper-input/paper-input-behavior.html",name:'paper-input')
@JS('PaperInputBehavior')
abstract class PaperInputBehavior implements imp1.IronControlState,imp0.IronA11yKeysBehavior {
  /**
   * The label for this input. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * `<label>`'s content and `hidden` property, e.g.
   * `<label hidden$="[[!label]]">[[label]]</label>` in your `template`
   */
  external String get label;
  external set label(String value);

  /**
   * The value for this input. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<iron-input>`'s `bindValue`
   * property, or the value property of your input that is `notify:true`.
   */
  external String get value;
  external set value(String value);

  /**
   * Set to true to disable this input. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * both the `<paper-input-container>`'s and the input's `disabled` property.
   */
  external bool get disabled;
  external set disabled(bool value);

  /**
   * Returns true if the value is invalid. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to both the
   * `<paper-input-container>`'s and the input's `invalid` property.
   * If `autoValidate` is true, the `invalid` attribute is managed automatically,
   * which can clobber attempts to manage it manually.
   */
  external bool get invalid;
  external set invalid(bool value);

  /**
   * Set this to specify the pattern allowed by `preventInvalidInput`. If
   * you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `allowedPattern`
   * property.
   */
  external String get allowedPattern;
  external set allowedPattern(String value);

  /**
   * The type of the input. The supported types are `text`, `number` and `password`.
   * If you're using PaperInputBehavior to implement your own paper-input-like element,
   * bind this to the `<input is="iron-input">`'s `type` property.
   */
  external String get type;
  external set type(String value);

  /**
   * The datalist of the input (if any). This should match the id of an existing `<datalist>`.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `list` property.
   */
  external String get list;
  external set list(String value);

  /**
   * A pattern to validate the `input` with. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<input is="iron-input">`'s `pattern` property.
   */
  external String get pattern;
  external set pattern(String value);

  /**
   * Set to true to mark the input as required. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<input is="iron-input">`'s `required` property.
   */
  external bool get required;
  external set required(bool value);

  /**
   * The error message to display when the input is invalid. If you're using
   * PaperInputBehavior to implement your own paper-input-like element,
   * bind this to the `<paper-input-error>`'s content, if using.
   */
  external String get errorMessage;
  external set errorMessage(String value);

  /**
   * Set to true to show a character counter.
   */
  external bool get charCounter;
  external set charCounter(bool value);

  /**
   * Set to true to disable the floating label. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<paper-input-container>`'s `noLabelFloat` property.
   */
  external bool get noLabelFloat;
  external set noLabelFloat(bool value);

  /**
   * Set to true to always float the label. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<paper-input-container>`'s `alwaysFloatLabel` property.
   */
  external bool get alwaysFloatLabel;
  external set alwaysFloatLabel(bool value);

  /**
   * Set to true to auto-validate the input value. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<paper-input-container>`'s `autoValidate` property.
   */
  external bool get autoValidate;
  external set autoValidate(bool value);

  /**
   * Name of the validator to use. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<input is="iron-input">`'s `validator` property.
   */
  external String get validator;
  external set validator(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autocomplete` property.
   */
  external String get autocomplete;
  external set autocomplete(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autofocus` property.
   */
  external bool get autofocus;
  external set autofocus(bool value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `inputmode` property.
   */
  external String get inputmode;
  external set inputmode(String value);

  /**
   * The minimum length of the input value.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `minlength` property.
   */
  external num get minlength;
  external set minlength(num value);

  /**
   * The maximum length of the input value.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `maxlength` property.
   */
  external num get maxlength;
  external set maxlength(num value);

  /**
   * The minimum (numeric or date-time) input value.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `min` property.
   */
  external String get min;
  external set min(String value);

  /**
   * The maximum (numeric or date-time) input value.
   * Can be a String (e.g. `"2000-01-01"`) or a Number (e.g. `2`).
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `max` property.
   */
  external String get max;
  external set max(String value);

  /**
   * Limits the numeric or date-time increments.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `step` property.
   */
  external String get step;
  external set step(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `name` property.
   */
  external String get name;
  external set name(String value);

  /**
   * A placeholder string in addition to the label. If this is set, the label will always float.
   */
  external String get placeholder;
  external set placeholder(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `readonly` property.
   */
  external bool get readonly;
  external set readonly(bool value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `size` property.
   */
  external num get size;
  external set size(num value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autocapitalize` property.
   */
  external String get autocapitalize;
  external set autocapitalize(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autocorrect` property.
   */
  external String get autocorrect;
  external set autocorrect(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autosave` property,
   * used with type=search.
   */
  external String get autosave;
  external set autosave(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `results` property,
   * used with type=search.
   */
  external num get results;
  external set results(num value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `accept` property,
   * used with type=file.
   */
  external String get accept;
  external set accept(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the`<input is="iron-input">`'s `multiple` property,
   * used with type=file.
   */
  external bool get multiple;
  external set multiple(bool value);

}

