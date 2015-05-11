MACHINE Client

SEES Boolean

INCLUDES ClientsCTX

VARIABLES clients

INVARIANT clients <: CLIENTS_ST

INITIALISATION clients := {}

OPERATIONS

rr <-- add_client(cc)=
  PRE cc : CLIENTS_ST
  THEN
    IF cc /: clients
    THEN clients := clients \/ {cc}||rr:=true
    ELSE rr:=false
    END
  END;

rr <-- remove_client(cc)=
  PRE 1=1
  THEN
    IF cc : clients
    THEN clients := clients - {cc}||rr:=true
    ELSE rr:=false
    END
  END;

pp <-- query_client(cc)=
  PRE 1=1
  THEN
    IF cc : clients
    THEN pp := true
    ELSE pp := false
    END
  END

END
