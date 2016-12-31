@JS('Polymer')
library Polymer.IronValidatableBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_meta.dart' as imp0;

/**
 * 
 * `Use Polymer.IronValidatableBehavior` to implement an element that validates user input.
 * Use the related `Polymer.IronValidatorBehavior` to add custom validation logic to an iron-input.
 * By default, an `<iron-form>` element validates its fields when the user presses the submit button.
 * To validate a form imperatively, call the form's `validate()` method, which in turn will
 * call `validate()` on all its children. By using `Polymer.IronValidatableBehavior`, your
 * custom element will get a public `validate()`, which
 * will return the validity of the element, and a corresponding `invalid` attribute,
 * which can be used for styling.
 * To implement the custom validation logic of your element, you must override
 * the protected `_getValidity()` method of this behaviour, rather than `validate()`.
 * See [this](https://github.com/PolymerElements/iron-form/blob/master/demo/simple-element.html)
 * for an example.
 * ### Accessibility
 * Changing the `invalid` property, either manually or by calling `validate()` will update the
 * `aria-invalid` attribute.
 * 
 */

@BowerImport(ref:'PolymerElements/iron-validatable-behavior#2.0-preview',import:"iron-validatable-behavior/iron-validatable-behavior.html",name:'iron-validatable-behavior')
@JS('IronValidatableBehavior')
abstract class IronValidatableBehavior  {
  /**
   * Name of the validator to use.
   */
  external String get validator;
  external set validator(String value);

  /**
   * True if the last call to `validate` is invalid.
   */
  external bool get invalid;
  external set invalid(bool value);

}

