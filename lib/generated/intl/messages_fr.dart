// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'fr';

  static String m0(time) => "termine dans ${time}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "authSubtitle": MessageLookupByLibrary.simpleMessage(
            "Enregistre toi pour rejoindre la communauté, voter, et faire entendre ta voix!"),
        "authTitle": MessageLookupByLibrary.simpleMessage("Rejoins Demos"),
        "blockThisUser":
            MessageLookupByLibrary.simpleMessage("Bloquer cet utilisateur"),
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "ended": MessageLookupByLibrary.simpleMessage("Terminé"),
        "endsIn": m0,
        "inappropriateContent":
            MessageLookupByLibrary.simpleMessage("Contenu inapproprié"),
        "makeYourVoiceHeard":
            MessageLookupByLibrary.simpleMessage("Faites-vous entendre !"),
        "offensiveLanguage":
            MessageLookupByLibrary.simpleMessage("Langage offensant"),
        "other": MessageLookupByLibrary.simpleMessage("Autre"),
        "signalThisPool":
            MessageLookupByLibrary.simpleMessage("Signaler ce sondage"),
        "spam": MessageLookupByLibrary.simpleMessage("Spam")
      };
}
