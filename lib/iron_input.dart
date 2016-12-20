@JS('PolymerElements')
library iron_input;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';


//@JS('PaperInput')
@PolymerRegister('iron-input',template:'src/iron-input/iron-input.html',native:true)
@BowerImport(ref:'PolymerElements/iron-input#2.0-preview',import:"iron-input/iron-input.html",name:'iron-input')
class IronInput extends PolymerElement {
}
