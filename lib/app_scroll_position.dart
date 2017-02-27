@JS('Polymer')
library AppScrollPosition;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_scroll_target_behavior.dart' as imp0;

/**
 * app-scroll-position is a manager for saving and restoring the scroll position when multiple
 * pages are sharing the same document scroller.
 * Example:
 * ```html
 * <app-scroll-position selected="{{page}}"></app-scroll-position>
 * <app-drawer-layout>
 *   <app-drawer>
 *     <paper-listbox selected="{{page}}">
 *       <paper-item>Home</paper-item>
 *       <paper-item>About</paper-item>
 *       <paper-item>Schedule</paper-item>
 *       <paper-item>Account</paper-item>
 *     </paper-listbox>
 *   </app-drawer>
 *   <div>
 *     <app-toolbar>
 *       <paper-icon-button icon="menu" drawer-toggle></paper-icon-button>
 *     </app-toolbar>
 *     <iron-pages selected="{{page}}">
 *       <sample-content size="100"></sample-content>
 *       <sample-content size="100"></sample-content>
 *       <sample-content size="100"></sample-content>
 *       <sample-content size="100"></sample-content>
 *     </iron-pages>
 *   </div>
 * </app-drawer-layout>
 * ```
 * @group App Elements
 * @element app-scroll-position
 * @demo app-scroll-position/demo/index.html
 */

@JS('AppScrollPosition')
@PolymerRegister('app-scroll-position',native:true)
@BowerImport(ref:'PolymerElements/app-layout#2.0-preview',import:"app-layout/app-scroll-position/app-scroll-position.html",name:'app-layout')
abstract class AppScrollPosition extends PolymerElement implements imp0.IronScrollTargetBehavior {
  /**
   * The selected page.
   */
  external String get selected;
  external set selected(String value);

  /**
   * Reset the scroll position to 0.
   */
  external bool get reset;
  external set reset(bool value);

}
