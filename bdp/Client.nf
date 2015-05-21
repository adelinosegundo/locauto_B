Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Client))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Client))==(Machine(Client));
  Level(Machine(Client))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Client)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Client))==(Boolean,ClientsCTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Client))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Client))==(?);
  List_Includes(Machine(Client))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Client))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Client))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Client))==(?);
  Context_List_Variables(Machine(Client))==(?);
  Abstract_List_Variables(Machine(Client))==(?);
  Local_List_Variables(Machine(Client))==(clients);
  List_Variables(Machine(Client))==(clients);
  External_List_Variables(Machine(Client))==(clients)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Client))==(?);
  Abstract_List_VisibleVariables(Machine(Client))==(?);
  External_List_VisibleVariables(Machine(Client))==(?);
  Expanded_List_VisibleVariables(Machine(Client))==(?);
  List_VisibleVariables(Machine(Client))==(?);
  Internal_List_VisibleVariables(Machine(Client))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Client))==(btrue);
  Gluing_List_Invariant(Machine(Client))==(btrue);
  Expanded_List_Invariant(Machine(Client))==(btrue);
  Abstract_List_Invariant(Machine(Client))==(btrue);
  Context_List_Invariant(Machine(Client))==(btrue);
  List_Invariant(Machine(Client))==(clients <: CLIENTS_ST)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Client))==(btrue);
  Abstract_List_Assertions(Machine(Client))==(btrue);
  Context_List_Assertions(Machine(Client))==(btrue);
  List_Assertions(Machine(Client))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Client))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Client))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Client))==(clients:={});
  Context_List_Initialisation(Machine(Client))==(skip);
  List_Initialisation(Machine(Client))==(clients:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Client))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Client),Machine(Boolean))==(?);
  List_Instanciated_Parameters(Machine(Client),Machine(ClientsCTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Client))==(btrue);
  List_Constraints(Machine(Client))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Client))==(add_client,remove_client,query_client);
  List_Operations(Machine(Client))==(add_client,remove_client,query_client)
END
&
THEORY ListInputX IS
  List_Input(Machine(Client),add_client)==(cc);
  List_Input(Machine(Client),remove_client)==(cc);
  List_Input(Machine(Client),query_client)==(cc)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Client),add_client)==(rr);
  List_Output(Machine(Client),remove_client)==(rr);
  List_Output(Machine(Client),query_client)==(pp)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Client),add_client)==(rr <-- add_client(cc));
  List_Header(Machine(Client),remove_client)==(rr <-- remove_client(cc));
  List_Header(Machine(Client),query_client)==(pp <-- query_client(cc))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Client),add_client)==(cc: CLIENTS_ST);
  List_Precondition(Machine(Client),remove_client)==(cc: CLIENTS_ST);
  List_Precondition(Machine(Client),query_client)==(cc: CLIENTS_ST)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Client),query_client)==(cc: CLIENTS_ST | cc: clients ==> pp:=true [] not(cc: clients) ==> pp:=false);
  Expanded_List_Substitution(Machine(Client),remove_client)==(cc: CLIENTS_ST | cc: clients ==> clients,rr:=clients-{cc},true [] not(cc: clients) ==> rr:=false);
  Expanded_List_Substitution(Machine(Client),add_client)==(cc: CLIENTS_ST | cc/:clients ==> clients,rr:=clients\/{cc},true [] not(cc/:clients) ==> rr:=false);
  List_Substitution(Machine(Client),add_client)==(IF cc/:clients THEN clients:=clients\/{cc} || rr:=true ELSE rr:=false END);
  List_Substitution(Machine(Client),remove_client)==(IF cc: clients THEN clients:=clients-{cc} || rr:=true ELSE rr:=false END);
  List_Substitution(Machine(Client),query_client)==(IF cc: clients THEN pp:=true ELSE pp:=false END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Client))==(?);
  Inherited_List_Constants(Machine(Client))==(?);
  List_Constants(Machine(Client))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Client),BOOL_RESPONSE)==({true,false});
  Context_List_Enumerated(Machine(Client))==(BOOL_RESPONSE);
  Context_List_Defered(Machine(Client))==(CLIENTS_ST);
  Context_List_Sets(Machine(Client))==(BOOL_RESPONSE,CLIENTS_ST);
  List_Valuable_Sets(Machine(Client))==(?);
  Inherited_List_Enumerated(Machine(Client))==(?);
  Inherited_List_Defered(Machine(Client))==(?);
  Inherited_List_Sets(Machine(Client))==(?);
  List_Enumerated(Machine(Client))==(?);
  List_Defered(Machine(Client))==(?);
  List_Sets(Machine(Client))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Client))==(?);
  Expanded_List_HiddenConstants(Machine(Client))==(?);
  List_HiddenConstants(Machine(Client))==(?);
  External_List_HiddenConstants(Machine(Client))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Client))==(btrue);
  Context_List_Properties(Machine(Client))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & CLIENTS_ST: FIN(INTEGER) & not(CLIENTS_ST = {}));
  Inherited_List_Properties(Machine(Client))==(btrue);
  List_Properties(Machine(Client))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Client),Machine(ClientsCTX))==(?);
  Seen_Context_List_Enumerated(Machine(Client))==(?);
  Seen_Context_List_Invariant(Machine(Client))==(btrue);
  Seen_Context_List_Assertions(Machine(Client))==(btrue);
  Seen_Context_List_Properties(Machine(Client))==(btrue);
  Seen_List_Constraints(Machine(Client))==(btrue);
  Seen_List_Operations(Machine(Client),Machine(ClientsCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Client),Machine(ClientsCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Client),Machine(Boolean))==(?);
  Seen_List_Operations(Machine(Client),Machine(Boolean))==(?);
  Seen_Expanded_List_Invariant(Machine(Client),Machine(Boolean))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Client),add_client)==(?);
  List_ANY_Var(Machine(Client),remove_client)==(?);
  List_ANY_Var(Machine(Client),query_client)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Client)) == (? | ? | clients | ? | add_client,remove_client,query_client | ? | seen(Machine(Boolean)),seen(Machine(ClientsCTX)) | ? | Client);
  List_Of_HiddenCst_Ids(Machine(Client)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Client)) == (?);
  List_Of_VisibleVar_Ids(Machine(Client)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Client)) == (?: ?);
  List_Of_Ids(Machine(ClientsCTX)) == (CLIENTS_ST | ? | ? | ? | ? | ? | ? | ? | ClientsCTX);
  List_Of_HiddenCst_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ClientsCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ClientsCTX)) == (?: ?);
  List_Of_Ids(Machine(Boolean)) == (BOOL_RESPONSE,true,false | ? | ? | ? | ? | ? | ? | ? | Boolean);
  List_Of_HiddenCst_Ids(Machine(Boolean)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Boolean)) == (?);
  List_Of_VisibleVar_Ids(Machine(Boolean)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Boolean)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Client)) == (Type(clients) == Mvl(SetOf(atype(CLIENTS_ST,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Client)) == (Type(query_client) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?));Type(remove_client) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?));Type(add_client) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?)));
  Observers(Machine(Client)) == (Type(query_client) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
