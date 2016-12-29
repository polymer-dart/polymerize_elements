@JS('PolymerElements')
library IronAutogrowTextarea;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_flex_layout.dart' as imp0;
import 'package:polymer_elements/iron_meta.dart' as imp1;
import 'package:polymer_elements/iron_control_state.dart' as imp2;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp3;

/**
 * `iron-autogrow-textarea` is an element containing a textarea that grows in height as more
 * lines of input are entered. Unless an explicit height or the `maxRows` property is set, it will
 * never scroll.
 * Example:
 *     <iron-autogrow-textarea></iron-autogrow-textarea>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--iron-autogrow-textarea` | Mixin applied to the textarea | `{}`
 * `--iron-autogrow-textarea-placeholder` | Mixin applied to the textarea placeholder | `{}`
 * @group Iron Elements
 * @hero hero.svg
 * @demo demo/index.html
 */

//@JS('PaperButton')
@PolymerRegister('iron-autogrow-textarea',native:true)
@BowerImport(ref:'PolymerElements/iron-autogrow-textarea#2.0-preview',import:"iron-autogrow-textarea/iron-autogrow-textarea.html",name:'iron-autogrow-textarea')
abstract class IronAutogrowTextarea extends PolymerElement with imp3.IronValidatableBehavior,imp2.IronControlState {
  /**
   * Use this property instead of `value` for two-way data binding.
   * @type {string|number}
   */
  String get value;
  set value(String value);

  /**
   * This property is deprecated, and just mirrors `value`. Use `value` instead.
   * @type {string|number}
   */
  String get bindValue;
  set bindValue(String value);

  /**
   * The initial number of rows.
   * @attribute rows
   * @type number
   * @default 1
   */
  num get rows;
  set rows(num value);

  /**
   * The maximum number of rows this element can grow to until it
   * scrolls. 0 means no maximum.
   * @attribute maxRows
   * @type number
   * @default 0
   */
  num get maxRows;
  set maxRows(num value);

  /**
   * Bound to the textarea's `autocomplete` attribute.
   */
  String get autocomplete;
  set autocomplete(String value);

  /**
   * Bound to the textarea's `autofocus` attribute.
   */
  bool get autofocus;
  set autofocus(bool value);

  /**
   * Bound to the textarea's `inputmode` attribute.
   */
  String get inputmode;
  set inputmode(String value);

  /**
   * Bound to the textarea's `placeholder` attribute.
   */
  String get placeholder;
  set placeholder(String value);

  /**
   * Bound to the textarea's `readonly` attribute.
   */
  String get readonly;
  set readonly(String value);

  /**
   * Set to true to mark the textarea as required.
   */
  bool get required;
  set required(bool value);

  /**
   * The maximum length of the input value.
   */
  num get maxlength;
  set maxlength(num value);

}
