@JS('Polymer')
library AppPouchdbDocument;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/app_storage_behavior.dart' as imp0;
import 'package:polymer_elements/app_pouchdb_database_behavior.dart' as imp1;

/**
 * `app-pouchdb-document` is an implementation of `Polymer.AppStorageBehavior`
 * for reading and writing to individual PouchDB documents.
 * In order to refer to a PouchDB document, provide the name of the database
 * (both local and remote databases are supported) and the ID of the document.
 * For example:
 * ```html
 * <app-pouchdb-document
 *     db-name="cats"
 *     doc-id="parsnip">
 * </app-pouchdb-document>
 * ```
 * In the above example, a PouchDB instance will be created to connect to the
 * local database named "cats". Then it will check to see if a document with the
 * ID "parsnip" exists. If it does, the `data` property of the document will be
 * set to the value of the document. If it does not, then any subsequent
 * assignments to the `data` property will cause a document with ID "parsnip" to
 * be created.
 * Here is an example of a simple form that can be used to read and write to a
 * PouchDB document:
 * ```html
 * <app-pouchdb-document
 *     db-name="cats"
 *     doc-id="parsnip"
 *     data="{{cat}}">
 * </app-pouchdb-document>
 * <input
 *     is="iron-input"
 *     bind-value="{{cat.name}}">
 * </input>
 * ```
 */

@JS('AppPouchdbDocument')
@PolymerRegister('app-pouchdb-document',native:true)
@BowerImport(ref:'PolymerElements/app-pouchdb#v2.0.0',import:"app-pouchdb/app-pouchdb-document.html",name:'app-pouchdb')
abstract class AppPouchdbDocument extends PolymerElement implements imp0.AppStorageBehavior,imp1.AppPouchDBDatabaseBehavior {
  /**
   * The value of the _id (Pouch/Couch unique identifier) of the PouchDB
   * document that this element's data should refer to.
   */
  external String get docId;
  external set docId(String value);

  /**
   * The current _rev (revision) of the PouchDB document that this
   * element's data refers to, if the document is not new.
   */
  external String get rev;
  external set rev(String value);

  /**
   * A changes event emitter. Notifies of changes to the PouchDB document
   * referred to by `docId`, if a `docId` has been provided.
   */
  external  get changes;
  external set changes( value);

  /**
   * @override
   */
  external void isNew();

  /**
   * @override
   */
  external void zeroValue();

}
