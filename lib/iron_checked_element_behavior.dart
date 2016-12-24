@JS('PolymerElements')
library Polymer.IronCheckedElementBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_form_element_behavior.dart' as imp0;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp1;

/**
 * 
 * Use `Polymer.IronCheckedElementBehavior` to implement a custom element
 * that has a `checked` property, which can be used for validation if the
 * element is also `required`. Element instances implementing this behavior
 * will also be registered for use in an `iron-form` element.
 * 
 */

@BowerImport(ref:'PolymerElements/iron-checked-element-behavior#2.0-preview',import:"iron-checked-element-behavior/iron-checked-element-behavior.html",name:'Polymer.IronCheckedElementBehavior')
abstract class IronCheckedElementBehavior implements imp0.IronFormElementBehavior,imp1.IronValidatableBehavior {
  /**
   * Gets or sets the state, `true` is checked and `false` is unchecked.
   */
  bool get checked;
  set checked(bool value);

  /**
   * If true, the button toggles the active state with each tap or press
   * of the spacebar.
   */
  bool get toggles;
  set toggles(bool value);

  /**
   * Overriden from Polymer.IronFormElementBehavior
   */
  String get value;
  set value(String value);

}

