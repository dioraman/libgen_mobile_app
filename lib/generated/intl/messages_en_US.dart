// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static m0(author) => "by ${author}";

  static m1(author) => "by ${author}";

  static m2(megabytes, kilobytes) => "${megabytes} MB (${kilobytes} KB)";

  static m3(searchTerm) => "No results for \"${searchTerm}\"";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "bookDetailsPresenterByAuthor" : m0,
    "bookDetailsPresenterDescription" : MessageLookupByLibrary.simpleMessage("Description"),
    "bookDetailsPresenterInfo" : MessageLookupByLibrary.simpleMessage("Info"),
    "bookDetailsPresenterNoTitle" : MessageLookupByLibrary.simpleMessage("(no title)"),
    "bookDetailsPresenterTOC" : MessageLookupByLibrary.simpleMessage("Table of Contents"),
    "bookListItemByAuthor" : m1,
    "bookListItemNoTitle" : MessageLookupByLibrary.simpleMessage("(no title)"),
    "downloadButtonCancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "downloadButtonConnectionFailedErrorMessage" : MessageLookupByLibrary.simpleMessage("Network error. Please, check your internet connection"),
    "downloadButtonDefaultExtension" : MessageLookupByLibrary.simpleMessage("TXT"),
    "downloadButtonDownloadFromBrowser" : MessageLookupByLibrary.simpleMessage("The file is massive! Please, use the browser to download"),
    "downloadButtonGenericErrorMessage" : MessageLookupByLibrary.simpleMessage("Download error. Try again later, please"),
    "downloadButtonLargeFile" : MessageLookupByLibrary.simpleMessage("Large file"),
    "downloadButtonOpenBrowser" : MessageLookupByLibrary.simpleMessage("Open Browser"),
    "downloadButtonOpenSettings" : MessageLookupByLibrary.simpleMessage("Open Settings"),
    "downloadButtonPermissionsDenied" : MessageLookupByLibrary.simpleMessage("Permissions denied"),
    "downloadButtonProvidePermissions" : MessageLookupByLibrary.simpleMessage("Please, provide app permissions from app settings"),
    "downloadButtonStartingDownloadMessage" : MessageLookupByLibrary.simpleMessage("Starting download"),
    "expandableTextShowLess" : MessageLookupByLibrary.simpleMessage("Show less"),
    "expandableTextShowMore" : MessageLookupByLibrary.simpleMessage("Show more"),
    "filtersExtensionsAll" : MessageLookupByLibrary.simpleMessage("All"),
    "filtersExtensionsAscending" : MessageLookupByLibrary.simpleMessage("Ascending"),
    "filtersExtensionsAuthor" : MessageLookupByLibrary.simpleMessage("Author"),
    "filtersExtensionsAzw" : MessageLookupByLibrary.simpleMessage("AZW"),
    "filtersExtensionsAzw3" : MessageLookupByLibrary.simpleMessage("AZW3"),
    "filtersExtensionsBiggerFirst" : MessageLookupByLibrary.simpleMessage("Bigger first"),
    "filtersExtensionsDescending" : MessageLookupByLibrary.simpleMessage("Descending"),
    "filtersExtensionsEpub" : MessageLookupByLibrary.simpleMessage("EPUB"),
    "filtersExtensionsFb2" : MessageLookupByLibrary.simpleMessage("FB2"),
    "filtersExtensionsFileSize" : MessageLookupByLibrary.simpleMessage("File size"),
    "filtersExtensionsISBN" : MessageLookupByLibrary.simpleMessage("ISBN"),
    "filtersExtensionsLargerFirst" : MessageLookupByLibrary.simpleMessage("Larger first"),
    "filtersExtensionsMD5" : MessageLookupByLibrary.simpleMessage("MD5"),
    "filtersExtensionsMobi" : MessageLookupByLibrary.simpleMessage("MOBI"),
    "filtersExtensionsNewerFirst" : MessageLookupByLibrary.simpleMessage("Newer first"),
    "filtersExtensionsOlderFirst" : MessageLookupByLibrary.simpleMessage("Older first"),
    "filtersExtensionsPages" : MessageLookupByLibrary.simpleMessage("Pages"),
    "filtersExtensionsPdf" : MessageLookupByLibrary.simpleMessage("PDF"),
    "filtersExtensionsPublisher" : MessageLookupByLibrary.simpleMessage("Publisher"),
    "filtersExtensionsRelevance" : MessageLookupByLibrary.simpleMessage("Relevance"),
    "filtersExtensionsRtf" : MessageLookupByLibrary.simpleMessage("RTF"),
    "filtersExtensionsSeries" : MessageLookupByLibrary.simpleMessage("Series"),
    "filtersExtensionsShorterFirst" : MessageLookupByLibrary.simpleMessage("Shorter first"),
    "filtersExtensionsSmallerFirst" : MessageLookupByLibrary.simpleMessage("Smaller first"),
    "filtersExtensionsTitle" : MessageLookupByLibrary.simpleMessage("Title"),
    "filtersExtensionsTxt" : MessageLookupByLibrary.simpleMessage("TXT"),
    "filtersExtensionsYear" : MessageLookupByLibrary.simpleMessage("Year"),
    "infoDialogAlertDialogRightButtonText" : MessageLookupByLibrary.simpleMessage("Close"),
    "infoTableAuthor" : MessageLookupByLibrary.simpleMessage("Author(s):"),
    "infoTableCity" : MessageLookupByLibrary.simpleMessage("City:"),
    "infoTableDOI" : MessageLookupByLibrary.simpleMessage("DOI:"),
    "infoTableEdition" : MessageLookupByLibrary.simpleMessage("Edition:"),
    "infoTableFileExtension" : MessageLookupByLibrary.simpleMessage("File Extension:"),
    "infoTableFileSize" : MessageLookupByLibrary.simpleMessage("File Size:"),
    "infoTableFileSizeMessage" : m2,
    "infoTableISBN" : MessageLookupByLibrary.simpleMessage("ISBN(s):"),
    "infoTableLanguage" : MessageLookupByLibrary.simpleMessage("Language:"),
    "infoTablePages" : MessageLookupByLibrary.simpleMessage("Pages:"),
    "infoTablePublisher" : MessageLookupByLibrary.simpleMessage("Publisher:"),
    "infoTableSeries" : MessageLookupByLibrary.simpleMessage("Series:"),
    "infoTableTitle" : MessageLookupByLibrary.simpleMessage("Title:"),
    "infoTableVolume" : MessageLookupByLibrary.simpleMessage("Volume:"),
    "infoTableYear" : MessageLookupByLibrary.simpleMessage("Year:"),
    "resultsBuilderConnectionFailedErrorMessage" : MessageLookupByLibrary.simpleMessage("Network error.\nPlease, check your internet connection"),
    "resultsBuilderGenericErrorMessage" : MessageLookupByLibrary.simpleMessage("Ups! We messed it up.\nTry again later, please"),
    "resultsBuilderNoMoreResultsMessage" : MessageLookupByLibrary.simpleMessage("No more results!"),
    "resultsBuilderNoResultsForSearchTermMessage" : m3,
    "resultsBuilderTotalResultsCounterMessage" : MessageLookupByLibrary.simpleMessage(" results"),
    "searchBookDelegateSearchFieldLabel" : MessageLookupByLibrary.simpleMessage("Title, author or ISBN"),
    "searchBookScreenAboutFloatingButtomTitle" : MessageLookupByLibrary.simpleMessage("About"),
    "searchBookScreenApplicationLegalese" : MessageLookupByLibrary.simpleMessage("LibGen Mobile is a FLOSS (Free/Libre Open Source Software) project. The developer is in any way related with Library Genesis.\n\nBy now, this app only provide access to the Sci-Tech section.\n\nThe destination folder for downloaded files is the default Downloads directory."),
    "searchBookScreenSearchBarHint" : MessageLookupByLibrary.simpleMessage("Search by title, author or ISBN"),
    "showFilterDialogApply" : MessageLookupByLibrary.simpleMessage("Apply"),
    "showFilterDialogCancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "showFilterDialogSearchInLabel" : MessageLookupByLibrary.simpleMessage("Search in"),
    "showFilterDialogSortByLabel" : MessageLookupByLibrary.simpleMessage("Sort by"),
    "showFilterDialogTitle" : MessageLookupByLibrary.simpleMessage("Filter")
  };
}
