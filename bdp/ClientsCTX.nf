Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ClientsCTX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ClientsCTX))==(Machine(ClientsCTX));
  Level(Machine(ClientsCTX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ClientsCTX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ClientsCTX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ClientsCTX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ClientsCTX))==(?);
  List_Includes(Machine(ClientsCTX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ClientsCTX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ClientsCTX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ClientsCTX))==(?);
  Context_List_Variables(Machine(ClientsCTX))==(?);
  Abstract_List_Variables(Machine(ClientsCTX))==(?);
  Local_List_Variables(Machine(ClientsCTX))==(?);
  List_Variables(Machine(ClientsCTX))==(?);
  External_List_Variables(Machine(ClientsCTX))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ClientsCTX))==(?);
  Abstract_List_VisibleVariables(Machine(ClientsCTX))==(?);
  External_List_VisibleVariables(Machine(ClientsCTX))==(?);
  Expanded_List_VisibleVariables(Machine(ClientsCTX))==(?);
  List_VisibleVariables(Machine(ClientsCTX))==(?);
  Internal_List_VisibleVariables(Machine(ClientsCTX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ClientsCTX))==(btrue);
  Gluing_List_Invariant(Machine(ClientsCTX))==(btrue);
  Expanded_List_Invariant(Machine(ClientsCTX))==(btrue);
  Abstract_List_Invariant(Machine(ClientsCTX))==(btrue);
  Context_List_Invariant(Machine(ClientsCTX))==(btrue);
  List_Invariant(Machine(ClientsCTX))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ClientsCTX))==(btrue);
  Abstract_List_Assertions(Machine(ClientsCTX))==(btrue);
  Context_List_Assertions(Machine(ClientsCTX))==(btrue);
  List_Assertions(Machine(ClientsCTX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ClientsCTX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ClientsCTX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ClientsCTX))==(skip);
  Context_List_Initialisation(Machine(ClientsCTX))==(skip);
  List_Initialisation(Machine(ClientsCTX))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ClientsCTX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ClientsCTX))==(btrue);
  List_Constraints(Machine(ClientsCTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ClientsCTX))==(?);
  List_Operations(Machine(ClientsCTX))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ClientsCTX))==(?);
  Inherited_List_Constants(Machine(ClientsCTX))==(?);
  List_Constants(Machine(ClientsCTX))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ClientsCTX),CLIENTS_ST)==(?);
  Context_List_Enumerated(Machine(ClientsCTX))==(?);
  Context_List_Defered(Machine(ClientsCTX))==(?);
  Context_List_Sets(Machine(ClientsCTX))==(?);
  List_Valuable_Sets(Machine(ClientsCTX))==(CLIENTS_ST);
  Inherited_List_Enumerated(Machine(ClientsCTX))==(?);
  Inherited_List_Defered(Machine(ClientsCTX))==(?);
  Inherited_List_Sets(Machine(ClientsCTX))==(?);
  List_Enumerated(Machine(ClientsCTX))==(?);
  List_Defered(Machine(ClientsCTX))==(CLIENTS_ST);
  List_Sets(Machine(ClientsCTX))==(CLIENTS_ST)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ClientsCTX))==(?);
  Expanded_List_HiddenConstants(Machine(ClientsCTX))==(?);
  List_HiddenConstants(Machine(ClientsCTX))==(?);
  External_List_HiddenConstants(Machine(ClientsCTX))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ClientsCTX))==(btrue);
  Context_List_Properties(Machine(ClientsCTX))==(btrue);
  Inherited_List_Properties(Machine(ClientsCTX))==(btrue);
  List_Properties(Machine(ClientsCTX))==(CLIENTS_ST: FIN(INTEGER) & not(CLIENTS_ST = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ClientsCTX)) == (CLIENTS_ST | ? | ? | ? | ? | ? | ? | ? | ClientsCTX);
  List_Of_HiddenCst_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ClientsCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ClientsCTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(ClientsCTX)) == (Type(CLIENTS_ST) == Cst(SetOf(atype(CLIENTS_ST,"[CLIENTS_ST","]CLIENTS_ST"))))
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
