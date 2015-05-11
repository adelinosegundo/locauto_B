MACHINE           Vehicles

INCLUDES		  Price

USES              VehiclesCTX

SEES              Boolean

VARIABLES         vehicles

INVARIANT         vehicles <: VEHICLES_ST

INITIALIZATION    vehicles := {}

OPERATIONS

add_vehicle(gg, pp)=
  PRE gg : VEHICLES_ST & gg /: vehicles & pp : NAT1
  THEN vehicles := vehicles \/ {gg};set_price(gg, pp)
  END;

remove_vehicle(gg)=
  PRE gg : vehicles
  THEN vehicles := vehicles - {gg}||remove_price(gg)
  END;

pp <-- query_vehicle(gg) =
  PRE 1=1
  THEN
    IF gg:vehicles
    THEN pp := true
    ELSE pp := false
    END
  END

END
