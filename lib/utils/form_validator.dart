String? genericValidator(String field, String? value) {
  if ((value ?? '').trim().isEmpty) {
    return "$field is required";
  } else {
    return null;
  }
}
