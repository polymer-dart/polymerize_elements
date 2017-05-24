@JS('Polymer')
library AppPouchdbSync;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * `app-pouchdb-sync` arranges for one-directional or bi-directional
 * synchronization between two PouchDB databases. For one-directional
 * synchronization, it forwards to `PouchDB.replicate`, and for bi-directional
 * synchronization, it forwards to `PouchDB.sync`.
 * Here is an example of bi-directional synchronization between a local database
 * and a remote one:
 * ```html
 * <app-pouchdb-sync
 *     src="cats"
 *     target="https://example.com:5678/cats"
 *     bidirectional>
 * </app-pouchdb-sync>
 * ```
 * For more information on PouchDB synchronization topics, please refer to the
 * documentation [here](https://pouchdb.com/guides/replication.html).
 */

@JS('AppPouchdbSync')
@PolymerRegister('app-pouchdb-sync',native:true)
@BowerImport(ref:'PolymerElements/app-pouchdb#v2.0.0',import:"app-pouchdb/app-pouchdb-sync.html",name:'app-pouchdb')
abstract class AppPouchdbSync extends PolymerElement  {
  /**
   * The source to sync from. If this sync is `bidirectional`, then the
   * `src` and `target` values are interchangeable.
   */
  external String get src;
  external set src(String value);

  /**
   * The `target` to sync to. If this sync is `bidirectional`, then the
   * `src` and `target` values are interchangeable.
   */
  external String get target;
  external set target(String value);

  /**
   * While `false`, synchronization will only happen from the `src` to the
   * `target`. One-directional synchronization follows the semantics of
   * `PouchDB.replicate`. Set to `true` to make the sync bidirectional,
   * which uses `PouchDB.sync` instead.
   */
  external bool get bidirectional;
  external set bidirectional(bool value);

  /**
   * An event emitter that notifies of events in the synchronization
   * process.
   */
  external  get sync;
  external set sync( value);

  /**
   * Set to true to log change events that are emitted by the `sync`
   * instance.
   */
  external bool get log;
  external set log(bool value);


}
