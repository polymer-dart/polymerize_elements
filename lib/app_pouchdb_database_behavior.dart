@JS('Polymer')
library Polymer.AppPouchDBDatabaseBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * `Polymer.AppPouchDBDatabaseBehavior` is an abstract implementation that
 * is intended to be shared by any element that refers to and operates on a
 * PouchDB database instance. It includes implementation for creating and
 * configuring a PouchDB database instance, and some advanced macro
 * operations that might be performed on the database, including "upsert"
 * and conflict-aware "put" and "post" operations.
 */

@BowerImport(ref:'PolymerElements/app-pouchdb#v2.0.0',import:"app-pouchdb/app-pouchdb-database-behavior.html",name:'app-pouchdb')
@JS('AppPouchDBDatabaseBehavior')
abstract class AppPouchDBDatabaseBehavior  {
  /**
   * The PouchDB adapter to use. For more information on PouchDB adapters,
   * please refer to the PouchDB documentation
   * [here](https://pouchdb.com/api.html#create_database).
   */
  external String get adapter;
  external set adapter(String value);

  /**
   * The name of the database. This can be either a local database (such
   * as "cats"), or a remote one (e.g., "https://example.com:5678/cats").
   */
  external String get dbName;
  external set dbName(String value);

  /**
   * The number of document revisions to keep track of. The default value
   * (0) indicates no limit.
   */
  external num get revsLimit;
  external set revsLimit(num value);

  /**
   * A reference to the PouchDB database instance that has been created.
   */
  external  get db;
  external set db( value);

  /**
   * If true, all attempts to "put" or "post" values into the database
   * will be automatically structured as an "upsert", where documents are
   * updated if already available, or created if not.
   */
  external bool get upsert;
  external set upsert(bool value);

  /**
   * If desired, assign a function that implements a conflict resolution
   * strategy. This conflict resolution strategy will take precedence when
   * a conflict occurs, and will prevent conflict notification events from
   * being fired.
   * Consider using an `app-pouchdb-conflict-resolver` element instead for
   * a more declarative experience!
   */
  external Function get resolveConflict;
  external set resolveConflict(Function value);

}

