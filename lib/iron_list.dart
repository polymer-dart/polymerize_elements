@JS('Polymer')
library IronList;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp0;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp1;
import 'package:polymer_elements/iron_scroll_target_behavior.dart' as imp2;
import 'package:polymer_element/polymer_element.dart' as imp3;

/**
 * `iron-list` displays a virtual, 'infinite' list. The template inside
 * the iron-list element represents the DOM to create for each list item.
 * The `items` property specifies an array of list item data.
 * For performance reasons, not every item in the list is rendered at once;
 * instead a small subset of actual template elements *(enough to fill the viewport)*
 * are rendered and reused as the user scrolls. As such, it is important that all
 * state of the list template be bound to the model driving it, since the view may
 * be reused with a new model at any time. Particularly, any state that may change
 * as the result of a user interaction with the list item must be bound to the model
 * to avoid view state inconsistency.
 * ### Sizing iron-list
 * `iron-list` must either be explicitly sized, or delegate scrolling to an
 * explicitly sized parent. By "explicitly sized", we mean it either has an explicit
 * CSS `height` property set via a class or inline style, or else is sized by other
 * layout means (e.g. the `flex` or `fit` classes).
 * #### Flexbox - [jsbin](http://jsbin.com/kokaki/edit?html,output)
 * ```html
 * <template is="x-list">
 *   <style>
 *     :host {
 *       display: block;
 *       height: 100vh;
 *       display: flex;
 *       flex-direction: column;
 *     }
 *     iron-list {
 *       flex: 1 1 auto;
 *     }
 *   </style>
 *   <app-toolbar>App name</app-toolbar>
 *   <iron-list items="[[items]]">
 *     <template>
 *       ...
 *     </template>
 *   </iron-list>
 * </template>
 * ```
 * #### Explicit size - [jsbin](http://jsbin.com/pibefo/edit?html,output)
 * ```html
 * <template is="x-list">
 *   <style>
 *     :host {
 *       display: block;
 *     }
 *     iron-list {
 *       height: 100vh; /* don't use % values unless the parent element is sized. */
 *     }
 *   </style>
 *   <iron-list items="[[items]]">
 *     <template>
 *       ...
 *     </template>
 *   </iron-list>
 * </template>
 * ```
 * #### Main document scrolling - [jsbin](http://jsbin.com/cojuli/edit?html,output)
 * ```html
 * <head>
 *   <style>
 *     body {
 *       height: 100vh;
 *       margin: 0;
 *       display: flex;
 *       flex-direction: column;
 *     }
 *     app-toolbar {
 *       position: fixed;
 *       top: 0;
 *       left: 0;
 *       right: 0;
 *     }
 *     iron-list {
 *       /* add padding since the app-toolbar is fixed at the top */
 *       padding-top: 64px;
 *     }
 *   </style>
 * </head>
 * <body>
 *   <template is="dom-bind">
 *     <app-toolbar>App name</app-toolbar>
 *     <iron-list target="document" items="[[items]]">
 *       <template>
 *         ...
 *       </template>
 *     </iron-list>
 *   </template>
 * </body>
 * ```
 * ### Template model
 * List item templates should bind to template models of the following structure:
 * ```js
 * {
 *   index: 0,        // index in the item array
 *   selected: false, // true if the current item is selected
 *   tabIndex: -1,    // a dynamically generated tabIndex for focus management
 *   item: {}         // user data corresponding to items[index]
 * }
 * ```
 * Alternatively, you can change the property name used as data index by changing the
 * `indexAs` property. The `as` property defines the name of the variable to add to the binding
 * scope for the array.
 * For example, given the following `data` array:
 * ##### data.json
 * ```js
 * [
 *   {"name": "Bob"},
 *   {"name": "Tim"},
 *   {"name": "Mike"}
 * ]
 * ```
 * The following code would render the list (note the name and checked properties are
 * bound from the model object provided to the template scope):
 * ```html
 * <template is="dom-bind">
 *   <iron-ajax url="data.json" last-response="{{data}}" auto></iron-ajax>
 *   <iron-list items="[[data]]" as="item">
 *     <template>
 *       <div>
 *         Name: [[item.name]]
 *       </div>
 *     </template>
 *   </iron-list>
 * </template>
 * ```
 * ### Grid layout
 * `iron-list` supports a grid layout in addition to linear layout by setting
 * the `grid` attribute.  In this case, the list template item must have both fixed
 * width and height (e.g. via CSS). Based on this, the number of items
 * per row are determined automatically based on the size of the list viewport.
 * ### Accessibility
 * `iron-list` automatically manages the focus state for the items. It also provides
 * a `tabIndex` property within the template scope that can be used for keyboard navigation.
 * For example, users can press the up and down keys to move to previous and next
 * items in the list:
 * ```html
 * <iron-list items="[[data]]" as="item">
 *   <template>
 *     <div tabindex$="[[tabIndex]]">
 *       Name: [[item.name]]
 *     </div>
 *   </template>
 * </iron-list>
 * ```
 * ### Styling
 * You can use the `--iron-list-items-container` mixin to style the container of items:
 * ```css
 * iron-list {
 *  --iron-list-items-container: {
 *     margin: auto;
 *   };
 * }
 * ```
 * ### Resizing
 * `iron-list` lays out the items when it receives a notification via the `iron-resize` event.
 * This event is fired by any element that implements `IronResizableBehavior`.
 * By default, elements such as `iron-pages`, `paper-tabs` or `paper-dialog` will trigger
 * this event automatically. If you hide the list manually (e.g. you use `display: none`)
 * you might want to implement `IronResizableBehavior` or fire this event manually right
 * after the list became visible again. For example:
 * ```js
 * document.querySelector('iron-list').fire('iron-resize');
 * ```
 * ### When should `<iron-list>` be used?
 * `iron-list` should be used when a page has significantly more DOM nodes than the ones
 * visible on the screen. e.g. the page has 500 nodes, but only 20 are visible at the time.
 * This is why we refer to it as a `virtual` list. In this case, a `dom-repeat` will still
 * create 500 nodes which could slow down the web app, but `iron-list` will only create 20.
 * However, having an `iron-list` does not mean that you can load all the data at once.
 * Say, you have a million records in the database, you want to split the data into pages
 * so you can bring a page at the time. The page could contain 500 items, and iron-list
 * will only render 20.
 * @group Iron Element
 * @element iron-list
 * @demo demo/index.html
 */

@JS('IronList')
@PolymerRegister('iron-list',native:true)
@BowerImport(ref:'PolymerElements/iron-list#14150593d8b469b51552f78c15d55655d609eb2e',import:"iron-list/iron-list.html",name:'iron-list')
abstract class IronList extends PolymerElement implements imp3.Templatizer,imp0.IronResizableBehavior,imp2.IronScrollTargetBehavior {
  /**
   * An array containing items determining how many instances of the template
   * to stamp and that that each template instance should bind to.
   */
  external List get items;
  external set items(List value);

  /**
   * The max count of physical items the pool can extend to.
   */
  external num get maxPhysicalCount;
  external set maxPhysicalCount(num value);

  /**
   * The name of the variable to add to the binding scope for the array
   * element associated with a given template instance.
   */
  external String get as;
  external set as(String value);

  /**
   * The name of the variable to add to the binding scope with the index
   * for the row.
   */
  external String get indexAs;
  external set indexAs(String value);

  /**
   * The name of the variable to add to the binding scope to indicate
   * if the row is selected.
   */
  external String get selectedAs;
  external set selectedAs(String value);

  /**
   * When true, the list is rendered as a grid. Grid items must have
   * fixed width and height set via CSS. e.g.
   * ```html
   * <iron-list grid>
   *   <template>
   *      <div style="width: 100px; height: 100px;"> 100x100 </div>
   *   </template>
   * </iron-list>
   * ```
   */
  external bool get grid;
  external set grid(bool value);

  /**
   * When true, tapping a row will select the item, placing its data model
   * in the set of selected items retrievable via the selection property.
   * Note that tapping focusable elements within the list item will not
   * result in selection, since they are presumed to have their * own action.
   */
  external bool get selectionEnabled;
  external set selectionEnabled(bool value);

  /**
   * When `multiSelection` is false, this is the currently selected item, or `null`
   * if no item is selected.
   */
  external  get selectedItem;
  external set selectedItem( value);

  /**
   * When `multiSelection` is true, this is an array that contains the selected items.
   */
  external  get selectedItems;
  external set selectedItems( value);

  /**
   * When `true`, multiple items may be selected at once (in this case,
   * `selected` is an array of currently selected items).  When `false`,
   * only one item may be selected at a time.
   */
  external bool get multiSelection;
  external set multiSelection(bool value);

}
