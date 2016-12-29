@JS('PolymerElements')
library AppDrawerLayout;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_media_query.dart' as imp0;
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp1;
import 'package:polymer_elements/app_layout_behavior.dart' as imp2;

/**
 * app-drawer-layout is a wrapper element that positions an app-drawer and other content. When
 * the viewport width is smaller than `responsiveWidth`, this element changes to narrow layout.
 * In narrow layout, the drawer will be stacked on top of the main content. The drawer will slide
 * in/out to hide/reveal the main content.
 * By default the drawer is aligned to the start, which is left in LTR layouts:
 * ```html
 * <app-drawer-layout>
 *   <app-drawer>
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
 *   <app-drawer align="end">
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
 *   <app-drawer>
 *     drawer-content
 *   </app-drawer>
 *   <app-header-layout>
 *     <app-header>
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
 *   <app-drawer>
 *     drawer-content
 *   </app-drawer>
 *   <app-header-layout>
 *     <app-header>
 *       <app-toolbar>
 *         <paper-icon-button icon="menu" drawer-toggle></paper-icon-button>
 *         <div main-title>App name</div>
 *       </app-toolbar>
 *     </app-header>
 *     main content
 *   </app-header-layout>
 * </app-drawer-layout>
 * ```
 * Add the `fullbleed` attribute to app-drawer-layout to make it fit the size of its container:
 * ```html
 * <app-drawer-layout fullbleed>
 *   <app-drawer>
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
 * `--app-drawer-layout-content-transition` | Transition for the content container | none
 * @group App Elements
 * @element app-drawer-layout
 * @demo app-drawer-layout/demo/simple-drawer.html Simple Demo
 * @demo app-drawer-layout/demo/two-drawers.html Two drawers
 */

//@JS('PaperButton')
@PolymerRegister('app-drawer-layout',native:true)
@BowerImport(ref:'PolymerElements/app-layout#2.0-preview',import:"app-layout/app-drawer-layout/app-drawer-layout.html",name:'app-layout')
abstract class AppDrawerLayout extends PolymerElement with imp2.AppLayoutBehavior {
  /**
   * If true, ignore `responsiveWidth` setting and force the narrow layout.
   */
  bool get forceNarrow;
  set forceNarrow(bool value);

  /**
   * If the viewport's width is smaller than this value, the panel will change to narrow
   * layout. In the mode the drawer will be closed.
   */
  String get responsiveWidth;
  set responsiveWidth(String value);

  /**
   * Returns true if it is in narrow layout. This is useful if you need to show/hide
   * elements based on the layout.
   */
  bool get narrow;
  set narrow(bool value);

  /**
   * If true, the drawer will initially be opened when in narrow layout mode.
   */
  bool get openedWhenNarrow;
  set openedWhenNarrow(bool value);

}
