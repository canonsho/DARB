import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/feedback_record.dart';
import 'schema/posts_record.dart';
import 'schema/comments_record.dart';
import 'schema/places_record.dart';
import 'schema/map_record.dart';
import 'schema/trip_summary_record.dart';
import 'schema/jeddah_standred_record.dart';
import 'schema/jeddah_luxury_record.dart';
import 'schema/makkah_eco_record.dart';
import 'schema/makkah_stan_record.dart';
import 'schema/makkah_luxury_record.dart';
import 'schema/taif_eco_record.dart';
import 'schema/taif_standerd_record.dart';
import 'schema/taif_luxury_record.dart';
import 'schema/madina_economy_record.dart';
import 'schema/madina_stanerd_record.dart';
import 'schema/madina_luxury_record.dart';
import 'schema/tabuk_economy_record.dart';
import 'schema/tabuk_standerd_record.dart';
import 'schema/tabuk_luxury_record.dart';
import 'schema/dammam_economy_record.dart';
import 'schema/dammam_standerd_record.dart';
import 'schema/dammam_luxury_record.dart';
import 'schema/riyadh_economy_record.dart';
import 'schema/riyadh_standerd_record.dart';
import 'schema/riyadh_luxury_record.dart';
import 'schema/abha_economy_record.dart';
import 'schema/abha_standerd_record.dart';
import 'schema/abha_luxury_record.dart';
import 'schema/all_places_search_record.dart';
import 'schema/map_places_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/feedback_record.dart';
export 'schema/posts_record.dart';
export 'schema/comments_record.dart';
export 'schema/places_record.dart';
export 'schema/map_record.dart';
export 'schema/trip_summary_record.dart';
export 'schema/jeddah_standred_record.dart';
export 'schema/jeddah_luxury_record.dart';
export 'schema/makkah_eco_record.dart';
export 'schema/makkah_stan_record.dart';
export 'schema/makkah_luxury_record.dart';
export 'schema/taif_eco_record.dart';
export 'schema/taif_standerd_record.dart';
export 'schema/taif_luxury_record.dart';
export 'schema/madina_economy_record.dart';
export 'schema/madina_stanerd_record.dart';
export 'schema/madina_luxury_record.dart';
export 'schema/tabuk_economy_record.dart';
export 'schema/tabuk_standerd_record.dart';
export 'schema/tabuk_luxury_record.dart';
export 'schema/dammam_economy_record.dart';
export 'schema/dammam_standerd_record.dart';
export 'schema/dammam_luxury_record.dart';
export 'schema/riyadh_economy_record.dart';
export 'schema/riyadh_standerd_record.dart';
export 'schema/riyadh_luxury_record.dart';
export 'schema/abha_economy_record.dart';
export 'schema/abha_standerd_record.dart';
export 'schema/abha_luxury_record.dart';
export 'schema/all_places_search_record.dart';
export 'schema/map_places_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FeedbackRecords (as a Stream and as a Future).
Future<int> queryFeedbackRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FeedbackRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FeedbackRecord>> queryFeedbackRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FeedbackRecord.collection,
      FeedbackRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FeedbackRecord>> queryFeedbackRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FeedbackRecord.collection,
      FeedbackRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PostsRecords (as a Stream and as a Future).
Future<int> queryPostsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PostsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PostsRecord>> queryPostsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PostsRecord.collection,
      PostsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PostsRecord>> queryPostsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PostsRecord.collection,
      PostsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CommentsRecords (as a Stream and as a Future).
Future<int> queryCommentsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CommentsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CommentsRecord>> queryCommentsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CommentsRecord.collection,
      CommentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CommentsRecord>> queryCommentsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CommentsRecord.collection,
      CommentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PlacesRecords (as a Stream and as a Future).
Future<int> queryPlacesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PlacesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PlacesRecord>> queryPlacesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PlacesRecord.collection,
      PlacesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PlacesRecord>> queryPlacesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PlacesRecord.collection,
      PlacesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MapRecords (as a Stream and as a Future).
Future<int> queryMapRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MapRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MapRecord>> queryMapRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MapRecord.collection,
      MapRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MapRecord>> queryMapRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MapRecord.collection,
      MapRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TripSummaryRecords (as a Stream and as a Future).
Future<int> queryTripSummaryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TripSummaryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TripSummaryRecord>> queryTripSummaryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TripSummaryRecord.collection,
      TripSummaryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TripSummaryRecord>> queryTripSummaryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TripSummaryRecord.collection,
      TripSummaryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query JeddahStandredRecords (as a Stream and as a Future).
Future<int> queryJeddahStandredRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      JeddahStandredRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<JeddahStandredRecord>> queryJeddahStandredRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      JeddahStandredRecord.collection,
      JeddahStandredRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<JeddahStandredRecord>> queryJeddahStandredRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      JeddahStandredRecord.collection,
      JeddahStandredRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query JeddahLuxuryRecords (as a Stream and as a Future).
Future<int> queryJeddahLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      JeddahLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<JeddahLuxuryRecord>> queryJeddahLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      JeddahLuxuryRecord.collection,
      JeddahLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<JeddahLuxuryRecord>> queryJeddahLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      JeddahLuxuryRecord.collection,
      JeddahLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MakkahEcoRecords (as a Stream and as a Future).
Future<int> queryMakkahEcoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MakkahEcoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MakkahEcoRecord>> queryMakkahEcoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MakkahEcoRecord.collection,
      MakkahEcoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MakkahEcoRecord>> queryMakkahEcoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MakkahEcoRecord.collection,
      MakkahEcoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MakkahStanRecords (as a Stream and as a Future).
Future<int> queryMakkahStanRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MakkahStanRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MakkahStanRecord>> queryMakkahStanRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MakkahStanRecord.collection,
      MakkahStanRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MakkahStanRecord>> queryMakkahStanRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MakkahStanRecord.collection,
      MakkahStanRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MakkahLuxuryRecords (as a Stream and as a Future).
Future<int> queryMakkahLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MakkahLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MakkahLuxuryRecord>> queryMakkahLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MakkahLuxuryRecord.collection,
      MakkahLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MakkahLuxuryRecord>> queryMakkahLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MakkahLuxuryRecord.collection,
      MakkahLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TaifEcoRecords (as a Stream and as a Future).
Future<int> queryTaifEcoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TaifEcoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TaifEcoRecord>> queryTaifEcoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TaifEcoRecord.collection,
      TaifEcoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TaifEcoRecord>> queryTaifEcoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TaifEcoRecord.collection,
      TaifEcoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TaifStanderdRecords (as a Stream and as a Future).
Future<int> queryTaifStanderdRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TaifStanderdRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TaifStanderdRecord>> queryTaifStanderdRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TaifStanderdRecord.collection,
      TaifStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TaifStanderdRecord>> queryTaifStanderdRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TaifStanderdRecord.collection,
      TaifStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TaifLuxuryRecords (as a Stream and as a Future).
Future<int> queryTaifLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TaifLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TaifLuxuryRecord>> queryTaifLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TaifLuxuryRecord.collection,
      TaifLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TaifLuxuryRecord>> queryTaifLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TaifLuxuryRecord.collection,
      TaifLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MadinaEconomyRecords (as a Stream and as a Future).
Future<int> queryMadinaEconomyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MadinaEconomyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MadinaEconomyRecord>> queryMadinaEconomyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MadinaEconomyRecord.collection,
      MadinaEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MadinaEconomyRecord>> queryMadinaEconomyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MadinaEconomyRecord.collection,
      MadinaEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MadinaStanerdRecords (as a Stream and as a Future).
Future<int> queryMadinaStanerdRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MadinaStanerdRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MadinaStanerdRecord>> queryMadinaStanerdRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MadinaStanerdRecord.collection,
      MadinaStanerdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MadinaStanerdRecord>> queryMadinaStanerdRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MadinaStanerdRecord.collection,
      MadinaStanerdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MadinaLuxuryRecords (as a Stream and as a Future).
Future<int> queryMadinaLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MadinaLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MadinaLuxuryRecord>> queryMadinaLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MadinaLuxuryRecord.collection,
      MadinaLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MadinaLuxuryRecord>> queryMadinaLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MadinaLuxuryRecord.collection,
      MadinaLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TabukEconomyRecords (as a Stream and as a Future).
Future<int> queryTabukEconomyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TabukEconomyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TabukEconomyRecord>> queryTabukEconomyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TabukEconomyRecord.collection,
      TabukEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TabukEconomyRecord>> queryTabukEconomyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TabukEconomyRecord.collection,
      TabukEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TabukStanderdRecords (as a Stream and as a Future).
Future<int> queryTabukStanderdRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TabukStanderdRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TabukStanderdRecord>> queryTabukStanderdRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TabukStanderdRecord.collection,
      TabukStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TabukStanderdRecord>> queryTabukStanderdRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TabukStanderdRecord.collection,
      TabukStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TabukLuxuryRecords (as a Stream and as a Future).
Future<int> queryTabukLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TabukLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TabukLuxuryRecord>> queryTabukLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TabukLuxuryRecord.collection,
      TabukLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TabukLuxuryRecord>> queryTabukLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TabukLuxuryRecord.collection,
      TabukLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DammamEconomyRecords (as a Stream and as a Future).
Future<int> queryDammamEconomyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DammamEconomyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DammamEconomyRecord>> queryDammamEconomyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DammamEconomyRecord.collection,
      DammamEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DammamEconomyRecord>> queryDammamEconomyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DammamEconomyRecord.collection,
      DammamEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DammamStanderdRecords (as a Stream and as a Future).
Future<int> queryDammamStanderdRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DammamStanderdRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DammamStanderdRecord>> queryDammamStanderdRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DammamStanderdRecord.collection,
      DammamStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DammamStanderdRecord>> queryDammamStanderdRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DammamStanderdRecord.collection,
      DammamStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DammamLuxuryRecords (as a Stream and as a Future).
Future<int> queryDammamLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DammamLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DammamLuxuryRecord>> queryDammamLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DammamLuxuryRecord.collection,
      DammamLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DammamLuxuryRecord>> queryDammamLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DammamLuxuryRecord.collection,
      DammamLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RiyadhEconomyRecords (as a Stream and as a Future).
Future<int> queryRiyadhEconomyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RiyadhEconomyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RiyadhEconomyRecord>> queryRiyadhEconomyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RiyadhEconomyRecord.collection,
      RiyadhEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RiyadhEconomyRecord>> queryRiyadhEconomyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RiyadhEconomyRecord.collection,
      RiyadhEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RiyadhStanderdRecords (as a Stream and as a Future).
Future<int> queryRiyadhStanderdRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RiyadhStanderdRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RiyadhStanderdRecord>> queryRiyadhStanderdRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RiyadhStanderdRecord.collection,
      RiyadhStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RiyadhStanderdRecord>> queryRiyadhStanderdRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RiyadhStanderdRecord.collection,
      RiyadhStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RiyadhLuxuryRecords (as a Stream and as a Future).
Future<int> queryRiyadhLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RiyadhLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RiyadhLuxuryRecord>> queryRiyadhLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RiyadhLuxuryRecord.collection,
      RiyadhLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RiyadhLuxuryRecord>> queryRiyadhLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RiyadhLuxuryRecord.collection,
      RiyadhLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AbhaEconomyRecords (as a Stream and as a Future).
Future<int> queryAbhaEconomyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AbhaEconomyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AbhaEconomyRecord>> queryAbhaEconomyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AbhaEconomyRecord.collection,
      AbhaEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AbhaEconomyRecord>> queryAbhaEconomyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AbhaEconomyRecord.collection,
      AbhaEconomyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AbhaStanderdRecords (as a Stream and as a Future).
Future<int> queryAbhaStanderdRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AbhaStanderdRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AbhaStanderdRecord>> queryAbhaStanderdRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AbhaStanderdRecord.collection,
      AbhaStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AbhaStanderdRecord>> queryAbhaStanderdRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AbhaStanderdRecord.collection,
      AbhaStanderdRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AbhaLuxuryRecords (as a Stream and as a Future).
Future<int> queryAbhaLuxuryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AbhaLuxuryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AbhaLuxuryRecord>> queryAbhaLuxuryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AbhaLuxuryRecord.collection,
      AbhaLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AbhaLuxuryRecord>> queryAbhaLuxuryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AbhaLuxuryRecord.collection,
      AbhaLuxuryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AllPlacesSearchRecords (as a Stream and as a Future).
Future<int> queryAllPlacesSearchRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AllPlacesSearchRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AllPlacesSearchRecord>> queryAllPlacesSearchRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AllPlacesSearchRecord.collection,
      AllPlacesSearchRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AllPlacesSearchRecord>> queryAllPlacesSearchRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AllPlacesSearchRecord.collection,
      AllPlacesSearchRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MapPlacesRecords (as a Stream and as a Future).
Future<int> queryMapPlacesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MapPlacesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MapPlacesRecord>> queryMapPlacesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MapPlacesRecord.collection,
      MapPlacesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MapPlacesRecord>> queryMapPlacesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MapPlacesRecord.collection,
      MapPlacesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  getDocs(QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
