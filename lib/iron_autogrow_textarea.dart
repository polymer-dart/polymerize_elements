@JS('Polymer')
library IronAutogrowTextarea;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp0;
import 'package:polymer_elements/iron_control_state.dart' as imp1;

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

@JS('IronAutogrowTextarea')
@PolymerRegister('iron-autogrow-textarea',native:true)
@BowerImport(ref:'PolymerElements/iron-autogrow-textarea#v2.0.0',import:"iron-autogrow-textarea/iron-autogrow-textarea.html",name:'iron-autogrow-textarea')
abstract class IronAutogrowTextarea extends PolymerElement implements imp0.IronValidatableBehavior,imp1.IronControlState {
  /**
   * Use this property instead of `bind-value` for two-way data binding.
   * @type {string|number}
   */
  external String get value;
  external set value(String value);

  /**
   * This property is deprecated, and just mirrors `value`. Use `value` instead.
   * @type {string|number}
   */
  external String get bindValue;
  external set bindValue(String value);

  /**
   * The initial number of rows.
   * @attribute rows
   * @type number
   * @default 1
   */
  external num get rows;
  external set rows(num value);

  /**
   * The maximum number of rows this element can grow to until it
   * scrolls. 0 means no maximum.
   * @attribute maxRows
   * @type number
   * @default 0
   */
  external num get maxRows;
  external set maxRows(num value);

  /**
   * Bound to the textarea's `autocomplete` attribute.
   */
  external String get autocomplete;
  external set autocomplete(String value);

  /**
   * Bound to the textarea's `autofocus` attribute.
   */
  external bool get autofocus;
  external set autofocus(bool value);

  /**
   * Bound to the textarea's `inputmode` attribute.
   */
  external String get inputmode;
  external set inputmode(String value);

  /**
   * Bound to the textarea's `placeholder` attribute.
   */
  external String get placeholder;
  external set placeholder(String value);

  /**
   * Bound to the textarea's `readonly` attribute.
   */
  external String get readonly;
  external set readonly(String value);

  /**
   * Set to true to mark the textarea as required.
   */
  external bool get required;
  external set required(bool value);

  /**
   * The minimum length of the input value.
   */
  external num get minlength;
  external set minlength(num value);

  /**
   * The maximum length of the input value.
   */
  external num get maxlength;
  external set maxlength(num value);

  /**
   * Returns the underlying textarea.
   * @type HTMLTextAreaElement
   */
  external void textarea();

  /**
   * Returns textarea's selection start.
   * @type Number
   */
  external void selectionStart();

  /**
   * Returns textarea's selection end.
   * @type Number
   */
  external void selectionEnd();

}
