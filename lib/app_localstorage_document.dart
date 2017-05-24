@JS('Polymer')
library AppLocalstorageDocument;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_storage_behavior.dart' as imp0;

/**
 * app-localstorage-document synchronizes storage between an in-memory
 * value and a location in the browser's localStorage system.
 * localStorage is a simple and widely supported storage API that provides both
 * permanent and session-based storage options. Using app-localstorage-document
 * you can easily integrate localStorage into your app via normal Polymer
 * databinding.
 * app-localstorage-document is the reference implementation of an element
 * that uses `AppStorageBehavior`. Reading its code is a good way to get
 * started writing your own storage element.
 * Example use:
 *     <paper-input value="{{search}}"></paper-input>
 *     <app-localstorage-document key="search" data="{{search}}">
 *     </app-localstorage-document>
 * app-localstorage-document automatically synchronizes changes to the
 * same key across multiple tabs.
 * Only supports storing JSON-serializable values.
 */

@JS('AppLocalstorageDocument')
@PolymerRegister('app-localstorage-document',native:true)
@BowerImport(ref:'PolymerElements/app-storage#v2.0.0',import:"app-storage/app-localstorage/app-localstorage-document.html",name:'app-storage')
abstract class AppLocalstorageDocument extends PolymerElement implements imp0.AppStorageBehavior {
  /**
   * Defines the logical location to store the data.
   * @type{String}
   */
  external String get key;
  external set key(String value);

  /**
   * If true, the data will automatically be cleared from storage when
   * the page session ends (i.e. when the user has navigated away from
   * the page).
   */
  external bool get sessionOnly;
  external set sessionOnly(bool value);

  /**
   * Either `window.localStorage` or `window.sessionStorage`, depending on
   * `this.sessionOnly`.
   */
  external  get storage;
  external set storage( value);

  /**
   * 
   */
  external void isNew();

}
