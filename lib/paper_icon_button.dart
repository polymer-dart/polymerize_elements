@JS('PolymerElements')
library paper_icon_button;
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';



//@JS('PaperIconButton')
@PolymerRegister('paper-icon-button',template:'src/paper-icon-button/paper-icon-button.html',native:true)
@BowerImport(ref:'PolymerElements/paper-icon-button#2.0-preview',import:"paper-icon-button/paper-icon-button.html",name:'paper-icon-button')
class PaperIconButton extends PolymerElement {
}
