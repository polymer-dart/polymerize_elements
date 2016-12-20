@JS('PolymerElements')
library iron_icons;
import 'package:js/js.dart';
import 'package:polymer_element/polymer_element.dart';
/*
@JS('IronIcons')
class _IronIcons extends PolymerElement {
}*/



@PolymerRegister('iron-icons',template:'src/iron-icons/iron-icons.html',native:true)
@BowerImport(ref:'PolymerElements/iron-icons#2.0-preview',import:"iron-icons/iron-icons.html",name:'iron-icons')
class IronIcons /*extends _IronIcons*/ {
}
