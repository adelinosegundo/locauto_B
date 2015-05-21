Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(VehiclesCTX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(VehiclesCTX))==(Machine(VehiclesCTX));
  Level(Machine(VehiclesCTX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(VehiclesCTX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(VehiclesCTX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(VehiclesCTX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(VehiclesCTX))==(?);
  List_Includes(Machine(VehiclesCTX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(VehiclesCTX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(VehiclesCTX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(VehiclesCTX))==(?);
  Context_List_Variables(Machine(VehiclesCTX))==(?);
  Abstract_List_Variables(Machine(VehiclesCTX))==(?);
  Local_List_Variables(Machine(VehiclesCTX))==(?);
  List_Variables(Machine(VehiclesCTX))==(?);
  External_List_Variables(Machine(VehiclesCTX))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(VehiclesCTX))==(?);
  Abstract_List_VisibleVariables(Machine(VehiclesCTX))==(?);
  External_List_VisibleVariables(Machine(VehiclesCTX))==(?);
  Expanded_List_VisibleVariables(Machine(VehiclesCTX))==(?);
  List_VisibleVariables(Machine(VehiclesCTX))==(?);
  Internal_List_VisibleVariables(Machine(VehiclesCTX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(VehiclesCTX))==(btrue);
  Gluing_List_Invariant(Machine(VehiclesCTX))==(btrue);
  Expanded_List_Invariant(Machine(VehiclesCTX))==(btrue);
  Abstract_List_Invariant(Machine(VehiclesCTX))==(btrue);
  Context_List_Invariant(Machine(VehiclesCTX))==(btrue);
  List_Invariant(Machine(VehiclesCTX))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(VehiclesCTX))==(btrue);
  Abstract_List_Assertions(Machine(VehiclesCTX))==(btrue);
  Context_List_Assertions(Machine(VehiclesCTX))==(btrue);
  List_Assertions(Machine(VehiclesCTX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(VehiclesCTX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(VehiclesCTX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(VehiclesCTX))==(skip);
  Context_List_Initialisation(Machine(VehiclesCTX))==(skip);
  List_Initialisation(Machine(VehiclesCTX))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(VehiclesCTX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(VehiclesCTX))==(btrue);
  List_Constraints(Machine(VehiclesCTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(VehiclesCTX))==(?);
  List_Operations(Machine(VehiclesCTX))==(?)
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
  List_Valuable_Constants(Machine(VehiclesCTX))==(?);
  Inherited_List_Constants(Machine(VehiclesCTX))==(?);
  List_Constants(Machine(VehiclesCTX))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(VehiclesCTX),VEHICLES_ST)==(?);
  Context_List_Enumerated(Machine(VehiclesCTX))==(?);
  Context_List_Defered(Machine(VehiclesCTX))==(?);
  Context_List_Sets(Machine(VehiclesCTX))==(?);
  List_Valuable_Sets(Machine(VehiclesCTX))==(VEHICLES_ST);
  Inherited_List_Enumerated(Machine(VehiclesCTX))==(?);
  Inherited_List_Defered(Machine(VehiclesCTX))==(?);
  Inherited_List_Sets(Machine(VehiclesCTX))==(?);
  List_Enumerated(Machine(VehiclesCTX))==(?);
  List_Defered(Machine(VehiclesCTX))==(VEHICLES_ST);
  List_Sets(Machine(VehiclesCTX))==(VEHICLES_ST)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(VehiclesCTX))==(?);
  Expanded_List_HiddenConstants(Machine(VehiclesCTX))==(?);
  List_HiddenConstants(Machine(VehiclesCTX))==(?);
  External_List_HiddenConstants(Machine(VehiclesCTX))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(VehiclesCTX))==(btrue);
  Context_List_Properties(Machine(VehiclesCTX))==(btrue);
  Inherited_List_Properties(Machine(VehiclesCTX))==(btrue);
  List_Properties(Machine(VehiclesCTX))==(VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(VehiclesCTX)) == (VEHICLES_ST | ? | ? | ? | ? | ? | ? | ? | VehiclesCTX);
  List_Of_HiddenCst_Ids(Machine(VehiclesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(VehiclesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(VehiclesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(VehiclesCTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(VehiclesCTX)) == (Type(VEHICLES_ST) == Cst(SetOf(atype(VEHICLES_ST,"[VEHICLES_ST","]VEHICLES_ST"))))
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
