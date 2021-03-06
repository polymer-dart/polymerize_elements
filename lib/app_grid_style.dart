@JS('Polymer')
library AppGrid;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'app_grid_style.polymerize.dart';

/**
 * app-grid is a helper class useful for creating responsive, fluid grid layouts using custom properties.
 * Because custom properties can be defined inside a `@media` rule, you can customize the grid layout
 * for different responsive breakpoints.
 * Example:
 * Import `app-grid-style.html` and include `app-grid-style` in the style of an element's definition.
 * Then, add the class `app-grid` to a container such as `ul` or `div`:
 * ```html
 * <template>
 *   <style include="app-grid-style">
 *     :host {
 *       --app-grid-columns: 3;
 *       --app-grid-item-height: 100px;
 *     }
 *     ul {
 *       padding: 0;
 *       list-style: none;
 *     }
 *     .item {
 *       background-color: white;
 *     }
 *   </style>
 *   <ul class="app-grid">
 *     <li class="item">1</li>
 *     <li class="item">2</li>
 *     <li class="item">3</li>
 *   </ul>
 * </template>
 * ```
 * In the example above, the grid  will take 3 columns per row.
 * ### Expandible items
 * In many cases, it's useful to expand an item more than 1 column. To achieve this type of layout,
 * you can specify the number of columns the item should expand to by setting the custom property
 * `--app-grid-expandible-item-columns`. To indicate which item should expand, apply the mixin
 * `--app-grid-expandible-item` to a rule with a selector to the item. For example:
 * <pre><code>
 * &lt;template>
 *   &lt;style include="app-grid-style">
 *     :host {
 *       --app-grid-columns: 3;
 *       --app-grid-item-height: 100px;
 *       --app-grid-expandible-item-columns: 3;
 *     }
 *     /* Only the first item should expand */
 *     .item:first-child {
 *       &#64;apply --app-grid-expandible-item;
 *     }
 *   &lt;/style>
 * &lt;/template>
 * </code></pre>
 * ### Preserving the aspect ratio
 * When the size of a grid item should preserve the aspect ratio, you can add the `has-aspect-ratio`
 * attribute to the element with the class `.app-grid`. Now, every item element becomes a wrapper around
 * the item content. For example:
 * ```html
 * <template>
 *   <style include="app-grid-style">
 *     :host {
 *       --app-grid-columns: 3;
 *       /* 50% the width of the item is equivalent to 2:1 aspect ratio*/
 *       --app-grid-item-height: 50%;
 *     }
 *     .item {
 *       background-color: white;
 *     }
 *   </style>
 *   <ul class="app-grid" has-aspect-ratio>
 *     <li class="item">
 *       <div>item 1</div>
 *     </li>
 *     <li class="item">
 *       <div>item 2</div>
 *     </li>
 *     <li class="item">
 *       <div>item 3</div>
 *     </li>
 *   </ul>
 * </template>
 * ```
 * ### Styling
 * Custom property                               | Description                                                | Default
 * ----------------------------------------------|------------------------------------------------------------|------------------
 * `--app-grid-columns`                          | The number of columns per row.                             | 1
 * `--app-grid-gutter`                           | The space between two items.                               | 0px
 * `--app-grid-item-height`                      | The height of the items.                                   | auto
 * `--app-grid-expandible-item-columns`          | The number of columns an expandible item should expand to. | 1
 */

@JS('AppGrid')
@PolymerRegister('app-grid',native:true)
@BowerImport(ref:'PolymerElements/app-layout#v2.0.0',import:"app-layout/app-grid/app-grid-style.html",name:'app-layout')
abstract class AppGrid extends PolymerElement  {


}
