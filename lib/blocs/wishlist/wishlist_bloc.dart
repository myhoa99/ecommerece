import 'package:e_commerece/models/product_model.dart';
import 'package:e_commerece/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/wishlist_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading());
  @override
  Stream<WishlistState> mapEventTostate(WishlistEvent event) async* {
    if (event is StartWishlist) {
      yield* _mapStartWishlistToState();
    } else if (event is AddWishlistProduct) {
      yield* _mapAddWishlistToState(event, state);
    } else if (event is RemoveWishlistProduct) {
      yield* _mapRemoveWishlistToState(event, state);
    }
  }

  Stream<WishlistState> _mapStartWishlistToState() async* {
    yield WishlistLoading();
    try {
      await Future<void>.delayed(Duration(seconds: 1));
      yield WishlistLoaded();
    } catch (_) {}
  }

  Stream<WishlistState> _mapAddWishlistToState(
    AddWishlistProduct event,
    WishlistState state,
  ) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
            wishlist: Wishlist(
                product: List.from(state.wishlist.product)
                  ..add(event.product)));
      } catch (_) {}
    }
  }

  Stream<WishlistState> _mapRemoveWishlistToState(
    RemoveWishlistProduct event,
    WishlistState state,
  ) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
            wishlist: Wishlist(
                product: List.from(state.wishlist.product)
                  ..remove(event.product)));
      } catch (_) {}
    }
  }
}
