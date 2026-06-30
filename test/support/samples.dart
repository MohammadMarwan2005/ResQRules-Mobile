import 'dart:convert';
import 'dart:io';

import 'package:resq_rules/data/models/session/session_response_dto.dart';
import 'package:resq_rules/domain/models/session/session_response.dart';

final Map<String, dynamic> _samples =
    jsonDecode(File('reference/sample_responses.json').readAsStringSync())
        as Map<String, dynamic>;

/// A domain [SessionResponse] decoded from a captured payload in
/// `reference/sample_responses.json`.
SessionResponse sampleResponse(String key) =>
    SessionResponseDto.fromJson(
      _samples[key] as Map<String, dynamic>,
    ).toDomain();

const String kInstruction = 'screen:instruction';
const String kOverrideJump = 'override:jump (danger b -> hemorrhage)';
const String kOverrideGuard = 'override:guard (b while already in hemorrhage)';
const String kSilentJump =
    'transparent_jump:silent (chart_id changes, override null)';
