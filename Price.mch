MACHINE           Price

SEES              VehiclesCTX

VARIABLES         price

INVARIANT         price : VEHICLES --> NAT1

INITIALISATION    price :: VEHICLES * {1}

OPERATIONS

set_price(gg,pp) =
  PRE gg : VEHICLES & pp : NAT1
  THEN price(gg) := pp
  END;

remove_price(gg)=
  PRE gg /: VEHICLES && gg:dom(price)
  THEN price := price - {gg|->(img(price |> {gg}))}
  END;

pp <-- query_price(gg) =
  PRE gg : VEHICLES THEN pp := price(gg) END

END
