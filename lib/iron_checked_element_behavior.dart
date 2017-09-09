@JS('Polymer')
library Polymer.IronCheckedElementBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_form_element_behavior.dart' as imp0;
import 'package:polymer_elements/iron_validatable_behavior.dart' as imp1;
part 'iron_checked_element_behavior.polymerize.dart';
/**
 * Use `Polymer.IronCheckedElementBehavior` to implement a custom element
 * that has a `checked` property, which can be used for validation if the
 * element is also `required`. Element instances implementing this behavior
 * will also be registered for use in an `iron-form` element.
 */

@BowerImport(ref:'PolymerElements/iron-checked-element-behavior#v2.0.0',import:"iron-checked-element-behavior/iron-checked-element-behavior.html",name:'iron-checked-element-behavior')
@JS('IronCheckedElementBehavior')
abstract class IronCheckedElementBehavior implements imp0.IronFormElementBehavior,imp1.IronValidatableBehavior {
  /**
   * Gets or sets the state, `true` is checked and `false` is unchecked.
   */
  external bool get checked;
  external set checked(bool value);

  /**
   * If true, the button toggles the active state with each tap or press
   * of the spacebar.
   */
  external bool get toggles;
  external set toggles(bool value);

  /**
   * Overriden from Polymer.IronFormElementBehavior
   */
  external String get value;
  external set value(String value);

  /**
   * 
   */
  external void created();

}

