class NewMeetingUseCaseInput {
  final String? date;
  final String? time;
  final String? duration;
  final String? meetingMethodsId;
  final String? notes;
  final String? beneficiaryId;

  NewMeetingUseCaseInput({
    this.date,
    this.time,
    this.duration,
    this.meetingMethodsId,
    this.beneficiaryId,
    this.notes,
  });
}
