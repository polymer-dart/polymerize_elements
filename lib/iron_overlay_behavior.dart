@JS('PolymerElements')
library Polymer.IronOverlayBehavior;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/iron_overlay_backdrop.dart' as imp0;
import 'package:polymer_elements/iron_fit_behavior.dart' as imp1;
import 'package:polymer_elements/iron_resizable_behavior.dart' as imp2;
import 'package:polymer_elements/iron_a11y_keys_behavior.dart' as imp3;

/**
 * 
 * Use `Polymer.IronOverlayBehavior` to implement an element that can be hidden or shown, and displays
 * on top of other content. It includes an optional backdrop, and can be used to implement a variety
 * of UI controls including dialogs and drop downs. Multiple overlays may be displayed at once.
 * See the [demo source code](https://github.com/PolymerElements/iron-overlay-behavior/blob/master/demo/simple-overlay.html)
 * for an example.
 * ### Closing and canceling
 * An overlay may be hidden by closing or canceling. The difference between close and cancel is user
 * intent. Closing generally implies that the user acknowledged the content on the overlay. By default,
 * it will cancel whenever the user taps outside it or presses the escape key. This behavior is
 * configurable with the `no-cancel-on-esc-key` and the `no-cancel-on-outside-click` properties.
 * `close()` should be called explicitly by the implementer when the user interacts with a control
 * in the overlay element. When the dialog is canceled, the overlay fires an 'iron-overlay-canceled'
 * event. Call `preventDefault` on this event to prevent the overlay from closing.
 * ### Positioning
 * By default the element is sized and positioned to fit and centered inside the window. You can
 * position and size it manually using CSS. See `Polymer.IronFitBehavior`.
 * ### Backdrop
 * Set the `with-backdrop` attribute to display a backdrop behind the overlay. The backdrop is
 * appended to `<body>` and is of type `<iron-overlay-backdrop>`. See its doc page for styling
 * options.
 * In addition, `with-backdrop` will wrap the focus within the content in the light DOM.
 * Override the [`_focusableNodes` getter](#Polymer.IronOverlayBehavior:property-_focusableNodes)
 * to achieve a different behavior.
 * ### Limitations
 * The element is styled to appear on top of other content by setting its `z-index` property. You
 * must ensure no element has a stacking context with a higher `z-index` than its parent stacking
 * context. You should place this element as a child of `<body>` whenever possible.
 * 
 */

@BowerImport(ref:'PolymerElements/iron-overlay-behavior#2.0-preview',import:"iron-overlay-behavior/iron-overlay-behavior.html",name:'iron-overlay-behavior')
abstract class IronOverlayBehavior implements imp1.IronFitBehavior,imp2.IronResizableBehavior {
  /**
   * True if the overlay is currently displayed.
   */
  bool get opened;
  set opened(bool value);

  /**
   * True if the overlay was canceled when it was last closed.
   */
  bool get canceled;
  set canceled(bool value);

  /**
   * Set to true to display a backdrop behind the overlay. It traps the focus
   * within the light DOM of the overlay.
   */
  bool get withBackdrop;
  set withBackdrop(bool value);

  /**
   * Set to true to disable auto-focusing the overlay or child nodes with
   * the `autofocus` attribute` when the overlay is opened.
   */
  bool get noAutoFocus;
  set noAutoFocus(bool value);

  /**
   * Set to true to disable canceling the overlay with the ESC key.
   */
  bool get noCancelOnEscKey;
  set noCancelOnEscKey(bool value);

  /**
   * Set to true to disable canceling the overlay by clicking outside it.
   */
  bool get noCancelOnOutsideClick;
  set noCancelOnOutsideClick(bool value);

  /**
   * Contains the reason(s) this overlay was last closed (see `iron-overlay-closed`).
   * `IronOverlayBehavior` provides the `canceled` reason; implementers of the
   * behavior can provide other reasons in addition to `canceled`.
   */
   get closingReason;
  set closingReason( value);

  /**
   * Set to true to enable restoring of focus when overlay is closed.
   */
  bool get restoreFocusOnClose;
  set restoreFocusOnClose(bool value);

  /**
   * Set to true to keep overlay always on top.
   */
  bool get alwaysOnTop;
  set alwaysOnTop(bool value);

}

