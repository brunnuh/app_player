// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'touchplay_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TouchplayStore on _TouchplayStore, Store {
  final _$sttsButtonAtom = Atom(name: '_TouchplayStore.sttsButton');

  @override
  bool get sttsButton {
    _$sttsButtonAtom.reportRead();
    return super.sttsButton;
  }

  @override
  set sttsButton(bool value) {
    _$sttsButtonAtom.reportWrite(value, super.sttsButton, () {
      super.sttsButton = value;
    });
  }

  final _$sttsMusicAtom = Atom(name: '_TouchplayStore.sttsMusic');

  @override
  int get sttsMusic {
    _$sttsMusicAtom.reportRead();
    return super.sttsMusic;
  }

  @override
  set sttsMusic(int value) {
    _$sttsMusicAtom.reportWrite(value, super.sttsMusic, () {
      super.sttsMusic = value;
    });
  }

  final _$_TouchplayStoreActionController =
      ActionController(name: '_TouchplayStore');

  @override
  void invButton() {
    final _$actionInfo = _$_TouchplayStoreActionController.startAction(
        name: '_TouchplayStore.invButton');
    try {
      return super.invButton();
    } finally {
      _$_TouchplayStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invSttsMusic(int stts) {
    final _$actionInfo = _$_TouchplayStoreActionController.startAction(
        name: '_TouchplayStore.invSttsMusic');
    try {
      return super.invSttsMusic(stts);
    } finally {
      _$_TouchplayStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sttsButton: ${sttsButton},
sttsMusic: ${sttsMusic}
    ''';
  }
}
