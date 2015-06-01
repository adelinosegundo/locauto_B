MACHINE           Price

SEES              CategoriesCTX , DamagesCTX , Damage , Boolean , VehiclesCTX

ABSTRACT_VARIABLES damage_price , price , delay_price

INVARIANT         damage_price : DAMAGES_ST --> NAT & price : CATEGORIES_ST --> NAT1 & delay_price : CATEGORIES_ST --> NAT1

INITIALISATION    damage_price , price , delay_price := DAMAGES_ST*{0} , CATEGORIES_ST*{1} , CATEGORIES_ST*{1}

OPERATIONS

set_damage_price ( dd , pp ) =
  PRE dd : DAMAGES_ST & pp : NAT
  THEN damage_price ( dd ) := pp
  END ;

qq <-- query_damage_penalty ( vv ) =
  PRE vv : VEHICLES_ST
  THEN qq := damage_price ( damages ( vv ) )
  END ;

qq , rr <-- query_damage_price ( dd ) =
  PRE dd : DAMAGES_ST
  THEN
    IF dd : dom ( damage_price )
    THEN qq := damage_price ( dd ) || rr := true
    ELSE qq :: NAT || rr := false
    END
  END ;

set_price ( cc , pp , dly ) =
  PRE cc : CATEGORIES_ST & pp : NAT1 & dly : NAT1
  THEN price ( cc ) := pp || delay_price ( cc ) := dly
  END ;

pp <-- query_price ( cc ) =
  PRE cc : CATEGORIES_ST THEN pp := price ( cc ) END

END
