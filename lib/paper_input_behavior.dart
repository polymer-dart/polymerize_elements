@JS('PolymerElements')
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
abstract class PaperInputBehavior implements imp1.IronControlState,imp0.IronA11yKeysBehavior {
  /**
   * The label for this input. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * `<label>`'s content and `hidden` property, e.g.
   * `<label hidden$="[[!label]]">[[label]]</label>` in your `template`
   */
  String get label;
  set label(String value);

  /**
   * The value for this input. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<iron-input>`'s `bindValue`
   * property, or the value property of your input that is `notify:true`.
   */
  String get value;
  set value(String value);

  /**
   * Set to true to disable this input. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * both the `<paper-input-container>`'s and the input's `disabled` property.
   */
  bool get disabled;
  set disabled(bool value);

  /**
   * Returns true if the value is invalid. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to both the
   * `<paper-input-container>`'s and the input's `invalid` property.
   * If `autoValidate` is true, the `invalid` attribute is managed automatically,
   * which can clobber attempts to manage it manually.
   */
  bool get invalid;
  set invalid(bool value);

  /**
   * Set this to specify the pattern allowed by `preventInvalidInput`. If
   * you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `allowedPattern`
   * property.
   */
  String get allowedPattern;
  set allowedPattern(String value);

  /**
   * The type of the input. The supported types are `text`, `number` and `password`.
   * If you're using PaperInputBehavior to implement your own paper-input-like element,
   * bind this to the `<input is="iron-input">`'s `type` property.
   */
  String get type;
  set type(String value);

  /**
   * The datalist of the input (if any). This should match the id of an existing `<datalist>`.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `list` property.
   */
  String get list;
  set list(String value);

  /**
   * A pattern to validate the `input` with. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<input is="iron-input">`'s `pattern` property.
   */
  String get pattern;
  set pattern(String value);

  /**
   * Set to true to mark the input as required. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<input is="iron-input">`'s `required` property.
   */
  bool get required;
  set required(bool value);

  /**
   * The error message to display when the input is invalid. If you're using
   * PaperInputBehavior to implement your own paper-input-like element,
   * bind this to the `<paper-input-error>`'s content, if using.
   */
  String get errorMessage;
  set errorMessage(String value);

  /**
   * Set to true to show a character counter.
   */
  bool get charCounter;
  set charCounter(bool value);

  /**
   * Set to true to disable the floating label. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<paper-input-container>`'s `noLabelFloat` property.
   */
  bool get noLabelFloat;
  set noLabelFloat(bool value);

  /**
   * Set to true to always float the label. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<paper-input-container>`'s `alwaysFloatLabel` property.
   */
  bool get alwaysFloatLabel;
  set alwaysFloatLabel(bool value);

  /**
   * Set to true to auto-validate the input value. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<paper-input-container>`'s `autoValidate` property.
   */
  bool get autoValidate;
  set autoValidate(bool value);

  /**
   * Name of the validator to use. If you're using PaperInputBehavior to
   * implement your own paper-input-like element, bind this to
   * the `<input is="iron-input">`'s `validator` property.
   */
  String get validator;
  set validator(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autocomplete` property.
   */
  String get autocomplete;
  set autocomplete(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autofocus` property.
   */
  bool get autofocus;
  set autofocus(bool value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `inputmode` property.
   */
  String get inputmode;
  set inputmode(String value);

  /**
   * The minimum length of the input value.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `minlength` property.
   */
  num get minlength;
  set minlength(num value);

  /**
   * The maximum length of the input value.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `maxlength` property.
   */
  num get maxlength;
  set maxlength(num value);

  /**
   * The minimum (numeric or date-time) input value.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `min` property.
   */
  String get min;
  set min(String value);

  /**
   * The maximum (numeric or date-time) input value.
   * Can be a String (e.g. `"2000-01-01"`) or a Number (e.g. `2`).
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `max` property.
   */
  String get max;
  set max(String value);

  /**
   * Limits the numeric or date-time increments.
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `step` property.
   */
  String get step;
  set step(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `name` property.
   */
  String get name;
  set name(String value);

  /**
   * A placeholder string in addition to the label. If this is set, the label will always float.
   */
  String get placeholder;
  set placeholder(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `readonly` property.
   */
  bool get readonly;
  set readonly(bool value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `size` property.
   */
  num get size;
  set size(num value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autocapitalize` property.
   */
  String get autocapitalize;
  set autocapitalize(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autocorrect` property.
   */
  String get autocorrect;
  set autocorrect(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `autosave` property,
   * used with type=search.
   */
  String get autosave;
  set autosave(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `results` property,
   * used with type=search.
   */
  num get results;
  set results(num value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the `<input is="iron-input">`'s `accept` property,
   * used with type=file.
   */
  String get accept;
  set accept(String value);

  /**
   * If you're using PaperInputBehavior to implement your own paper-input-like
   * element, bind this to the`<input is="iron-input">`'s `multiple` property,
   * used with type=file.
   */
  bool get multiple;
  set multiple(bool value);

}

