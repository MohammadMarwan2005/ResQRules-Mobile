/// The `screen.type` discriminator — one body widget per value.
enum ScreenType {
  instruction,
  question,
  cfQuestion,
  hemQuestion,
  action,
  jumpStub,
  unknown;

  static ScreenType fromString(String value) => switch (value) {
    'instruction' => instruction,
    'question' => question,
    'cf_question' => cfQuestion,
    'hem_question' => hemQuestion,
    'action' => action,
    'jump_stub' => jumpStub,
    _ => unknown,
  };
}
