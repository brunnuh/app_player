import 'package:mobx/mobx.dart';

part 'touchplay_store.g.dart';

class TouchplayStore = _TouchplayStore with _$TouchplayStore;

abstract class _TouchplayStore with Store{
 // Observers
 @observable
  bool sttsButton = true;

 @observable
  int sttsMusic = 1;

 // Action
 @action
  void invButton(){
  sttsButton = !sttsButton;
  }

  @action

 void invSttsMusic(int stts){
   sttsMusic = stts;
  }

 //Computed

}