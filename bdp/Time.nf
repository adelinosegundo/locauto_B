Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Time))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Time))==(Machine(Time));
  Level(Machine(Time))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Time)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Time))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Time))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Time))==(?);
  List_Includes(Machine(Time))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Time))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Time))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Time))==(?);
  Context_List_Variables(Machine(Time))==(?);
  Abstract_List_Variables(Machine(Time))==(?);
  Local_List_Variables(Machine(Time))==(time);
  List_Variables(Machine(Time))==(time);
  External_List_Variables(Machine(Time))==(time)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Time))==(?);
  Abstract_List_VisibleVariables(Machine(Time))==(?);
  External_List_VisibleVariables(Machine(Time))==(?);
  Expanded_List_VisibleVariables(Machine(Time))==(?);
  List_VisibleVariables(Machine(Time))==(?);
  Internal_List_VisibleVariables(Machine(Time))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Time))==(btrue);
  Gluing_List_Invariant(Machine(Time))==(btrue);
  Expanded_List_Invariant(Machine(Time))==(btrue);
  Abstract_List_Invariant(Machine(Time))==(btrue);
  Context_List_Invariant(Machine(Time))==(btrue);
  List_Invariant(Machine(Time))==(time: NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Time))==(btrue);
  Abstract_List_Assertions(Machine(Time))==(btrue);
  Context_List_Assertions(Machine(Time))==(btrue);
  List_Assertions(Machine(Time))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Time))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Time))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Time))==(time:=0);
  Context_List_Initialisation(Machine(Time))==(skip);
  List_Initialisation(Machine(Time))==(time:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Time))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Time))==(btrue);
  List_Constraints(Machine(Time))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Time))==(pass_time,query_time,query_delay);
  List_Operations(Machine(Time))==(pass_time,query_time,query_delay)
END
&
THEORY ListInputX IS
  List_Input(Machine(Time),pass_time)==(?);
  List_Input(Machine(Time),query_time)==(?);
  List_Input(Machine(Time),query_delay)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Time),pass_time)==(?);
  List_Output(Machine(Time),query_time)==(qq);
  List_Output(Machine(Time),query_delay)==(qq)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Time),pass_time)==(pass_time);
  List_Header(Machine(Time),query_time)==(qq <-- query_time);
  List_Header(Machine(Time),query_delay)==(qq <-- query_delay(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Time),pass_time)==(1 = 1);
  List_Precondition(Machine(Time),query_time)==(1 = 1);
  List_Precondition(Machine(Time),query_delay)==(tt: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Time),query_delay)==(tt: NAT | tt>time ==> qq:=0 [] not(tt>time) ==> qq:=tt-time);
  Expanded_List_Substitution(Machine(Time),query_time)==(1 = 1 | qq:=time);
  Expanded_List_Substitution(Machine(Time),pass_time)==(1 = 1 | time:=time+1);
  List_Substitution(Machine(Time),pass_time)==(time:=time+1);
  List_Substitution(Machine(Time),query_time)==(qq:=time);
  List_Substitution(Machine(Time),query_delay)==(IF tt>time THEN qq:=0 ELSE qq:=tt-time END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Time))==(?);
  Inherited_List_Constants(Machine(Time))==(?);
  List_Constants(Machine(Time))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Time))==(?);
  Context_List_Defered(Machine(Time))==(?);
  Context_List_Sets(Machine(Time))==(?);
  List_Valuable_Sets(Machine(Time))==(?);
  Inherited_List_Enumerated(Machine(Time))==(?);
  Inherited_List_Defered(Machine(Time))==(?);
  Inherited_List_Sets(Machine(Time))==(?);
  List_Enumerated(Machine(Time))==(?);
  List_Defered(Machine(Time))==(?);
  List_Sets(Machine(Time))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Time))==(?);
  Expanded_List_HiddenConstants(Machine(Time))==(?);
  List_HiddenConstants(Machine(Time))==(?);
  External_List_HiddenConstants(Machine(Time))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Time))==(btrue);
  Context_List_Properties(Machine(Time))==(btrue);
  Inherited_List_Properties(Machine(Time))==(btrue);
  List_Properties(Machine(Time))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Time),pass_time)==(?);
  List_ANY_Var(Machine(Time),query_time)==(?);
  List_ANY_Var(Machine(Time),query_delay)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Time)) == (? | ? | time | ? | pass_time,query_time,query_delay | ? | ? | ? | Time);
  List_Of_HiddenCst_Ids(Machine(Time)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Time)) == (?);
  List_Of_VisibleVar_Ids(Machine(Time)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Time)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Time)) == (Type(time) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Time)) == (Type(query_delay) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(query_time) == Cst(btype(INTEGER,?,?),No_type);Type(pass_time) == Cst(No_type,No_type));
  Observers(Machine(Time)) == (Type(query_delay) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(query_time) == Cst(btype(INTEGER,?,?),No_type))
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
