  @JS('Polymer')
  library Polymer.IronFitBehavior;
  import 'dart:html';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  

  /**
 * 
 * `Polymer.IronFitBehavior` fits an element in another element using `max-height` and `max-width`, and
 * optionally centers it in the window or another element.
 * The element will only be sized and/or positioned if it has not already been sized and/or positioned
 * by CSS.
 * CSS properties               | Action
 * -----------------------------|-------------------------------------------
 * `position` set               | Element is not centered horizontally or vertically
 * `top` or `bottom` set        | Element is not vertically centered
 * `left` or `right` set        | Element is not horizontally centered
 * `max-height` set             | Element respects `max-height`
 * `max-width` set              | Element respects `max-width`
 * `Polymer.IronFitBehavior` can position an element into another element using
 * `verticalAlign` and `horizontalAlign`. This will override the element's css position.
 *       <div class="container">
 *         <iron-fit-impl vertical-align="top" horizontal-align="auto">
 *           Positioned into the container
 *         </iron-fit-impl>
 *       </div>
 * Use `noOverlap` to position the element around another element without overlapping it.
 *       <div class="container">
 *         <iron-fit-impl no-overlap vertical-align="auto" horizontal-align="auto">
 *           Positioned around the container
 *         </iron-fit-impl>
 *       </div>
 * Use `horizontalOffset, verticalOffset` to offset the element from its `positionTarget`;
 * `Polymer.IronFitBehavior` will collapse these in order to keep the element
 * within `fitInto` boundaries, while preserving the element's CSS margin values.
 *       <div class="container">
 *         <iron-fit-impl vertical-align="top" vertical-offset="20">
 *           With vertical offset
 *         </iron-fit-impl>
 *       </div>
 * 
 */

@BowerImport(ref:'PolymerElements/iron-fit-behavior#2.0-preview',import:"iron-fit-behavior/iron-fit-behavior.html",name:'iron-fit-behavior')
@JS('IronFitBehavior')
abstract class IronFitBehavior  {
  /**
   * The element that will receive a `max-height`/`width`. By default it is the same as `this`,
   * but it can be set to a child element. This is useful, for example, for implementing a
   * scrolling region inside the element.
   * @type {!Element}
   */
  external  get sizingTarget;
  external set sizingTarget( value);

  /**
   * The element to fit `this` into.
   */
  external  get fitInto;
  external set fitInto( value);

  /**
   * Will position the element around the positionTarget without overlapping it.
   */
  external bool get noOverlap;
  external set noOverlap(bool value);

  /**
   * The element that should be used to position the element. If not set, it will
   * default to the parent node.
   * @type {!Element}
   */
  external Element get positionTarget;
  external set positionTarget(Element value);

  /**
   * The orientation against which to align the element horizontally
   * relative to the `positionTarget`. Possible values are "left", "right", "auto".
   */
  external String get horizontalAlign;
  external set horizontalAlign(String value);

  /**
   * The orientation against which to align the element vertically
   * relative to the `positionTarget`. Possible values are "top", "bottom", "auto".
   */
  external String get verticalAlign;
  external set verticalAlign(String value);

  /**
   * If true, it will use `horizontalAlign` and `verticalAlign` values as preferred alignment
   * and if there's not enough space, it will pick the values which minimize the cropping.
   */
  external bool get dynamicAlign;
  external set dynamicAlign(bool value);

  /**
   * A pixel value that will be added to the position calculated for the
   * given `horizontalAlign`, in the direction of alignment. You can think
   * of it as increasing or decreasing the distance to the side of the
   * screen given by `horizontalAlign`.
   * If `horizontalAlign` is "left", this offset will increase or decrease
   * the distance to the left side of the screen: a negative offset will
   * move the dropdown to the left; a positive one, to the right.
   * Conversely if `horizontalAlign` is "right", this offset will increase
   * or decrease the distance to the right side of the screen: a negative
   * offset will move the dropdown to the right; a positive one, to the left.
   */
  external num get horizontalOffset;
  external set horizontalOffset(num value);

  /**
   * A pixel value that will be added to the position calculated for the
   * given `verticalAlign`, in the direction of alignment. You can think
   * of it as increasing or decreasing the distance to the side of the
   * screen given by `verticalAlign`.
   * If `verticalAlign` is "top", this offset will increase or decrease
   * the distance to the top side of the screen: a negative offset will
   * move the dropdown upwards; a positive one, downwards.
   * Conversely if `verticalAlign` is "bottom", this offset will increase
   * or decrease the distance to the bottom side of the screen: a negative
   * offset will move the dropdown downwards; a positive one, upwards.
   */
  external num get verticalOffset;
  external set verticalOffset(num value);

  /**
   * Set to true to auto-fit on attach.
   */
  external bool get autoFitOnAttach;
  external set autoFitOnAttach(bool value);

}

