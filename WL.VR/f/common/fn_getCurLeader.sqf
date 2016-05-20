params ["_joiner","_side"];
private ["_lead"];

switch (_side) do {
  case west: {
    switch (true) do {
      case (!(isNil "UnitNATO_PLT") && {!(isNull UnitNATO_PLT) && {alive UnitNATO_PLT} && {_joiner != UnitNATO_PLT}}): {_lead = UnitNATO_PLT};
      case (!(isNil "UnitNATO_PSG") && {!(isNull UnitNATO_PSG) && {alive UnitNATO_PSG} && {_joiner != UnitNATO_PSG}}): {_lead = UnitNATO_PSG};
      case (!(isNil "UnitNATO_PLT_FO") && {!(isNull UnitNATO_PLT_FO) && {alive UnitNATO_PLT_FO} && {_joiner != UnitNATO_PLT_FO}}): {_lead = UnitNATO_PLT_FO};
      case (!(isNil "UnitNATO_ASL_SL") && {!(isNull UnitNATO_ASL_SL) && {alive UnitNATO_ASL_SL} && {_joiner != UnitNATO_ASL_SL}}): {_lead = UnitNATO_ASL_SL};
      case (!(isNil "UnitNATO_BSL_SL") && {!(isNull UnitNATO_BSL_SL) && {alive UnitNATO_BSL_SL} && {_joiner != UnitNATO_BSL_SL}}): {_lead = UnitNATO_BSL_SL};
      case (!(isNil "UnitNATO_CSL_SL") && {!(isNull UnitNATO_CSL_SL) && {alive UnitNATO_CSL_SL} && {_joiner != UnitNATO_CSL_SL}}): {_lead = UnitNATO_CSL_SL};
      case (!(isNil "UnitNATO_DSL_SL") && {!(isNull UnitNATO_DSL_SL) && {alive UnitNATO_DSL_SL} && {_joiner != UnitNATO_DSL_SL} && {_joiner != UnitNATO_PLT}}): {_lead = UnitNATO_DSL_SL};
      case (!(isNil "UnitNATO_ESL_SL") && {!(isNull UnitNATO_ESL_SL) && {alive UnitNATO_ESL_SL} && {_joiner != UnitNATO_ESL_SL}}): {_lead = UnitNATO_ESL_SL};
      case (!(isNil "UnitNATO_FSL_SL") && {!(isNull UnitNATO_FSL_SL) && {alive UnitNATO_FSL_SL} && {_joiner != UnitNATO_FSL_SL}}): {_lead = UnitNATO_FSL_SL};
      default {_lead = false;};
    };
  };
  case east: {
    switch (true) do {
      case (!(isNil "UnitOPFOR_PLT") && {!(isNull UnitOPFOR_PLT) && {alive UnitOPFOR_PLT} && {_joiner != UnitOPFOR_PLT}}): {_lead = UnitOPFOR_PLT};
      case (!(isNil "UnitOPFOR_PSG") && {!(isNull UnitOPFOR_PSG) && {alive UnitOPFOR_PSG} && {_joiner != UnitOPFOR_PSG}}): {_lead = UnitOPFOR_PSG};
      case (!(isNil "UnitOPFOR_PLT_FO") && {!(isNull UnitOPFOR_PLT_FO) && {alive UnitOPFOR_PLT_FO} && {_joiner != UnitOPFOR_PLT_FO}}): {_lead = UnitOPFOR_PLT_FO};
      case (!(isNil "UnitOPFOR_ASL_SL") && {!(isNull UnitOPFOR_ASL_SL) && {alive UnitOPFOR_ASL_SL} && {_joiner != UnitOPFOR_ASL_SL}}): {_lead = UnitOPFOR_ASL_SL};
      case (!(isNil "UnitOPFOR_BSL_SL") && {!(isNull UnitOPFOR_BSL_SL) && {alive UnitOPFOR_BSL_SL} && {_joiner != UnitOPFOR_BSL_SL}}): {_lead = UnitOPFOR_BSL_SL};
      case (!(isNil "UnitOPFOR_CSL_SL") && {!(isNull UnitOPFOR_CSL_SL) && {alive UnitOPFOR_CSL_SL} && {_joiner != UnitOPFOR_CSL_SL}}): {_lead = UnitOPFOR_CSL_SL};
      case (!(isNil "UnitOPFOR_DSL_SL") && {!(isNull UnitOPFOR_DSL_SL) && {alive UnitOPFOR_DSL_SL} && {_joiner != UnitOPFOR_DSL_SL}}): {_lead = UnitOPFOR_DSL_SL};
      case (!(isNil "UnitOPFOR_ESL_SL") && {!(isNull UnitOPFOR_ESL_SL) && {alive UnitOPFOR_ESL_SL} && {_joiner != UnitOPFOR_ESL_SL}}): {_lead = UnitOPFOR_ESL_SL};
      case (!(isNil "UnitOPFOR_FSL_SL") && {!(isNull UnitOPFOR_FSL_SL) && {alive UnitOPFOR_FSL_SL} && {_joiner != UnitOPFOR_FSL_SL}}): {_lead = UnitOPFOR_FSL_SL};
      default {_lead = false;};
    };
  };
  case resistance: {
    switch (true) do {
      case (!(isNil "UnitIND_PLT") && {!(isNull UnitIND_PLT) && {alive UnitIND_PLT} && {_joiner != UnitIND_PLT}}): {_lead = UnitIND_PLT};
      case (!(isNil "UnitIND_PSG") && {!(isNull UnitIND_PSG) && {alive UnitIND_PSG} && {_joiner != UnitIND_PSG}}): {_lead = UnitIND_PSG};
      case (!(isNil "UnitIND_PLT_FO") && {!(isNull UnitIND_PLT_FO) && {alive UnitIND_PLT_FO} && {_joiner != UnitIND_PLT_FO}}): {_lead = UnitIND_PLT_FO};
      case (!(isNil "UnitIND_ASL_SL") && {!(isNull UnitIND_ASL_SL) && {alive UnitIND_ASL_SL} && {_joiner != UnitIND_ASL_SL}}): {_lead = UnitIND_ASL_SL};
      case (!(isNil "UnitIND_BSL_SL") && {!(isNull UnitIND_BSL_SL) && {alive UnitIND_BSL_SL} && {_joiner != UnitIND_BSL_SL}}): {_lead = UnitIND_BSL_SL};
      case (!(isNil "UnitIND_CSL_SL") && {!(isNull UnitIND_CSL_SL) && {alive UnitIND_CSL_SL} && {_joiner != UnitIND_CSL_SL}}): {_lead = UnitIND_CSL_SL};
      case (!(isNil "UnitIND_DSL_SL") && {!(isNull UnitIND_DSL_SL) && {alive UnitIND_DSL_SL} && {_joiner != UnitIND_DSL_SL}}): {_lead = UnitIND_DSL_SL};
      case (!(isNil "UnitIND_ESL_SL") && {!(isNull UnitIND_ESL_SL) && {alive UnitIND_ESL_SL} && {_joiner != UnitIND_ESL_SL}}): {_lead = UnitIND_ESL_SL};
      case (!(isNil "UnitIND_FSL_SL") && {!(isNull UnitIND_FSL_SL) && {alive UnitIND_FSL_SL} && {_joiner != UnitIND_FSL_SL}}): {_lead = UnitIND_FSL_SL};
      default {_lead = false;};
    };
  };
};

if (isNil "_lead") then {_lead = false};

_lead
