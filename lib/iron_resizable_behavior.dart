  @JS('Polymer')
  library Polymer.IronResizableBehavior;
  import 'dart:html';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  

  /**
 * 
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
 * 
 */

@BowerImport(ref:'PolymerElements/iron-resizable-behavior#2.0-preview',import:"iron-resizable-behavior/iron-resizable-behavior.html",name:'iron-resizable-behavior')
@JS('IronResizableBehavior')
abstract class IronResizableBehavior  {

}

