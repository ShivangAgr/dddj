class DadJokeResponse {
  final String id;
  final String joke;
  final int status;

  const DadJokeResponse({
    required this.id,
    required this.joke,
    required this.status,
  });

  factory DadJokeResponse.fromJson(Map<String, dynamic> json) {
    return DadJokeResponse(
      id: json['id'],
      joke: json['joke'],
      status: json['status'],
    );
  }
}
