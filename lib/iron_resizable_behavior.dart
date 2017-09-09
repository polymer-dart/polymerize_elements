@JS('Polymer')
library Polymer.IronResizableBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'iron_resizable_behavior.polymerize.dart';

/**
 * `IronResizableBehavior` is a behavior that can be used in Polymer elements to
 * coordinate the flow of resize events between "resizers" (elements that control the
 * size or hidden state of their children) and "resizables" (elements that need to be
 * notified when they are resized or un-hidden by their parents in order to take
 * action on their new measurements).
 * Elements that perform measurement should add the `IronResizableBehavior` behavior to
 * their element definition and listen for the `iron-resize` event on themselves.
 * This event will be fired when they become showing after having been hidden,
 * when they are resized explicitly by another resizable, or when the window has been
 * resized.
 * Note, the `iron-resize` event is non-bubbling.
 */

@BowerImport(ref:'PolymerElements/iron-resizable-behavior#v2.0.0',import:"iron-resizable-behavior/iron-resizable-behavior.html",name:'iron-resizable-behavior')
@JS('IronResizableBehavior')
abstract class IronResizableBehavior  {

  /**
   * 
   */
  external void created();

  /**
   * 
   */
  external void attached();

  /**
   * 
   */
  external void detached();

  /**
   * Can be called to manually notify a resizable and its descendant
   * resizables of a resize change.
   */
  external void notifyResize();

  /**
   * Used to assign the closest resizable ancestor to this resizable
   * if the ancestor detects a request for notifications.
   */
  external void assignParentResizable();

  /**
   * Used to remove a resizable descendant from the list of descendants
   * that should be notified of a resize change.
   */
  external void stopResizeNotificationsFor();

  /**
   * This method can be overridden to filter nested elements that should or
   * should not be notified by the current element. Return true if an element
   * should be notified, or false if it should not be notified.
   * @param {HTMLElement} element A candidate descendant element that
   * implements `IronResizableBehavior`.
   * @return {boolean} True if the `element` should be notified of resize.
   */
  external void resizerShouldNotify();

}

