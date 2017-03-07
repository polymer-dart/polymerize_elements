@JS('Polymer')
library AppToolbar;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * app-toolbar is a horizontal toolbar containing items that can be used for
 * label, navigation, search and actions.
 * ### Example
 * Add a title to the toolbar.
 * ```html
 * <app-toolbar>
 *   <div main-title>App name</div>
 * </app-toolbar>
 * ```
 * Add a button to the left and right side of the toolbar.
 * ```html
 * <app-toolbar>
 *   <paper-icon-button icon="menu"></paper-icon-button>
 *   <div main-title>App name</div>
 *   <paper-icon-button icon="search"></paper-icon-button>
 * </app-toolbar>
 * ```
 * You can use the attributes `top-item` or `bottom-item` to completely fit an element
 * to the top or bottom of the toolbar respectively.
 * ### Content attributes
 * Attribute            | Description
 * ---------------------|---------------------------------------------------------
 * `main-title`         | The main title element.
 * `condensed-title`    | The title element if used inside a condensed app-header.
 * `spacer`             | Adds a left margin of `64px`.
 * `bottom-item`        | Sticks the element to the bottom of the toolbar.
 * `top-item`           | Sticks the element to the top of the toolbar.
 * ### Styling
 * Custom property              | Description                  | Default
 * -----------------------------|------------------------------|-----------------------
 * `--app-toolbar-font-size`    | Toolbar font size            | 20px
 * @group App Elements
 * @element app-toolbar
 * @demo app-toolbar/demo/index.html
 */

@JS('AppToolbar')
@PolymerRegister('app-toolbar',native:true)
@BowerImport(ref:'PolymerElements/app-layout#2.0-preview',import:"app-layout/app-toolbar/app-toolbar.html",name:'app-layout')
abstract class AppToolbar extends PolymerElement  {


}
