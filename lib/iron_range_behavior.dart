  @JS('Polymer')
  library Polymer.IronRangeBehavior;
  import 'package:html5/html.dart';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  import 'package:polymer_element/polymer_element.dart' as imp0;

  /**
 * 
 * `iron-range-behavior` provides the behavior for something with a minimum to maximum range.
 * 
 */

@BowerImport(ref:'PolymerElements/iron-range-behavior#2.0-preview',import:"iron-range-behavior/iron-range-behavior.html",name:'iron-range-behavior')
@JS('IronRangeBehavior')
abstract class IronRangeBehavior  {
  /**
   * The number that represents the current value.
   */
  external num get value;
  external set value(num value);

  /**
   * The number that indicates the minimum value of the range.
   */
  external num get min;
  external set min(num value);

  /**
   * The number that indicates the maximum value of the range.
   */
  external num get max;
  external set max(num value);

  /**
   * Specifies the value granularity of the range's value.
   */
  external num get step;
  external set step(num value);

  /**
   * Returns the ratio of the value.
   */
  external num get ratio;
  external set ratio(num value);

}

