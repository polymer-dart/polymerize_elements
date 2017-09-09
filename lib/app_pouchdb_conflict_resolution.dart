@JS('Polymer')
library AppPouchdbConflictResolution;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
part 'app_pouchdb_conflict_resolution.polymerize.dart';

/**
 * `app-pouchdb-conflict-resolution` enables declarative configuration of conflict
 * resolution strategies ordered by logical relationships in the DOM. Currently
 * two basic strategies are supported: `firstWriteWins` and `lastWriteWins`.
 * To use `app-pouchdb-conflict-resolution`, simply include the element somewhere
 * in a document subtree at or above the ShadowRoot of an `app-pouchdb-document`
 * or `app-pouchdb-query`:
 * ```html
 * <app-pouchdb-conflict-resolution
 *     strategy="lastWriteWins">
 * </app-pouchdb-conflict-resolution>
 * <app-pouchdb-document
 *     db-name="cats"
 *     doc-id="parsnip">
 * </app-pouchdb-document>
 * ```
 * When a conflict occurs, the `app-pouchdb-document` will request fire an event
 * to notify of the conflict and request a resolution strategy. The
 * `app-pouchdb-conflict-resolution` element listens at its nearest ShadowRoot
 * boundary for conflict notifications, and responds to them as needed with a
 * configured strategy.
 */

@JS('AppPouchdbConflictResolution')
@PolymerRegister('app-pouchdb-conflict-resolution',native:true)
@BowerImport(ref:'PolymerElements/app-pouchdb#v2.0.0',import:"app-pouchdb/app-pouchdb-conflict-resolution.html",name:'app-pouchdb')
abstract class AppPouchdbConflictResolution extends PolymerElement  {
  /**
   * The name of the strategy to use to reslve the conflict. Supported
   * strategies are `firstWriteWins` (the default) and `lastWriteWins`.
   */
  external String get strategy;
  external set strategy(String value);

  /**
   * By default, this element stops propagation of any conflict events
   * that it is able to handle. If set to `true`, the element will allow
   * such events to continue propagating, opening the possibility that
   * another conflict resolution strategy higher up the document tree will
   * superseed this one.
   */
  external bool get allowAncestralResolution;
  external set allowAncestralResolution(bool value);


}
