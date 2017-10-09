@JS('Polymer')
library IronCollapse;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp0;

part 'iron_collapse.polymerize.dart';


/**
 * `iron-collapse` creates a collapsible block of content.  By default, the content
 * will be collapsed.  Use `opened` or `toggle()` to show/hide the content.
 *     <button on-click="toggle">toggle collapse</button>
 *     <iron-collapse id="collapse">
 *       <div>Content goes here...</div>
 *     </iron-collapse>
 *     ...
 *     toggle: function() {
 *       this.$.collapse.toggle();
 *     }
 * `iron-collapse` adjusts the max-height/max-width of the collapsible element to show/hide
 * the content.  So avoid putting padding/margin/border on the collapsible directly,
 * and instead put a div inside and style that.
 *     <style>
 *       .collapse-content {
 *         padding: 15px;
 *         border: 1px solid #dedede;
 *       }
 *     </style>
 *     <iron-collapse>
 *       <div class="collapse-content">
 *         <div>Content goes here...</div>
 *       </div>
 *     </iron-collapse>
 * ### Styling
 * The following custom properties and mixins are available for styling:
 * Custom property | Description | Default
 * ----------------|-------------|----------
 * `--iron-collapse-transition-duration` | Animation transition duration | `300ms`
 * @group Iron Elements
 * @hero hero.svg
 * @demo demo/index.html
 * @element iron-collapse
 */

@JS('IronCollapse')
@PolymerRegister('iron-collapse',native:true)
@BowerImport(ref:'PolymerElements/iron-collapse#v2.0.0',import:"iron-collapse/iron-collapse.html",name:'iron-collapse')
abstract class IronCollapse extends PolymerElement implements imp0.IronResizableBehavior {
  /**
   * If true, the orientation is horizontal; otherwise is vertical.
   * @attribute horizontal
   */
  external bool get horizontal;
  external set horizontal(bool value);

  /**
   * Set opened to true to show the collapse element and to false to hide it.
   * @attribute opened
   */
  external bool get opened;
  external set opened(bool value);

  /**
   * When true, the element is transitioning its opened state. When false,
   * the element has finished opening/closing.
   * @attribute transitioning
   */
  external bool get transitioning;
  external set transitioning(bool value);

  /**
   * Set noAnimation to true to disable animations.
   * @attribute noAnimation
   */
  external bool get noAnimation;
  external set noAnimation(bool value);

  /**
   * 
   */
  external void dimension();

}
