// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantData _$RestaurantDataFromJson(Map<String, dynamic> json) {
  return _RestaurantData.fromJson(json);
}

/// @nodoc
mixin _$RestaurantData {
  @JsonKey(name: 'restaurant_name')
  String? get restaurantName => throw _privateConstructorUsedError;
  String? get reviews => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_tries')
  String? get timeTries => throw _privateConstructorUsedError;
  UserData? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDataCopyWith<RestaurantData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDataCopyWith<$Res> {
  factory $RestaurantDataCopyWith(
          RestaurantData value, $Res Function(RestaurantData) then) =
      _$RestaurantDataCopyWithImpl<$Res, RestaurantData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'restaurant_name') String? restaurantName,
      String? reviews,
      int? status,
      @JsonKey(name: 'time_tries') String? timeTries,
      UserData? user});

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$RestaurantDataCopyWithImpl<$Res, $Val extends RestaurantData>
    implements $RestaurantDataCopyWith<$Res> {
  _$RestaurantDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantName = freezed,
    Object? reviews = freezed,
    Object? status = freezed,
    Object? timeTries = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantName: freezed == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      timeTries: freezed == timeTries
          ? _value.timeTries
          : timeTries // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantDataCopyWith<$Res>
    implements $RestaurantDataCopyWith<$Res> {
  factory _$$_RestaurantDataCopyWith(
          _$_RestaurantData value, $Res Function(_$_RestaurantData) then) =
      __$$_RestaurantDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'restaurant_name') String? restaurantName,
      String? reviews,
      int? status,
      @JsonKey(name: 'time_tries') String? timeTries,
      UserData? user});

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_RestaurantDataCopyWithImpl<$Res>
    extends _$RestaurantDataCopyWithImpl<$Res, _$_RestaurantData>
    implements _$$_RestaurantDataCopyWith<$Res> {
  __$$_RestaurantDataCopyWithImpl(
      _$_RestaurantData _value, $Res Function(_$_RestaurantData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantName = freezed,
    Object? reviews = freezed,
    Object? status = freezed,
    Object? timeTries = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_RestaurantData(
      restaurantName: freezed == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      timeTries: freezed == timeTries
          ? _value.timeTries
          : timeTries // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantData implements _RestaurantData {
  const _$_RestaurantData(
      {@JsonKey(name: 'restaurant_name') this.restaurantName,
      this.reviews,
      this.status,
      @JsonKey(name: 'time_tries') this.timeTries,
      this.user});

  factory _$_RestaurantData.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantDataFromJson(json);

  @override
  @JsonKey(name: 'restaurant_name')
  final String? restaurantName;
  @override
  final String? reviews;
  @override
  final int? status;
  @override
  @JsonKey(name: 'time_tries')
  final String? timeTries;
  @override
  final UserData? user;

  @override
  String toString() {
    return 'RestaurantData(restaurantName: $restaurantName, reviews: $reviews, status: $status, timeTries: $timeTries, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantData &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timeTries, timeTries) ||
                other.timeTries == timeTries) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, restaurantName, reviews, status, timeTries, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantDataCopyWith<_$_RestaurantData> get copyWith =>
      __$$_RestaurantDataCopyWithImpl<_$_RestaurantData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantDataToJson(
      this,
    );
  }
}

abstract class _RestaurantData implements RestaurantData {
  const factory _RestaurantData(
      {@JsonKey(name: 'restaurant_name') final String? restaurantName,
      final String? reviews,
      final int? status,
      @JsonKey(name: 'time_tries') final String? timeTries,
      final UserData? user}) = _$_RestaurantData;

  factory _RestaurantData.fromJson(Map<String, dynamic> json) =
      _$_RestaurantData.fromJson;

  @override
  @JsonKey(name: 'restaurant_name')
  String? get restaurantName;
  @override
  String? get reviews;
  @override
  int? get status;
  @override
  @JsonKey(name: 'time_tries')
  String? get timeTries;
  @override
  UserData? get user;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantDataCopyWith<_$_RestaurantData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_name') String? userName,
      String? email,
      String? phone});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_name') String? userName,
      String? email,
      String? phone});
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$_UserData>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_UserData(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(
      {@JsonKey(name: 'user_name') this.userName, this.email, this.phone});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'UserData(userName: $userName, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {@JsonKey(name: 'user_name') final String? userName,
      final String? email,
      final String? phone}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
