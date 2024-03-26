class InitDonationUseCaseInput {
  final int? donationTypeId;
  final int? paymentMethodId;
  final num? totalAmount;
  final Map<String, dynamic>? location;
  final int? isRecurring;
  final String? startDate;
  final String? endDate;
  final int? donationFrequencyId;
  final String? notes;
  final String? mouId;

  InitDonationUseCaseInput(
      {this.donationTypeId,
      this.paymentMethodId,
      this.totalAmount,
      this.location,
      this.isRecurring,
      this.startDate,
      this.endDate,
      this.donationFrequencyId,
      this.notes,
      this.mouId});
}
