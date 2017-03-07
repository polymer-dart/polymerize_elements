@JS('Polymer')
library Polymer.IronOverlayBehaviorImpl;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_fit_behavior.dart' as imp0;
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp1;

/**
 * 
 */

@BowerImport(ref:'PolymerElements/iron-overlay-behavior#2.0-preview',import:"iron-overlay-behavior/iron-overlay-behavior.html",name:'iron-overlay-behavior')
@JS('IronOverlayBehaviorImpl')
abstract class IronOverlayBehaviorImpl  {
  /**
   * True if the overlay is currently displayed.
   */
  external bool get opened;
  external set opened(bool value);

  /**
   * True if the overlay was canceled when it was last closed.
   */
  external bool get canceled;
  external set canceled(bool value);

  /**
   * Set to true to display a backdrop behind the overlay. It traps the focus
   * within the light DOM of the overlay.
   */
  external bool get withBackdrop;
  external set withBackdrop(bool value);

  /**
   * Set to true to disable auto-focusing the overlay or child nodes with
   * the `autofocus` attribute` when the overlay is opened.
   */
  external bool get noAutoFocus;
  external set noAutoFocus(bool value);

  /**
   * Set to true to disable canceling the overlay with the ESC key.
   */
  external bool get noCancelOnEscKey;
  external set noCancelOnEscKey(bool value);

  /**
   * Set to true to disable canceling the overlay by clicking outside it.
   */
  external bool get noCancelOnOutsideClick;
  external set noCancelOnOutsideClick(bool value);

  /**
   * Contains the reason(s) this overlay was last closed (see `iron-overlay-closed`).
   * `IronOverlayBehavior` provides the `canceled` reason; implementers of the
   * behavior can provide other reasons in addition to `canceled`.
   */
  external  get closingReason;
  external set closingReason( value);

  /**
   * Set to true to enable restoring of focus when overlay is closed.
   */
  external bool get restoreFocusOnClose;
  external set restoreFocusOnClose(bool value);

  /**
   * Set to true to keep overlay always on top.
   */
  external bool get alwaysOnTop;
  external set alwaysOnTop(bool value);

  /**
   * The backdrop element.
   * @type {Element}
   */
  external void backdropElement();

  /**
   * 
   */
  external void ready();

  /**
   * 
   */
  external void attached();

  /**
   * 
   */
  external void detached();

  /**
   * Toggle the opened state of the overlay.
   */
  external void toggle();

  /**
   * Open the overlay.
   */
  external void open();

  /**
   * Close the overlay.
   */
  external void close();

  /**
   * Cancels the overlay.
   * @param {Event=} event The original event
   */
  external void cancel();

  /**
   * Invalidates the cached tabbable nodes. To be called when any of the focusable
   * content changes (e.g. a button is disabled).
   */
  external void invalidateTabbables();

}

/**
 *   Use `Polymer.IronOverlayBehavior` to implement an element that can be hidden or shown, and displays
 *   on top of other content. It includes an optional backdrop, and can be used to implement a variety
 *   of UI controls including dialogs and drop downs. Multiple overlays may be displayed at once.
 *   See the [demo source code](https://github.com/PolymerElements/iron-overlay-behavior/blob/master/demo/simple-overlay.html)
 *   for an example.
 *   ### Closing and canceling
 *   An overlay may be hidden by closing or canceling. The difference between close and cancel is user
 *   intent. Closing generally implies that the user acknowledged the content on the overlay. By default,
 *   it will cancel whenever the user taps outside it or presses the escape key. This behavior is
 *   configurable with the `no-cancel-on-esc-key` and the `no-cancel-on-outside-click` properties.
 *   `close()` should be called explicitly by the implementer when the user interacts with a control
 *   in the overlay element. When the dialog is canceled, the overlay fires an 'iron-overlay-canceled'
 *   event. Call `preventDefault` on this event to prevent the overlay from closing.
 *   ### Positioning
 *   By default the element is sized and positioned to fit and centered inside the window. You can
 *   position and size it manually using CSS. See `Polymer.IronFitBehavior`.
 *   ### Backdrop
 *   Set the `with-backdrop` attribute to display a backdrop behind the overlay. The backdrop is
 *   appended to `<body>` and is of type `<iron-overlay-backdrop>`. See its doc page for styling
 *   options.
 *   In addition, `with-backdrop` will wrap the focus within the content in the light DOM.
 *   Override the [`_focusableNodes` getter](#Polymer.IronOverlayBehavior:property-_focusableNodes)
 *   to achieve a different behavior.
 *   ### Limitations
 *   The element is styled to appear on top of other content by setting its `z-index` property. You
 *   must ensure no element has a stacking context with a higher `z-index` than its parent stacking
 *   context. You should place this element as a child of `<body>` whenever possible.
 *   
 */

@BowerImport(ref:'PolymerElements/iron-overlay-behavior#2.0-preview',import:"iron-overlay-behavior/iron-overlay-behavior.html",name:'iron-overlay-behavior')
@JS('IronOverlayBehavior')
abstract class IronOverlayBehavior implements imp0.IronFitBehavior,imp1.IronResizableBehavior,IronOverlayBehaviorImpl {


}

