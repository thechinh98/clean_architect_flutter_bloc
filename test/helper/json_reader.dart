import 'dart:io';

String readJson(String name){
  String dir = Directory.current.path;
  if(dir.endsWith('/test')){
    dir = dir.replaceAll('/test', '');
  }
  return File('$dir/test/$name').readAsStringSync();
}