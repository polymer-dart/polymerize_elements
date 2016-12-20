@JS('PolymerElements')
library paper_material;
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';


//@JS('PaperMaterial')
@PolymerRegister('paper-material',template:'src/paper-material/paper-material.html',native:true)
@BowerImport(ref:'PolymerElements/paper-material#2.0-preview',import:"paper-material/paper-material.html",name:'paper-material')
class PaperMaterial extends PolymerElement {
}
