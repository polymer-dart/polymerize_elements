@JS('Polymer')
library AppPouchdbIndex;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_pouchdb_database_behavior.dart' as imp0;

/**
 * `app-pouchdb-index` enables declarative, idempotent configuration of database
 * indexes. The semantics map to those of the pouchdb-find plugin. For more
 * information on creating PouchDB indexes with pouchdb-find, please refer to the
 * documentation
 * [here](https://github.com/nolanlawson/pouchdb-find#dbcreateindexindex--callback).
 * Note: at least one index must be created in order for `app-pouchdb-query` to
 * work.
 */

@JS('AppPouchdbIndex')
@PolymerRegister('app-pouchdb-index',native:true)
@BowerImport(ref:'PolymerElements/app-pouchdb#v2.0.0',import:"app-pouchdb/app-pouchdb-index.html",name:'app-pouchdb')
abstract class AppPouchdbIndex extends PolymerElement implements imp0.AppPouchDBDatabaseBehavior {
  /**
   * A list of fields to index.
   */
  external List get fields;
  external set fields(List value);

  /**
   * The name of the index, auto-generated if you don't include it.
   */
  external String get name;
  external set name(String value);

  /**
   * Design document name (i.e. the part after '_design/'), auto-generated
   * if you don't include it.
   */
  external String get ddoc;
  external set ddoc(String value);

  /**
   * The configuration object for the index, derived from `fields`, `name`
   * and `ddoc` properties.
   */
  external  get index;
  external set index( value);


}
