import 'package:equatable/equatable.dart';

class StateEntity extends Equatable {
  const StateEntity({
    required this.state,
    required this.alias,
    required this.lgas,
  });

  final String state;
  final String alias;
  final List<String> lgas;

  @override
  List<Object?> get props => [
    state,
    alias,
    lgas,
  ];
}
