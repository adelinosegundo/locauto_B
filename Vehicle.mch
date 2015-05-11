MACHINE           Vehicles

SEES              Boolean

INCLUDES          Price, VehiclesCTX

INVARIANT         price : VEHICLES >-> NAT1

INITIALISATION    price :: VEHICLES * {1}

OPERATIONS

add_vehicle(gg, pp)=
  PRE gg /: VEHICLES && pp : NAT1
  THEN VEHICLES := VEHICLES \/ {gg};set_price(gg, pp)
  END;

remove_vehicle(gg)=
  PRE gg /: VEHICLES && gg:dom(price)
  THEN VEHICLES := VEHICLES - {gg};remove_price(gg, pp)
  END;

pp <-- query_vehicle(gg) =
  PRE true
  THEN
    IF gg:VEHICLES
    THEN pp := true
    ELSE pp := false
    END

END
