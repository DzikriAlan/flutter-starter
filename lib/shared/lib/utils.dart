// Helper functions for the application.

/// Returns a formatted string representation of a value, or a fallback if null.
String formatOrFallback(Object? value, {String fallback = '-'}) =>
    value?.toString().isNotEmpty == true ? value.toString() : fallback;
