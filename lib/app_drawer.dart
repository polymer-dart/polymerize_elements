@JS('Polymer')
library AppDrawer;
import 'dart:html';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_flex_layout.dart' as imp0;

/**
 * app-drawer is a navigation drawer that can slide in from the left or right.
 * Example:
 * Align the drawer at the start, which is left in LTR layouts (default):
 * ```html
 * <app-drawer opened></app-drawer>
 * ```
 * Align the drawer at the end:
 * ```html
 * <app-drawer align="end" opened></app-drawer>
 * ```
 * To make the contents of the drawer scrollable, create a wrapper for the scroll
 * content, and apply height and overflow styles to it.
 * ```html
 * <app-drawer>
 *   <div style="height: 100%; overflow: auto;"></div>
 * </app-drawer>
 * ```
 * ### Styling
 * Custom property                  | Description                            | Default
 * ---------------------------------|----------------------------------------|--------------------
 * `--app-drawer-width`             | Width of the drawer                    | 256px
 * `--app-drawer-content-container` | Mixin for the drawer content container | {}
 * `--app-drawer-scrim-background`  | Background for the scrim               | rgba(0, 0, 0, 0.5)
 * @group App Elements
 * @element app-drawer
 * @demo app-drawer/demo/left-drawer.html Simple Left Drawer
 * @demo app-drawer/demo/right-drawer.html Right Drawer with Icons
 */

@JS('AppDrawer')
@PolymerRegister('app-drawer',native:true)
@BowerImport(ref:'PolymerElements/app-layout#2.0-preview',import:"app-layout/app-drawer/app-drawer.html",name:'app-layout')
abstract class AppDrawer extends PolymerElement  {
  /**
   * The opened state of the drawer.
   */
  external bool get opened;
  external set opened(bool value);

  /**
   * The drawer does not have a scrim and cannot be swiped close.
   */
  external bool get persistent;
  external set persistent(bool value);

  /**
   * The transition duration of the drawer in milliseconds.
   */
  external num get transitionDuration;
  external set transitionDuration(num value);

  /**
   * The alignment of the drawer on the screen ('left', 'right', 'start' or 'end').
   * 'start' computes to left and 'end' to right in LTR layout and vice versa in RTL
   * layout.
   */
  external String get align;
  external set align(String value);

  /**
   * The computed, read-only position of the drawer on the screen ('left' or 'right').
   */
  external String get position;
  external set position(String value);

  /**
   * Create an area at the edge of the screen to swipe open the drawer.
   */
  external bool get swipeOpen;
  external set swipeOpen(bool value);

  /**
   * Trap keyboard focus when the drawer is opened and not persistent.
   */
  external bool get noFocusTrap;
  external set noFocusTrap(bool value);

}
