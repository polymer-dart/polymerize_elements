@JS('Polymer')
library FirebaseQuery;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/firebase_database_behavior.dart' as imp0;
part 'firebase_query.polymerize.dart';
/**
 * `firebase-query` combines the given properties into query options that generate
 * a query, a request for a filtered, ordered, immutable set of Firebase data. The
 * results of this Firebase query are then synchronized into the `data` parameter.
 * If the child nodes of the query are objects (most cases), `data` will be an array
 * of those objects with an extra `$key` field added to represent the key. If the
 * child nodes are non-object leaf values, `data` will be an array of objects of
 * the structure `{$key: key, $val: val}`.
 * Example usage:
 * ```html
 * <firebase-query
 *     id="query"
 *     app-name="notes"
 *     path="/notes/[[uid]]"
 *     data="{{data}}">
 * </firebase-query>
 * <template is="dom-repeat" items="{{data}}" as="note">
 *   <sticky-note note-data="{{note}}"></sticky-note>
 * </template>
 * <script>
 * Polymer({
 *   properties: {
 *     uid: String,
 *     data: {
 *       type: Object,
 *       observer: 'dataChanged'
 *     }
 *   },
 *   dataChanged: function (newData, oldData) {
 *     // do something when the query returns values
 *   }
 * });
 * </script>
 * ```
 */

@JS('FirebaseQuery')
@PolymerRegister('firebase-query',native:true)
@BowerImport(ref:'polymerfire#v2.1.0',import:"polymerfire/firebase-query.html",name:'polymerfire')
abstract class FirebaseQuery extends PolymerElement implements imp0.FirebaseDatabaseBehavior {
  /**
   * [`firebase.database.Query`](https://firebase.google.com/docs/reference/js/firebase.database.Query#property)
   * object computed by the following parameters.
   */
  external  get query;
  external set query( value);

  /**
   * The child key of each query result to order the query by.
   * Changing this value generates a new `query` ordered by the
   * specified child key.
   */
  external String get orderByChild;
  external set orderByChild(String value);

  /**
   * Order this query by values. This is only applicable to leaf node queries
   * against data structures such as `{a: 1, b: 2, c: 3}`.
   */
  external bool get orderByValue;
  external set orderByValue(bool value);

  /**
   * The value to start at in the query.
   * Changing this value generates a new `query` with the specified
   * starting point. The generated `query` includes children which match
   * the specified starting point.
   */
  external String get startAt;
  external set startAt(String value);

  /**
   * The value to end at in the query.
   * Changing this value generates a new `query` with the specified
   * ending point. The generated `query` includes children which match
   * the specified ending point.
   */
  external String get endAt;
  external set endAt(String value);

  /**
   * Specifies a child-key value that must be matched for each candidate result.
   * Changing this value generates a new `query` which includes children
   * which match the specified value.
   */
  external  get equalTo;
  external set equalTo( value);

  /**
   * The maximum number of nodes to include in the query.
   * Changing this value generates a new `query` limited to the first
   * number of children.
   */
  external num get limitToFirst;
  external set limitToFirst(num value);

  /**
   * The maximum number of nodes to include in the query.
   * Changing this value generates a new `query` limited to the last
   * number of children.
   */
  external num get limitToLast;
  external set limitToLast(num value);

  /**
   * 
   */
  external void isNew();

  /**
   * 
   */
  external void zeroValue();

}
