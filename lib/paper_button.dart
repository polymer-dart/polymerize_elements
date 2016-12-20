@JS('PolymerElements')
library paper_button;
import 'dart:html';
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';


abstract class PaperButtonBehavior {
  bool get raised;
  set raised(bool value);
}

// Test not change bower dep
//@JS('PaperButton')
@PolymerRegister('paper-button',template:'src/paper-button/paper-button.html',native:true)
@BowerImport(ref:'PolymerElements/paper-button#2.0-preview',import:"paper-button/paper-button.html",name:'paper-button')
class PaperButton extends PolymerElement with PaperButtonBehavior {

}
