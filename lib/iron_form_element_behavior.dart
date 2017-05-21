@JS('Polymer')
library Polymer.IronFormElementBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 *   Polymer.IronFormElementBehavior enables a custom element to be included
 *   in an `iron-form`.
 *   Events `iron-form-element-register` and `iron-form-element-unregister` are not fired on Polymer 2.0.
 *   
 */

@BowerImport(ref:'PolymerElements/iron-form-element-behavior#v2.0.0',import:"iron-form-element-behavior/iron-form-element-behavior.html",name:'iron-form-element-behavior')
@JS('IronFormElementBehavior')
abstract class IronFormElementBehavior  {
  /**
   * The name of this element.
   */
  external String get name;
  external set name(String value);

  /**
   * The value for this element.
   */
  external String get value;
  external set value(String value);

  /**
   * Set to true to mark the input as required. If used in a form, a
   * custom element that uses this behavior should also use
   * Polymer.IronValidatableBehavior and define a custom validation method.
   * Otherwise, a `required` element will always be considered valid.
   * It's also strongly recommended to provide a visual style for the element
   * when its value is invalid.
   */
  external bool get required;
  external set required(bool value);


}

