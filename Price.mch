MACHINE           Price

SEES              VehiclesCTX

VARIABLES         price

INVARIANT         price : VEHICLES_ST +-> NAT1

INITIALISATION    price := {}

OPERATIONS

set_price(gg,pp) =
  PRE gg : VEHICLES_ST & pp : NAT1
  THEN price(gg) := pp
  END;

remove_price(gg) =
  PRE gg : dom(price)
  THEN price := {gg} <<| price
  END;


pp <-- query_price(gg) =
  PRE gg : VEHICLES_ST THEN pp := price(gg) END

END
