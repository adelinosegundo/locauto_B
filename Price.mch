MACHINE           Price

SEES              VehiclesCTX

VARIABLES         price

INVARIANT         price : VEHICLES_ST +-> NAT1

INITIALISATION    price := {}

OPERATIONS

set_price(vv,pp) =
  PRE vv : VEHICLES_ST & pp : NAT1
  THEN price(vv) := pp
  END;

remove_price(vv) =
  PRE vv : dom(price)
  THEN price := {vv} <<| price
  END;


pp <-- query_price(vv) =
  PRE vv : VEHICLES_ST THEN pp := price(vv) END

END
