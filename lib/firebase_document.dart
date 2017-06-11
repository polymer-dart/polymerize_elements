@JS('Polymer')
library FirebaseDocument;
import 'package:html5/html.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'package:polymer_element/polymer_element.dart';
import 'package:polymer_elements/firebase_database_behavior.dart' as imp0;

/**
 * The firebase-document element is an easy way to interact with a firebase
 * location as an object and expose it to the Polymer databinding system.
 * For example:
 *     <firebase-document
 *       path="/users/{{userId}}/notes/{{noteId}}"
 *       data="{{noteData}}">
 *     </firebase-document>
 * This fetches the `noteData` object from the firebase location at
 * `/users/${userId}/notes/${noteId}` and exposes it to the Polymer
 * databinding system. Changes to `noteData` will likewise be, sent back up
 * and stored.
 * `<firebase-document>` needs some information about how to talk to Firebase.
 * Set this configuration by adding a `<firebase-app>` element anywhere in your
 * app.
 */

@JS('FirebaseDocument')
@PolymerRegister('firebase-document',native:true)
@BowerImport(ref:'polymerfire#v2.1.0',import:"polymerfire/firebase-document.html",name:'polymerfire')
abstract class FirebaseDocument extends PolymerElement implements imp0.FirebaseDatabaseBehavior {

  /**
   * 
   */
  external void isNew();

  /**
   * 
   */
  external void zeroValue();

  external Promise save(path,id);

}
