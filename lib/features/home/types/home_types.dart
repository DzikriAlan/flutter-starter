class HomeState {
  final String status;
  final String statusTitle;
  final String statusSubtitle;

  const HomeState({
    this.status = 'loading',
    this.statusTitle = 'Something went wrong',
    this.statusSubtitle = 'Please try again later.',
  });

  HomeState copyWith({
    String? status,
    String? statusTitle,
    String? statusSubtitle,
  }) =>
      HomeState(
        status: status ?? this.status,
        statusTitle: statusTitle ?? this.statusTitle,
        statusSubtitle: statusSubtitle ?? this.statusSubtitle,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeState && other.status == status;

  @override
  int get hashCode => status.hashCode;
}
