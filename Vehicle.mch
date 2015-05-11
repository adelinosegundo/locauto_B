MACHINE           Vehicle

INCLUDES		  Price

USES              VehiclesCTX

SEES              Boolean

VARIABLES         vehicles

INVARIANT         vehicles <: VEHICLES_ST

INITIALIZATION    vehicles := {}

OPERATIONS

rr <-- add_vehicle(vv, pp)=
  PRE vv : VEHICLES_ST & pp : NAT1
  THEN
    IF vv /: vehicles
    THEN vehicles := vehicles \/ {vv}||set_price(vv, pp)||rr:=true
    ELSE rr:=false
    END
  END;

rr <-- remove_vehicle(vv)=
  PRE 1=1
  THEN
    IF vv : vehicles
    THEN vehicles := vehicles - {vv}||remove_price(vv)||rr:=true
    ELSE rr:=false
    END
  END;

qq <-- query_vehicle(vv) =
  PRE 1=1
  THEN
    IF vv:vehicles
    THEN qq := true
    ELSE qq := false
    END
  END

END
