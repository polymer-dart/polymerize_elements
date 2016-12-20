@JS('PolymerElements')
library paper_input;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_elements/iron_input.dart';
import 'package:polymer_element/polymer_element.dart';


//@JS('PaperInput')
// Adding bower
@PolymerRegister('paper-input',template:'src/paper-input/paper-input.html',native:true)
@BowerImport(ref:'PolymerElements/paper-input#2.0-preview',import:"paper-input/paper-input.html",name:'paper-input')
class PaperInput extends PolymerElement {
  external IronInput get inputElement;

}
