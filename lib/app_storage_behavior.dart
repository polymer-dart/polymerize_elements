@JS('Polymer')
library Polymer.AppStorageBehavior;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';


/**
 * AppStorageBehavior is an abstract behavior that makes it easy to
 * synchronize in-memory data and a persistant storage system, such as
 * the browser's IndexedDB, or a remote database like Firebase.
 * For examples of how to use this behavior to write your own app storage
 * elements see `<app-localstorage-document>` here, or check out
 * [polymerfire](https://github.com/Firebase/polymerfire) and
 * [app-pouchdb](https://github.com/PolymerElements/app-pouchdb).
 */

@BowerImport(ref:'PolymerElements/app-storage#v2.0.0',import:"app-storage/app-storage-behavior.html",name:'app-storage')
@JS('AppStorageBehavior')
abstract class AppStorageBehavior  {
  /**
   * The data to synchronize.
   */
  external  get data;
  external set data( value);

  /**
   * If this is true transactions will happen one after the other,
   * never in parallel.
   * Specifically, no transaction will begin until every previously
   * enqueued transaction by this element has completed.
   * If it is false, new transactions will be executed as they are
   * received.
   */
  external bool get sequentialTransactions;
  external set sequentialTransactions(bool value);

  /**
   * When true, will perform detailed logging.
   */
  external bool get log;
  external set log(bool value);

  /**
   * 
   */
  external void created();

  /**
   * 
   */
  external void ready();

  /**
   * Override this getter to return true if the value has never been
   * persisted to storage.
   * @type {boolean}
   */
  external void isNew();

  /**
   * A promise that will resolve once all queued transactions
   * have completed.
   * This field is updated as new transactions are enqueued, so it will
   * only wait for transactions which were enqueued when the field
   * was accessed.
   * This promise never rejects.
   * @type {Promise}
   */
  external void transactionsComplete();

  /**
   * Override this getter to define the default value to use when
   * there's no data stored.
   * @type {*}
   */
  external void zeroValue();

  /**
   * Override this method.
   * If the data value represented by this storage instance is new, this
   * method generates an attempt to write the value to storage.
   * @param {*} args
   * @return {Promise} a Promise that settles only once the write has.
   */
  external void saveValue();

  /**
   * Optional. Override this method to clear out the mapping of this
   * storage object and a logical location within storage.
   * If this method is supported, after it's called, isNew() should be
   * true.
   */
  external void reset();

  /**
   * Remove the data from storage.
   * @return {Promise} A promise that settles once the destruction is
   *   complete.
   */
  external void destroy();

  /**
   * Perform the initial sync between storage and memory. This method
   * is called automatically while the element is being initialized.
   * Implementations may override it.
   * If an implementation intends to call this method, it should instead
   * call _initializeStoredValue, which provides reentrancy protection.
   * @return {Promise} A promise that settles once this process is
   *     complete.
   */
  external void initializeStoredValue();

  /**
   * Override this method to implement reading a value from storage.
   * @param {string} storagePath The path (through storage) of the value to
   *   create, relative to the root of storage associated with this instance.
   * @return {Promise} A promise that resolves with the canonical value stored
   *   at the provided path when the transaction has completed. _If there is no
   *   such value at the provided path through storage, then the promise will
   *   resolve to `undefined`._ The promise will be rejected if the transaction
   *   fails for any reason.
   */
  external void getStoredValue();

  /**
   * Override this method to implement creating and updating
   * stored values.
   * @param {string} storagePath The path of the value to update, relative
   *   to the root storage path configured for this instance.
   * @param {*} value The updated in-memory value to apply to the stored value
   *   at the provided path.
   * @return {Promise} A promise that resolves with the canonical value stored
   *   at the provided path when the transaction has completed. The promise
   *   will be rejected if the transaction fails for any reason.
   */
  external void setStoredValue();

  /**
   * Maps a Polymer databinding path to the corresponding path in the
   * storage system. Override to define a custom mapping.
   * The inverse of storagePathToMemoryPath.
   * @param {string} path An in-memory path through a storage object.
   * @return {string} The provided path mapped to the equivalent location in
   *   storage. This mapped version of the path is suitable for use with the
   *   CRUD operations on both memory and storage.
   */
  external void memoryPathToStoragePath();

  /**
   * Maps a storage path to the corresponding Polymer databinding path.
   * Override to define a custom mapping.
   * The inverse of memoryPathToStoragePath.
   * @param {string} path The storage path through a storage object.
   * @return {string} The provided path through storage mapped to the
   *   equivalent Polymer path through the in-memory representation of storage.
   */
  external void storagePathToMemoryPath();

  /**
   * Enables performing transformations on the in-memory representation of
   * storage without activating observers that will cause those
   * transformations to be re-applied to the storage backend. This is useful
   * for preventing redundant (or cyclical) application of transformations.
   * @param {Function} operation A function that will perform the desired
   *   transformation. It will be called synchronously, when it is safe to
   *   apply the transformation.
   */
  external void syncToMemory();

  /**
   * A convenience method. Returns true iff value is null, undefined,
   * an empty array, or an object with no keys.
   */
  external void valueIsEmpty();

}

