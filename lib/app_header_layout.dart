@JS('Polymer')
library AppHeaderLayout;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_layout_behavior.dart' as imp0;

/**
 * app-header-layout is a wrapper element that positions an app-header and other content. This
 * element uses the document scroll by default, but it can also define its own scrolling region.
 * Using the document scroll:
 * ```html
 * <app-header-layout>
 *   <app-header slot="header" fixed condenses effects="waterfall">
 *     <app-toolbar>
 *       <div main-title>App name</div>
 *     </app-toolbar>
 *   </app-header>
 *   <div>
 *     main content
 *   </div>
 * </app-header-layout>
 * ```
 * Using an own scrolling region:
 * ```html
 * <app-header-layout has-scrolling-region style="width: 300px; height: 400px;">
 *   <app-header slot="header" fixed condenses effects="waterfall">
 *     <app-toolbar>
 *       <div main-title>App name</div>
 *     </app-toolbar>
 *   </app-header>
 *   <div>
 *     main content
 *   </div>
 * </app-header-layout>
 * ```
 * Add the `fullbleed` attribute to app-header-layout to make it fit the size of its container:
 * ```html
 * <app-header-layout fullbleed>
 *  ...
 * </app-header-layout>
 * ```
 * @group App Elements
 * @element app-header-layout
 * @demo app-header-layout/demo/simple.html Simple Demo
 * @demo app-header-layout/demo/scrolling-region.html Scrolling Region
 * @demo app-header-layout/demo/music.html Music Demo
 * @demo app-header-layout/demo/footer.html Footer Demo
 */

@JS('AppHeaderLayout')
@PolymerRegister('app-header-layout',native:true)
@BowerImport(ref:'PolymerElements/app-layout#v2.0.0',import:"app-layout/app-header-layout/app-header-layout.html",name:'app-layout')
abstract class AppHeaderLayout extends PolymerElement implements imp0.AppLayoutBehavior {
  /**
   * If true, the current element will have its own scrolling region.
   * Otherwise, it will use the document scroll to control the header.
   */
  external bool get hasScrollingRegion;
  external set hasScrollingRegion(bool value);

  /**
   * A reference to the app-header element.
   * @property header
   */
  external void header();

}
