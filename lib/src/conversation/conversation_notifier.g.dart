/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$conversationNotifierHash() =>
    r'3034ba2cd46826ba85b880052d9bee87ef2aa7c9';

/// See also [ConversationNotifier].
@ProviderFor(ConversationNotifier)
final conversationNotifierProvider =
    AutoDisposeNotifierProvider<ConversationNotifier, Conversation>.internal(
  ConversationNotifier.new,
  name: r'conversationNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$conversationNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ConversationNotifier = AutoDisposeNotifier<Conversation>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package