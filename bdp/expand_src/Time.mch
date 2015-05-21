MACHINE           Time

ABSTRACT_VARIABLES time

INVARIANT         time : NAT

INITIALISATION    time := 0

OPERATIONS

pass_time =
  PRE 1 = 1
  THEN time := time + 1
  END ;

qq <-- query_time =
  PRE 1 = 1
  THEN qq := time
  END ;

qq <-- query_delay ( tt ) =
  PRE tt : NAT
  THEN
    IF tt > time
    THEN qq := 0
    ELSE qq := tt - time
    END
  END

END
