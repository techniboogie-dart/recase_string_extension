## ReCase String Extension ##

Adds ReCase methods to String. Eventually this extension will be merged into
ReCase codebase. At the moment the merge is being avoided as to not force
dependents to upgrade to Dart 2.6.0

#### Usage
Changes the case of the input text to the desire case convention.

    import 'package:recase_string_extension/recase.dart';

    void main() {
      print('Just_someSample-text'.camelCase); // Prints 'justSomeSampleText'
      print('Just_someSample-text'.constantCase); // Prints 'JUST_SOME_SAMPLE_TEXT'
    }

_Supports all the same case conventions as ReCase._