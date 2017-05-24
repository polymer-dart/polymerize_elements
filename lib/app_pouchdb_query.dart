@JS('Polymer')
library AppPouchdbQuery;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_pouchdb_database_behavior.dart' as imp0;

/**
 * `app-pouchdb-query` allows for declarative, read-only querying into a PouchDB
 * database. The semantics for querying match those of the
 * [pouchdb-find plugin](https://github.com/nolanlawson/pouchdb-find).
 * In order to create an `app-pouchdb-query` against any field other than `_id`, at
 * least one index needs to have been created in your PouchDB database. You can use
 * `app-pouchdb-index` to do this declaratively. For example:
 * ```html
 * <app-pouchdb-index
 *     db-name="cats"
 *     fields='["name"]'>
 * </app-pouchdb-index>
 * <app-pouchdb-query
 *     db-name="cats"
 *     selector="name $exists true"
 *     fields='["_id","name"]'
 *     sort='["name"]'
 *     data="{{cats}}">
 * </app-pouchdb-query>
 * ```
 * In the above example, an index is created on the "name" field of the "cats"
 * database. This allows the query to select by the "name" field, and sort by the
 * "name" field.
 * By default, PouchDB creates an index on the "_id" field, so if you don't
 * particularly care about sorting or selecting on other fields, you don't need to
 * create any extra indexes.
 * ## Describing selectors
 * This element requires a specialized selector syntax that maps to the semantics
 * of the pouchdb-find plugin. For example, if you wish to create the following
 * selector:
 * ```javascript
 * {
 *   series: 'Mario',
 *   debut: { $gt: 1990 }
 * }
 * ```
 * You should format the `selector` property this way:
 * ```javascript
 * "series $eq 'Mario', debut $gt 1990"
 * ```
 * This makes selectors more convenient to write declaratively, while still
 * maintaining the ability to express selectors with full fidelity. For more
 * documentation on pouchdb-find selectors, please check out the docs
 * [here](https://github.com/nolanlawson/pouchdb-find#dbfindrequest--callback).
 */

@JS('AppPouchdbQuery')
@PolymerRegister('app-pouchdb-query',native:true)
@BowerImport(ref:'PolymerElements/app-pouchdb#v2.0.0',import:"app-pouchdb/app-pouchdb-query.html",name:'app-pouchdb')
abstract class AppPouchdbQuery extends PolymerElement implements imp0.AppPouchDBDatabaseBehavior {
  /**
   * The selector to use when querying for documents. Fields referenced
   * in the selector must have indexes created for them.
   */
  external String get selector;
  external set selector(String value);

  /**
   * The fields to include in the returned documents.
   */
  external List get fields;
  external set fields(List value);

  /**
   * A list of field names to sort by. Fields in this list must have
   * indexes created for them.
   */
  external List get sort;
  external set sort(List value);

  /**
   * The maximum number of documents that can be returned. The default (0)
   * specifies no limit.
   */
  external num get limit;
  external set limit(num value);

  /**
   * The number of documents to skip before returning results that match
   * the query. In other words, the offset from the beginning of the
   * of the result set to start at.
   */
  external num get skip;
  external set skip(num value);

  /**
   * An object representing the parsed form of the selector, mapping to
   * a valid selector value as described in
   * [the pouchdb-find docs](https://github.com/nolanlawson/pouchdb-find).
   */
  external  get parsedSelector;
  external set parsedSelector( value);

  /**
   * A configuration object suitable to be passed to the `find` method of
   * the PouchDB database. For more information, refer to the docs
   * [here](https://github.com/nolanlawson/pouchdb-find/blob/master/README.md#dbfindrequest--callback)
   */
  external  get query;
  external set query( value);

  /**
   * The results of the query, if any.
   */
  external List get data;
  external set data(List value);


}
