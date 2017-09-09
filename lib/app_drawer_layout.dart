@JS('Polymer')
library AppDrawerLayout;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_layout_behavior.dart' as imp0;
part 'app_drawer_layout.polymerize.dart';
/**
 * app-drawer-layout is a wrapper element that positions an app-drawer and other content. When
 * the viewport width is smaller than `responsiveWidth`, this element changes to narrow layout.
 * In narrow layout, the drawer will be stacked on top of the main content. The drawer will slide
 * in/out to hide/reveal the main content.
 * By default the drawer is aligned to the start, which is left in LTR layouts:
 * ```html
 * <app-drawer-layout>
 *   <app-drawer slot="drawer">
 *     drawer content
 *   </app-drawer>
 *   <div>
 *     main content
 *   </div>
 * </app-drawer-layout>
 * ```
 * Align the drawer at the end:
 * ```html
 * <app-drawer-layout>
 *   <app-drawer slot="drawer" align="end">
 *      drawer content
 *   </app-drawer>
 *   <div>
 *     main content
 *   </div>
 * </app-drawer-layout>
 * ```
 * With an app-header-layout:
 * ```html
 * <app-drawer-layout>
 *   <app-drawer slot="drawer">
 *     drawer-content
 *   </app-drawer>
 *   <app-header-layout>
 *     <app-header slot="header">
 *       <app-toolbar>
 *         <div main-title>App name</div>
 *       </app-toolbar>
 *     </app-header>
 *     main content
 *   </app-header-layout>
 * </app-drawer-layout>
 * ```
 * Add the `drawer-toggle` attribute to elements inside `app-drawer-layout` that toggle the drawer on click events:
 * ```html
 * <app-drawer-layout>
 *   <app-drawer slot="drawer">
 *     drawer-content
 *   </app-drawer>
 *   <app-header-layout>
 *     <app-header slot="header">
 *       <app-toolbar>
 *         <paper-icon-button icon="menu" drawer-toggle></paper-icon-button>
 *         <div main-title>App name</div>
 *       </app-toolbar>
 *     </app-header>
 *     main content
 *   </app-header-layout>
 * </app-drawer-layout>
 * ```
 * **NOTE:** With app-layout 2.0, the `drawer-toggle` element will not be automatically hidden
 * when app-drawer-layout is not in narrow layout. To add this, add the following CSS rule where
 * app-drawer-layout is used:
 * ```css
 * app-drawer-layout:not([narrow]) [drawer-toggle] {
 *   display: none;
 * }
 * ```
 * Add the `fullbleed` attribute to app-drawer-layout to make it fit the size of its container:
 * ```html
 * <app-drawer-layout fullbleed>
 *   <app-drawer slot="drawer">
 *      drawer content
 *   </app-drawer>
 *   <div>
 *     main content
 *   </div>
 * </app-drawer-layout>
 * ```
 * ### Styling
 * Custom property                          | Description                          | Default
 * -----------------------------------------|--------------------------------------|---------
 * `--app-drawer-width`                     | Width of the drawer                  | 256px
 * `--app-drawer-layout-content-transition` | Transition for the content container | none
 * **NOTE:** If you use <app-drawer> with <app-drawer-layout> and specify a value for
 * `--app-drawer-width`, that value must be accessible by both elements. This can be done by
 * defining the value on the `:host` that contains <app-drawer-layout> (or `html` if outside
 * a shadow root):
 * ```css
 * :host {
 *   --app-drawer-width: 300px;
 * }
 * ```
 * @group App Elements
 * @element app-drawer-layout
 * @demo app-drawer-layout/demo/simple-drawer.html Simple Demo
 * @demo app-drawer-layout/demo/two-drawers.html Two drawers
 */

@JS('AppDrawerLayout')
@PolymerRegister('app-drawer-layout',native:true)
@BowerImport(ref:'PolymerElements/app-layout#v2.0.0',import:"app-layout/app-drawer-layout/app-drawer-layout.html",name:'app-layout')
abstract class AppDrawerLayout extends PolymerElement implements imp0.AppLayoutBehavior {
  /**
   * If true, ignore `responsiveWidth` setting and force the narrow layout.
   */
  external bool get forceNarrow;
  external set forceNarrow(bool value);

  /**
   * If the viewport's width is smaller than this value, the panel will change to narrow
   * layout. In the mode the drawer will be closed.
   */
  external String get responsiveWidth;
  external set responsiveWidth(String value);

  /**
   * Returns true if it is in narrow layout. This is useful if you need to show/hide
   * elements based on the layout.
   */
  external bool get narrow;
  external set narrow(bool value);

  /**
   * If true, the drawer will initially be opened when in narrow layout mode.
   */
  external bool get openedWhenNarrow;
  external set openedWhenNarrow(bool value);

  /**
   * A reference to the app-drawer element.
   * @property drawer
   */
  external void drawer();

}
