MACHINE           Vehicle

SEES              Boolean , VehiclesCTX , Category, CategoriesCTX

ABSTRACT_VARIABLES vehicles

INVARIANT         vehicles <: VEHICLES_ST

INITIALISATION    vehicles := {}

OPERATIONS

rr <-- add_vehicle ( vv ) =
  PRE vv : VEHICLES_ST & category(vv)/=no_category
  THEN
    IF vv /: vehicles
    THEN vehicles := vehicles \/ { vv } || rr := true
    ELSE rr := false
    END
  END ;

rr <-- remove_vehicle ( vv ) =
  PRE vv : VEHICLES_ST
  THEN
    IF vv : vehicles
    THEN vehicles := vehicles - { vv } || rr := true
    ELSE rr := false
    END
  END ;

qq <-- query_vehicle ( vv ) =
  PRE vv : VEHICLES_ST
  THEN
    IF vv : vehicles
    THEN qq := true
    ELSE qq := false
    END
  END


END
