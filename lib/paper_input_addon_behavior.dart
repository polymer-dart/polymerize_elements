  @JS('Polymer')
  library Polymer.PaperInputAddonBehavior;
  import 'dart:html';
  import 'package:js/js.dart';
  import 'package:js/js_util.dart';

  import 'package:polymer_element/polymer_element.dart';
  

  /**
 * 
 * Use `Polymer.PaperInputAddonBehavior` to implement an add-on for `<paper-input-container>`. A
 * add-on appears below the input, and may display information based on the input value and
 * validity such as a character counter or an error message.
 * 
 */

@BowerImport(ref:'PolymerElements/paper-input#2.0-preview',import:"paper-input/paper-input-addon-behavior.html",name:'paper-input')
@JS('PaperInputAddonBehavior')
abstract class PaperInputAddonBehavior  {

}

