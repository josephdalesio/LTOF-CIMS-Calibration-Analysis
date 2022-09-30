#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.

CONSTANT GasConstant_LatmKmol = 0.082057366080960 // Gas Constant in L atm/K mol
CONSTANT AvogadrosNumber_mol = 6.02214076e23 // Avogadros Number in /mol
CONSTANT Temperature_K = 295 //Approximate Room Temperature in Kelvin
CONSTANT Pressure_atm = 0.85 //Boulder Pressure in atm 
CONSTANT VolumeCIMS_L = 2 // Air Flow Volume in Liters
CONSTANT CIMSGasFlow_slpm = 2 // Gas Flow Rate in slpm
CONSTANT ConcAir_molec_cm3 = 2.5e19 // Concentration of Air in molecules/cm^3 at 273 K and 1 atm 


//Please input waves with following names: time_start_avg, time_end_avg, samp_vol, samp_conc, FlowRate_uL_min, GasSignal_ncps

Function CalibrationMaster()

//Raw Waves 
Wave H2OI_
Wave I_
Wave CH3CN2I_
Wave C2F5COOHI_
Wave CH3CNI_
Wave NO2I_
Wave Formic_Acid_I
Wave Glyoxal_I
Wave Acetic_Acid_I
Wave Ethylene_Glycol_I
Wave Acrylic_Acid_I
Wave Glyoxylic_Acid_I
Wave Diacetyl_I
Wave Oxalic_Acid_I
Wave Lactic_Acid_I
Wave Pentanoic_Acid_I
Wave Malonic_Acid_I
Wave Hexanoic_Acid_I
Wave Succinic_Acid_I
Wave Heptanoic_Acid_I
Wave Caprylic_Acid_I

Wave H2OH2OI_
Wave CH3CN2H2OI_
Wave C2F5COOHH2OI_
Wave CH3CNH2OI_
Wave NO2H2OI_
Wave Formic_Acid_H2OI
Wave Glyoxal_H2OI
Wave Acetic_Acid_H2OI
Wave Ethylene_Glycol_H2OI
Wave Acrylic_Acid_H2OI
Wave Glyoxylic_Acid_H2OI
Wave Diacetyl_H2OI
Wave Oxalic_Acid_H2OI
Wave Lactic_Acid_H2OI
Wave Pentanoic_Acid_H2OI
Wave Malonic_Acid_H2OI
Wave Hexanoic_Acid_H2OI
Wave Succinic_Acid_H2OI
Wave Heptanoic_Acid_H2OI
Wave Caprylic_Acid_H2OI
Wave H2OH2O2I_
Wave H2O2I_
Wave CH3CN2H2O2I_
Wave C2F5COOHH2O2I_
Wave CH3CNH2O2I_
Wave NO2H2O2I_
Wave Formic_Acid_H2O2I
Wave Glyoxal_H2O2I
Wave Acetic_Acid_H2O2I
Wave Ethylene_Glycol_H2O2I
Wave Acrylic_Acid_H2O2I
Wave Glyoxylic_Acid_H2O2I
Wave Diacetyl_H2O2I
Wave Oxalic_Acid_H2O2I
Wave Lactic_Acid_H2O2I
Wave Pentanoic_Acid_H2O2I
Wave Malonic_Acid_H2O2I
Wave Hexanoic_Acid_H2O2I
Wave Succinic_Acid_H2O2I
Wave Heptanoic_Acid_H2O2I
Wave Caprylic_Acid_H2O2I
Wave Methylsuccinic_Acid_I
Wave Methylacrylic_Acid_I
Wave Methylglyoxal_I
Wave Glyoxal_Monohydrate_I
Wave Glyoxal_Dihydrate_I
Wave Glyoxal_Trihydrate_I
Wave Methylglyoxal_Monohydrate_I
Wave Methylglyoxal_Dihydrate_I
Wave Methylglyoxal_Trihydrate_I
Wave Diacetyl_Monohydrate_I
Wave Diacetyl_Dihydrate_I
Wave Diacetyl_Trihydrate_I
Wave ISOPOOH
wave samp_conc_p
Wave time_step

//Normalized Waves 
Wave H2OI__n
Wave I__n
Wave CH3CN2I__n
Wave C2F5COOHI__n
Wave CH3CNI__n
Wave NO2I__n
Wave Formic_Acid_I_n
Wave Glyoxal_I_n
Wave Acetic_Acid_I_n
Wave Ethylene_Glycol_I_n
Wave Acrylic_Acid_I_n
Wave Glyoxylic_Acid_I_n
Wave Diacetyl_I_n
Wave Oxalic_Acid_I_n
Wave Lactic_Acid_I_n
Wave Pentanoic_Acid_I_n
Wave Malonic_Acid_I_n
Wave Hexanoic_Acid_I_n
Wave Succinic_Acid_I_n
Wave Heptanoic_Acid_I_n
Wave Caprylic_Acid_I_n
Wave Methylsuccinic_Acid_I_n
Wave Methylacrylic_Acid_I_n
Wave Methylglyoxal_I_n
Wave Glyoxal_Monohydrate_I_n
Wave Glyoxal_Dihydrate_I_n
Wave Glyoxal_Trihydrate_I_n
Wave Methylglyoxal_Monohydrate_I_n
Wave Methylglyoxal_Dihydrate_I_n
Wave Methylglyoxal_Trihydrate_I_n
Wave Diacetyl_Monohydrate_I_n
Wave Diacetyl_Dihydrate_I_n
Wave Diacetyl_Trihydrate_I_n
Wave ISOPOOH_n

Wave H2OH2OI_n
Wave CH3CN2H2OI_n
Wave C2F5COOHH2OI_n
Wave CH3CNH2OI_n
Wave NO2H2OI_n
Wave Formic_Acid_H2OI_n
Wave Glyoxal_H2OI_n
Wave Acetic_Acid_H2OI_n
Wave Ethylene_Glycol_H2OI_n
Wave Acrylic_Acid_H2OI_n
Wave Glyoxylic_Acid_H2OI_n
Wave Diacetyl_H2OI_n
Wave Oxalic_Acid_H2OI_n
Wave Lactic_Acid_H2OI_n
Wave Pentanoic_Acid_H2OI_n
Wave Malonic_Acid_H2OI_n
Wave Hexanoic_Acid_H2OI_n
Wave Succinic_Acid_H2OI_n
Wave Heptanoic_Acid_H2OI_n
Wave Caprylic_Acid_H2OI_n
Wave H2OH2O2I_n
Wave H2O2I_n
Wave CH3CN2H2O2I_n
Wave C2F5COOHH2O2I_n
Wave CH3CNH2O2I_n
Wave NO2H2O2I_n
Wave Formic_Acid_H2O2I_n
Wave Glyoxal_H2O2I_n
Wave Acetic_Acid_H2O2I_n
Wave Ethylene_Glycol_H2O2I_n
Wave Acrylic_Acid_H2O2I_n
Wave Glyoxylic_Acid_H2O2I_n
Wave Diacetyl_H2O2I_n
Wave Oxalic_Acid_H2O2I_n
Wave Lactic_Acid_H2O2I_n
Wave Pentanoic_Acid_H2O2I_n
Wave Malonic_Acid_H2O2I_n
Wave Hexanoic_Acid_H2O2I_n
Wave Succinic_Acid_H2O2I_n
Wave Heptanoic_Acid_H2O2I_n
Wave Caprylic_Acid_H2O2I_n

//Step Average Waves (noralized wave)
Wave H2OI__n_avg
Wave I__n_avg
Wave CH3CN2I__n_avg
Wave C2F5COOHI__n_avg
Wave CH3CNI__n_avg
Wave NO2I__n_avg
Wave Formic_Acid_I_n_avg
Wave Glyoxal_I_n_avg
Wave Acetic_Acid_I_n_avg
Wave Ethylene_Glycol_I_n_avg
Wave Acrylic_Acid_I_n_avg
Wave Glyoxylic_Acid_I_n_avg
Wave Diacetyl_I_n_avg
Wave Oxalic_Acid_I_n_avg
Wave Lactic_Acid_I_n_avg
Wave Pentanoic_Acid_I_n_avg
Wave Malonic_Acid_I_n_avg
Wave Hexanoic_Acid_I_n_avg
Wave Succinic_Acid_I_n_avg
Wave Heptanoic_Acid_I_n_avg
Wave Caprylic_Acid_I_n_avg
Wave Methylsuccinic_Acid_I_n_avg
Wave Methylacrylic_Acid_I_n_avg
Wave Methylglyoxal_I_n_avg
Wave Glyoxal_Monohydrate_I_n_avg
Wave Glyoxal_Dihydrate_I_n_avg
Wave Glyoxal_Trihydrate_I_n_avg
Wave Methylglyoxal_Monohydrate_I_n_avg
Wave Methylglyoxal_Dihydrate_I_n_avg
Wave Methylglyoxal_Trihydrate_I_n_avg
Wave Diacetyl_Monohydrate_I_n_avg
Wave Diacetyl_Dihydrate_I_n_avg
Wave Diacetyl_Trihydrate_I_n_avg

Wave H2OH2OI_n_avg
Wave CH3CN2H2OI_n_avg
Wave C2F5COOHH2OI_n_avg
Wave CH3CNH2OI_n_avg
Wave NO2H2OI_n_avg
Wave Formic_Acid_H2OI_n_avg
Wave Glyoxal_H2OI_n_avg
Wave Acetic_Acid_H2OI_n_avg
Wave Ethylene_Glycol_H2OI_n_avg
Wave Acrylic_Acid_H2OI_n_avg
Wave Glyoxylic_Acid_H2OI_n_avg
Wave Diacetyl_H2OI_n_avg
Wave Oxalic_Acid_H2OI_n_avg
Wave Lactic_Acid_H2OI_n_avg
Wave Pentanoic_Acid_H2OI_n_avg
Wave Malonic_Acid_H2OI_n_avg
Wave Hexanoic_Acid_H2OI_n_avg
Wave Succinic_Acid_H2OI_n_avg
Wave Heptanoic_Acid_H2OI_n_avg
Wave Caprylic_Acid_H2OI_n_avg
Wave H2OH2O2I_n_avg
Wave H2O2I_n_avg
Wave CH3CN2H2O2I_n_avg
Wave C2F5COOHH2O2I_n_avg
Wave CH3CNH2O2I_n_avg
Wave NO2H2O2I_n_avg
Wave Formic_Acid_H2O2I_n_avg
Wave Glyoxal_H2O2I_n_avg
Wave Acetic_Acid_H2O2I_n_avg
Wave Ethylene_Glycol_H2O2I_n_avg
Wave Acrylic_Acid_H2O2I_n_avg
Wave Glyoxylic_Acid_H2O2I_n_avg
Wave Diacetyl_H2O2I_n_avg
Wave Oxalic_Acid_H2O2I_n_avg
Wave Lactic_Acid_H2O2I_n_avg
Wave Pentanoic_Acid_H2O2I_n_avg
Wave Malonic_Acid_H2O2I_n_avg
Wave Hexanoic_Acid_H2O2I_n_avg
Wave Succinic_Acid_H2O2I_n_avg
Wave Heptanoic_Acid_H2O2I_n_avg
Wave Caprylic_Acid_H2O2I_n_avg

//Step Average Waves (raw wave)
Wave H2OI__avg
Wave I__avg
Wave CH3CN2I__avg
Wave C2F5COOHI__avg
Wave CH3CNI__avg
Wave NO2I__avg
Wave Formic_Acid_I_avg
Wave Glyoxal_I_avg
Wave Acetic_Acid_I_avg
Wave Ethylene_Glycol_I_avg
Wave Acrylic_Acid_I_avg
Wave Glyoxylic_Acid_I_avg
Wave Diacetyl_I_avg
Wave Oxalic_Acid_I_avg
Wave Lactic_Acid_I_avg
Wave Pentanoic_Acid_I_avg
Wave Malonic_Acid_I_avg
Wave Hexanoic_Acid_I_avg
Wave Succinic_Acid_I_avg
Wave Heptanoic_Acid_I_avg
Wave Caprylic_Acid_I_avg
Wave Methylsuccinic_Acid_I_avg
Wave Methylacrylic_Acid_I_avg
Wave Methylglyoxal_I_avg
Wave Glyoxal_Monohydrate_I_avg
Wave Glyoxal_Dihydrate_I_avg
Wave Glyoxal_Trihydrate_I_avg
Wave Methylglyoxal_Monohydrate_I_avg
Wave Methylglyoxal_Dihydrate_I_avg
Wave Methylglyoxal_Trihydrate_I_avg
Wave Diacetyl_Monohydrate_I_avg
Wave Diacetyl_Dihydrate_I_avg
Wave Diacetyl_Trihydrate_I_avg

Wave H2OH2OI__avg
Wave CH3CN2H2OI__avg
Wave C2F5COOHH2OI__avg
Wave CH3CNH2OI__avg
Wave NO2H2OI__avg
Wave Formic_Acid_H2OI_avg
Wave Glyoxal_H2OI_avg
Wave Acetic_Acid_H2OI_avg
Wave Ethylene_Glycol_H2OI_avg
Wave Acrylic_Acid_H2OI_avg
Wave Glyoxylic_Acid_H2OI_avg
Wave Diacetyl_H2OI_avg
Wave Oxalic_Acid_H2OI_avg
Wave Lactic_Acid_H2OI_avg
Wave Pentanoic_Acid_H2OI_avg
Wave Malonic_Acid_H2OI_avg
Wave Hexanoic_Acid_H2OI_avg
Wave Succinic_Acid_H2OI_avg
Wave Heptanoic_Acid_H2OI_avg
Wave Caprylic_Acid_H2OI_avg
Wave H2OH2O2I__avg
Wave H2O2I__avg
Wave CH3CN2H2O2I__avg
Wave C2F5COOHH2O2I__avg
Wave CH3CNH2O2I__avg
Wave NO2H2O2I__avg
Wave Formic_Acid_H2O2I_avg
Wave Glyoxal_H2O2I_avg
Wave Acetic_Acid_H2O2I_avg
Wave Ethylene_Glycol_H2O2I_avg
Wave Acrylic_Acid_H2O2I_avg
Wave Glyoxylic_Acid_H2O2I_avg
Wave Diacetyl_H2O2I_avg
Wave Oxalic_Acid_H2O2I_avg
Wave Lactic_Acid_H2O2I_avg
Wave Pentanoic_Acid_H2O2I_avg
Wave Malonic_Acid_H2O2I_avg
Wave Hexanoic_Acid_H2O2I_avg
Wave Succinic_Acid_H2O2I_avg
Wave Heptanoic_Acid_H2O2I_avg
Wave Caprylic_Acid_H2O2I_avg

//Background Substracted Waves (normalized wave)
Wave H2OI__n_BG_Sub
Wave I__n_BG_Sub
Wave CH3CN2I__n_BG_Sub
Wave C2F5COOHI__n_BG_Sub
Wave CH3CNI__n_BG_Sub
Wave NO2I__n_BG_Sub
Wave Formic_Acid_I_n_BG_Sub
Wave Glyoxal_I_n_BG_Sub
Wave Acetic_Acid_I_n_BG_Sub
Wave Ethylene_Glycol_I_n_BG_Sub
Wave Acrylic_Acid_I_n_BG_Sub
Wave Glyoxylic_Acid_I_n_BG_Sub
Wave Diacetyl_I_n_BG_Sub
Wave Oxalic_Acid_I_n_BG_Sub
Wave Lactic_Acid_I_n_BG_Sub
Wave Pentanoic_Acid_I_n_BG_Sub
Wave Malonic_Acid_I_n_BG_Sub
Wave Hexanoic_Acid_I_n_BG_Sub
Wave Succinic_Acid_I_n_BG_Sub
Wave Heptanoic_Acid_I_n_BG_Sub
Wave Caprylic_Acid_I_n_BG_Sub
Wave Methylsuccinic_Acid_I_n_BG_Sub
Wave Methylacrylic_Acid_I_n_BG_Sub
Wave Methylglyoxal_I_n_BG_Sub
Wave Glyoxal_Monohydrate_I_n_BG_Sub
Wave Glyoxal_Dihydrate_I_n_BG_Sub
Wave Glyoxal_Trihydrate_I_n_BG_Sub
Wave Methylglyoxal_Monohydrate_I_n_BG_Sub
Wave Methylglyoxal_Dihydrate_I_n_BG_Sub
Wave Methylglyoxal_Trihydrate_I_n_BG_Sub
Wave Diacetyl_Monohydrate_I_n_BG_Sub
Wave Diacetyl_Dihydrate_I_n_BG_Sub
Wave Diacetyl_Trihydrate_I_n_BG_Sub

Wave H2OH2OI_n_BG_Sub
Wave CH3CN2H2OI_n_BG_Sub
Wave C2F5COOHH2OI_n_BG_Sub
Wave CH3CNH2OI_n_BG_Sub
Wave NO2H2OI_n_BG_Sub
Wave Formic_Acid_H2OI_n_BG_Sub
Wave Glyoxal_H2OI_n_BG_Sub
Wave Acetic_Acid_H2OI_n_BG_Sub
Wave Ethylene_Glycol_H2OI_n_BG_Sub
Wave Acrylic_Acid_H2OI_n_BG_Sub
Wave Glyoxylic_Acid_H2OI_n_BG_Sub
Wave Diacetyl_H2OI_n_BG_Sub
Wave Oxalic_Acid_H2OI_n_BG_Sub
Wave Lactic_Acid_H2OI_n_BG_Sub
Wave Pentanoic_Acid_H2OI_n_BG_Sub
Wave Malonic_Acid_H2OI_n_BG_Sub
Wave Hexanoic_Acid_H2OI_n_BG_Sub
Wave Succinic_Acid_H2OI_n_BG_Sub
Wave Heptanoic_Acid_H2OI_n_BG_Sub
Wave Caprylic_Acid_H2OI_n_BG_Sub
Wave H2OH2O2I_n_BG_Sub
Wave H2O2I_n_BG_Sub
Wave CH3CN2H2O2I_n_BG_Sub
Wave C2F5COOHH2O2I_n_BG_Sub
Wave CH3CNH2O2I_n_BG_Sub
Wave NO2H2O2I_n_BG_Sub
Wave Formic_Acid_H2O2I_n_BG_Sub
Wave Glyoxal_H2O2I_n_BG_Sub
Wave Acetic_Acid_H2O2I_n_BG_Sub
Wave Ethylene_Glycol_H2O2I_n_BG_Sub
Wave Acrylic_Acid_H2O2I_n_BG_Sub
Wave Glyoxylic_Acid_H2O2I_n_BG_Sub
Wave Diacetyl_H2O2I_n_BG_Sub
Wave Oxalic_Acid_H2O2I_n_BG_Sub
Wave Lactic_Acid_H2O2I_n_BG_Sub
Wave Pentanoic_Acid_H2O2I_n_BG_Sub
Wave Malonic_Acid_H2O2I_n_BG_Sub
Wave Hexanoic_Acid_H2O2I_n_BG_Sub
Wave Succinic_Acid_H2O2I_n_BG_Sub
Wave Heptanoic_Acid_H2O2I_n_BG_Sub
Wave Caprylic_Acid_H2O2I_n_BG_Sub

//Background Substracted Waves (raw wave)
Wave H2OI__BG_Sub
Wave I__BG_Sub
Wave CH3CN2I__BG_Sub
Wave C2F5COOHI__BG_Sub
Wave CH3CNI__BG_Sub
Wave NO2I__BG_Sub
Wave Formic_Acid_I_BG_Sub
Wave Glyoxal_I_BG_Sub
Wave Acetic_Acid_I_BG_Sub
Wave Ethylene_Glycol_I_BG_Sub
Wave Acrylic_Acid_I_BG_Sub
Wave Glyoxylic_Acid_I_BG_Sub
Wave Diacetyl_I_BG_Sub
Wave Oxalic_Acid_I_BG_Sub
Wave Lactic_Acid_I_BG_Sub
Wave Pentanoic_Acid_I_BG_Sub
Wave Malonic_Acid_I_BG_Sub
Wave Hexanoic_Acid_I_BG_Sub
Wave Succinic_Acid_I_BG_Sub
Wave Heptanoic_Acid_I_BG_Sub
Wave Caprylic_Acid_I_BG_Sub
Wave Methylsuccinic_Acid_I_BG_Sub
Wave Methylacrylic_Acid_I_BG_Sub
Wave Methylglyoxal_I_BG_Sub
Wave Glyoxal_Monohydrate_I_BG_Sub
Wave Glyoxal_Dihydrate_I_BG_Sub
Wave Glyoxal_Trihydrate_I_BG_Sub
Wave Methylglyoxal_Monohydrate_I_BG_Sub
Wave Methylglyoxal_Dihydrate_I_BG_Sub
Wave Methylglyoxal_Trihydrate_I_BG_Sub
Wave Diacetyl_Monohydrate_I_BG_Sub
Wave Diacetyl_Dihydrate_I_BG_Sub
Wave Diacetyl_Trihydrate_I_BG_Sub

Wave H2OH2OI__BG_Sub
Wave CH3CN2H2OI__BG_Sub
Wave C2F5COOHH2OI__BG_Sub
Wave CH3CNH2OI__BG_Sub
Wave NO2H2OI__BG_Sub
Wave Formic_Acid_H2OI_BG_Sub
Wave Glyoxal_H2OI_BG_Sub
Wave Acetic_Acid_H2OI_BG_Sub
Wave Ethylene_Glycol_H2OI_BG_Sub
Wave Acrylic_Acid_H2OI_BG_Sub
Wave Glyoxylic_Acid_H2OI_BG_Sub
Wave Diacetyl_H2OI_BG_Sub
Wave Oxalic_Acid_H2OI_BG_Sub
Wave Lactic_Acid_H2OI_BG_Sub
Wave Pentanoic_Acid_H2OI_BG_Sub
Wave Malonic_Acid_H2OI_BG_Sub
Wave Hexanoic_Acid_H2OI_BG_Sub
Wave Succinic_Acid_H2OI_BG_Sub
Wave Heptanoic_Acid_H2OI_BG_Sub
Wave Caprylic_Acid_H2OI_BG_Sub
Wave H2OH2O2I__BG_Sub
Wave H2O2I__BG_Sub
Wave CH3CN2H2O2I__BG_Sub
Wave C2F5COOHH2O2I__BG_Sub
Wave CH3CNH2O2I__BG_Sub
Wave NO2H2O2I__BG_Sub
Wave Formic_Acid_H2O2I_BG_Sub
Wave Glyoxal_H2O2I_BG_Sub
Wave Acetic_Acid_H2O2I_BG_Sub
Wave Ethylene_Glycol_H2O2I_BG_Sub
Wave Acrylic_Acid_H2O2I_BG_Sub
Wave Glyoxylic_Acid_H2O2I_BG_Sub
Wave Diacetyl_H2O2I_BG_Sub
Wave Oxalic_Acid_H2O2I_BG_Sub
Wave Lactic_Acid_H2O2I_BG_Sub
Wave Pentanoic_Acid_H2O2I_BG_Sub
Wave Malonic_Acid_H2O2I_BG_Sub
Wave Hexanoic_Acid_H2O2I_BG_Sub
Wave Succinic_Acid_H2O2I_BG_Sub
Wave Heptanoic_Acid_H2O2I_BG_Sub
Wave Caprylic_Acid_H2O2I_BG_Sub

//Background Subtracted Step Average Waves (normalized wave)
Wave H2OI__n_BG_Sub_avg
Wave I__n_BG_Sub_avg
Wave CH3CN2I__n_BG_Sub_avg
Wave C2F5COOHI__n_BG_Sub_avg
Wave CH3CNI__n_BG_Sub_avg
Wave NO2I__n_BG_Sub_avg
Wave Formic_Acid_I_n_BG_Sub_avg
Wave Glyoxal_I_n_BG_Sub_avg
Wave Acetic_Acid_I_n_BG_Sub_avg
Wave Ethylene_Glycol_I_n_BG_Sub_avg
Wave Acrylic_Acid_I_n_BG_Sub_avg
Wave Glyoxylic_Acid_I_n_BG_Sub_avg
Wave Diacetyl_I_n_BG_Sub_avg
Wave Oxalic_Acid_I_n_BG_Sub_avg
Wave Lactic_Acid_I_n_BG_Sub_avg
Wave Pentanoic_Acid_I_n_BG_Sub_avg
Wave Malonic_Acid_I_n_BG_Sub_avg
Wave Hexanoic_Acid_I_n_BG_Sub_avg
Wave Succinic_Acid_I_n_BG_Sub_avg
Wave Heptanoic_Acid_I_n_BG_Sub_avg
Wave Caprylic_Acid_I_n_BG_Sub_avg
Wave Methylsuccinic_Acid_I_n_BG_Sub_avg
Wave Methylacrylic_Acid_I_n_BG_Sub_avg
Wave Methylglyoxal_I_n_BG_Sub_avg
Wave Glyoxal_Monohydrate_I_n_BG_Sub_avg
Wave Glyoxal_Dihydrate_I_n_BG_Sub_avg
Wave Glyoxal_Trihydrate_I_n_BG_Sub_avg
Wave Methylglyoxal_Monohydrate_I_n_BG_Sub_avg
Wave Methylglyoxal_Dihydrate_I_n_BG_Sub_avg
Wave Methylglyoxal_Trihydrate_I_n_BG_Sub_avg
Wave Diacetyl_Monohydrate_I_n_BG_Sub_avg
Wave Diacetyl_Dihydrate_I_n_BG_Sub_avg
Wave Diacetyl_Trihydrate_I_n_BG_Sub_avg

Wave H2OH2OI_n_BG_Sub_avg
Wave CH3CN2H2OI_n_BG_Sub_avg
Wave C2F5COOHH2OI_n_BG_Sub_avg
Wave CH3CNH2OI_n_BG_Sub_avg
Wave NO2H2OI_n_BG_Sub_avg
Wave Formic_Acid_H2OI_n_BG_Sub_avg
Wave Glyoxal_H2OI_n_BG_Sub_avg
Wave Acetic_Acid_H2OI_n_BG_Sub_avg
Wave Ethylene_Glycol_H2OI_n_BG_Sub_avg
Wave Acrylic_Acid_H2OI_n_BG_Sub_avg
Wave Glyoxylic_Acid_H2OI_n_BG_Sub_avg
Wave Diacetyl_H2OI_n_BG_Sub_avg
Wave Oxalic_Acid_H2OI_n_BG_Sub_avg
Wave Lactic_Acid_H2OI_n_BG_Sub_avg
Wave Pentanoic_Acid_H2OI_n_BG_Sub_avg
Wave Malonic_Acid_H2OI_n_BG_Sub_avg
Wave Hexanoic_Acid_H2OI_n_BG_Sub_avg
Wave Succinic_Acid_H2OI_n_BG_Sub_avg
Wave Heptanoic_Acid_H2OI_n_BG_Sub_avg
Wave Caprylic_Acid_H2OI_n_BG_Sub_avg
Wave H2OH2O2I_n_BG_Sub_avg
Wave H2O2I_n_BG_Sub_avg
Wave CH3CN2H2O2I_n_BG_Sub_avg
Wave C2F5COOHH2O2I_n_BG_Sub_avg
Wave CH3CNH2O2I_n_BG_Sub_avg
Wave NO2H2O2I_n_BG_Sub_avg
Wave Formic_Acid_H2O2I_n_BG_Sub_avg
Wave Glyoxal_H2O2I_n_BG_Sub_avg
Wave Acetic_Acid_H2O2I_n_BG_Sub_avg
Wave Ethylene_Glycol_H2O2I_n_BG_Sub_avg
Wave Acrylic_Acid_H2O2I_n_BG_Sub_avg
Wave Glyoxylic_Acid_H2O2I_n_BG_Sub_avg
Wave Diacetyl_H2O2I_n_BG_Sub_avg
Wave Oxalic_Acid_H2O2I_n_BG_Sub_avg
Wave Lactic_Acid_H2O2I_n_BG_Sub_avg
Wave Pentanoic_Acid_H2O2I_n_BG_Sub_avg
Wave Malonic_Acid_H2O2I_n_BG_Sub_avg
Wave Hexanoic_Acid_H2O2I_n_BG_Sub_avg
Wave Succinic_Acid_H2O2I_n_BG_Sub_avg
Wave Heptanoic_Acid_H2O2I_n_BG_Sub_avg
Wave Caprylic_Acid_H2O2I_n_BG_Sub_avg

//Background Subtracted Step Average Waves (raw wave)
Wave H2OI__BG_Sub_avg
Wave I__BG_Sub_avg
Wave CH3CN2I__BG_Sub_avg
Wave C2F5COOHI__BG_Sub_avg
Wave CH3CNI__BG_Sub_avg
Wave NO2I__BG_Sub_avg
Wave Formic_Acid_I_BG_Sub_avg
Wave Glyoxal_I_BG_Sub_avg
Wave Acetic_Acid_I_BG_Sub_avg
Wave Ethylene_Glycol_I_BG_Sub_avg
Wave Acrylic_Acid_I_BG_Sub_avg
Wave Glyoxylic_Acid_I_BG_Sub_avg
Wave Diacetyl_I_BG_Sub_avg
Wave Oxalic_Acid_I_BG_Sub_avg
Wave Lactic_Acid_I_BG_Sub_avg
Wave Pentanoic_Acid_I_BG_Sub_avg
Wave Malonic_Acid_I_BG_Sub_avg
Wave Hexanoic_Acid_I_BG_Sub_avg
Wave Succinic_Acid_I_BG_Sub_avg
Wave Heptanoic_Acid_I_BG_Sub_avg
Wave Caprylic_Acid_I_BG_Sub_avg
Wave Methylsuccinic_Acid_I_BG_Sub_avg
Wave Methylacrylic_Acid_I_BG_Sub_avg
Wave Methylglyoxal_I_BG_Sub_avg
Wave Glyoxal_Monohydrate_I_BG_Sub_avg
Wave Glyoxal_Dihydrate_I_BG_Sub_avg
Wave Glyoxal_Trihydrate_I_BG_Sub_avg
Wave Methylglyoxal_Monohydrate_I_BG_Sub_avg
Wave Methylglyoxal_Dihydrate_I_BG_Sub_avg
Wave Methylglyoxal_Trihydrate_I_BG_Sub_avg
Wave Diacetyl_Monohydrate_I_BG_Sub_avg
Wave Diacetyl_Dihydrate_I_BG_Sub_avg
Wave Diacetyl_Trihydrate_I_BG_Sub_avg

Wave H2OH2OI__BG_Sub_avg
Wave CH3CN2H2OI__BG_Sub_avg
Wave C2F5COOHH2OI__BG_Sub_avg
Wave CH3CNH2OI__BG_Sub_avg
Wave NO2H2OI__BG_Sub_avg
Wave Formic_Acid_H2OI_BG_Sub_avg
Wave Glyoxal_H2OI_BG_Sub_avg
Wave Acetic_Acid_H2OI_BG_Sub_avg
Wave Ethylene_Glycol_H2OI_BG_Sub_avg
Wave Acrylic_Acid_H2OI_BG_Sub_avg
Wave Glyoxylic_Acid_H2OI_BG_Sub_avg
Wave Diacetyl_H2OI_BG_Sub_avg
Wave Oxalic_Acid_H2OI_BG_Sub_avg
Wave Lactic_Acid_H2OI_BG_Sub_avg
Wave Pentanoic_Acid_H2OI_BG_Sub_avg
Wave Malonic_Acid_H2OI_BG_Sub_avg
Wave Hexanoic_Acid_H2OI_BG_Sub_avg
Wave Succinic_Acid_H2OI_BG_Sub_avg
Wave Heptanoic_Acid_H2OI_BG_Sub_avg
Wave Caprylic_Acid_H2OI_BG_Sub_avg
Wave H2OH2O2I__BG_Sub_avg
Wave H2O2I__BG_Sub_avg
Wave CH3CN2H2O2I__BG_Sub_avg
Wave C2F5COOHH2O2I__BG_Sub_avg
Wave CH3CNH2O2I__BG_Sub_avg
Wave NO2H2O2I__BG_Sub_avg
Wave Formic_Acid_H2O2I_BG_Sub_avg
Wave Glyoxal_H2O2I_BG_Sub_avg
Wave Acetic_Acid_H2O2I_BG_Sub_avg
Wave Ethylene_Glycol_H2O2I_BG_Sub_avg
Wave Acrylic_Acid_H2O2I_BG_Sub_avg
Wave Glyoxylic_Acid_H2O2I_BG_Sub_avg
Wave Diacetyl_H2O2I_BG_Sub_avg
Wave Oxalic_Acid_H2O2I_BG_Sub_avg
Wave Lactic_Acid_H2O2I_BG_Sub_avg
Wave Pentanoic_Acid_H2O2I_BG_Sub_avg
Wave Malonic_Acid_H2O2I_BG_Sub_avg
Wave Hexanoic_Acid_H2O2I_BG_Sub_avg
Wave Succinic_Acid_H2O2I_BG_Sub_avg
Wave Heptanoic_Acid_H2O2I_BG_Sub_avg
Wave Caprylic_Acid_H2O2I_BG_Sub_avg

//Area Integration Waves
Wave Area_nc_H2OI__n_BG_Sub
Wave Area_nc_I__n_BG_Sub
Wave Area_nc_CH3CN2I__n_BG_Sub
Wave Area_nc_C2F5COOHI__n_BG_Sub
Wave Area_nc_CH3CNI__n_BG_Sub
Wave Area_nc_NO2I__n_BG_Sub
Wave Area_nc_Formic_Acid_I_n_BG_Sub
Wave Area_nc_Glyoxal_I_n_BG_Sub
Wave Area_nc_Acetic_Acid_I_n_BG_Sub
Wave Area_nc_Ethylene_Glycol_I_n_BG_Sub
Wave Area_nc_Acrylic_Acid_I_n_BG_Sub
Wave Area_nc_Glyoxylic_Acid_I_n_BG_Sub
Wave Area_nc_Diacetyl_I_n_BG_Sub
Wave Area_nc_Oxalic_Acid_I_n_BG_Sub
Wave Area_nc_Lactic_Acid_I_n_BG_Sub
Wave Area_nc_Pentanoic_Acid_I_n_BG_Sub
Wave Area_nc_Malonic_Acid_I_n_BG_Sub
Wave Area_nc_Hexanoic_Acid_I_n_BG_Sub
Wave Area_nc_Succinic_Acid_I_n_BG_Sub
Wave Area_nc_Heptanoic_Acid_I_n_BG_Sub
Wave Area_nc_Caprylic_Acid_I_n_BG_Sub
Wave Area_nc_Methylsuccinic_Acid_I_n_BG_Sub
Wave Area_nc_Methylacrylic_Acid_I_n_BG_Sub
Wave Area_nc_Methylglyoxal_I_n_BG_Sub
Wave Area_nc_Glyoxal_Monohydrate_I_n_BG_Sub
Wave Area_nc_Glyoxal_Dihydrate_I_n_BG_Sub
Wave Area_nc_Glyoxal_Trihydrate_I_n_BG_Sub
Wave Area_nc_Methylglyoxal_Monohydrate_I_n_BG_Sub
Wave Area_nc_Methylglyoxal_Dihydrate_I_n_BG_Sub
Wave Area_nc_Methylglyoxal_Trihydrate_I_n_BG_Sub
Wave Area_nc_Diacetyl_Monohydrate_I_n_BG_Sub
Wave Area_nc_Diacetyl_Dihydrate_I_n_BG_Sub
Wave Area_nc_Diacetyl_Trihydrate_I_n_BG_Sub
Wave Area_nc_ISOPOOH_n

//Additional Waves
Wave samp_vol, samp_conc, FlowRate_uL_min, GasSignal_ncps

//ISOPOOH Starter Pack
rename 'H2OI-', H2OI_
rename 'I-', I_
rename 'CH3CNI-', CH3CNI_
rename 'C5H10O3I_', ISOPOOH
rename 't_start_Buf', time_step

normalize(CH3CNI_,I_,H2OI_,CH3CNI_)
normalize(H2OI_,I_,H2OI_,CH3CNI_)
normalize(I_,I_,H2OI_,CH3CNI_)
normalize(ISOPOOH,I_,H2OI_,CH3CNI_)

CalInt(ISOPOOH_n,time_step)

CalCon1(Area_nc_ISOPOOH_n,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)

//Rename traces from Tofwerk

rename 'H2OI-', H2OI_
rename 'I-', I_
rename '(CH3CN)2I-', CH3CN2I_
rename 'C2F5COOHI-', C2F5COOHI_
rename 'CH3CNI-', CH3CNI_
rename 'NO2I-', NO2I_
rename 'CH2O2I-', Formic_Acid_I
rename 'C2H2O2I-', Glyoxal_I
rename 'C2H4O3I-', Glyoxal_Monohydrate_I
rename 'C2H2O2(H2O)2I-', Glyoxal_Dihydrate_I
rename 'C2H2O2(H2O)3I-', Glyoxal_Trihydrate_I
rename 'CH3COOHI-', Acetic_Acid_I
rename 'C2H6O2I-', Ethylene_Glycol_I
rename 'C3H4O2I-', Acrylic_Acid_I
rename 'C2H2O3I-', Glyoxylic_Acid_I
rename 'C4H6O2I-', Diacetyl_I
rename 'C4H6O2(H2O)I-', Diacetyl_Monohydrate_I
rename 'C4H6O2(H2O)2I-', Diacetyl_Dihydrate_I
rename 'C4H6O2(H2O)3I-', Diacetyl_Trihydrate_I
rename 'C2H2O4I-', Oxalic_Acid_I
rename 'C3H6O3I-', Lactic_Acid_I
rename 'C5H10O2I-', Pentanoic_Acid_I
rename 'C3H4O4I-', Malonic_Acid_I
rename 'C6H12O2I-', Hexanoic_Acid_I
rename 'C4H6O4I-', Succinic_Acid_I
rename 'C7H14O2I-', Heptanoic_Acid_I
rename 'C8H16O2I-', Caprylic_Acid_I
rename 'HO2CCHCH2CO2HI-', Methylsuccinic_Acid_I
rename 'C4H6O2I-', Methylacrylic_Acid_I
rename 'C3H4O2I-', Methylglyoxal_I
rename 'C3H6O3I-', Methylglyoxal_Monohydrate_I
rename 'C3H4O2(H2O)2I-', Methylglyoxal_Dihydrate_I
rename 'C3H4O2(H2O)3I-', Methylglyoxal_Trihydrate_I
rename 't_start_Buf', time_step

//Monohydrates

rename 'CH2O2H2OI-', Formic_Acid_H2OI
rename 'CH3COOHH2OI-', Acetic_Acid_H2OI
rename 'C2H6O2H2OI-', Ethylene_Glycol_H2OI
rename 'C3H4O2H2OI-', Acrylic_Acid_H2OI
rename 'C2H2O3H2OI-', Glyoxylic_Acid_H2OI
rename 'C2H2O4H2OI-', Oxalic_Acid_H2OI
rename 'C3H6O3H2OI-', Lactic_Acid_H2OI
rename 'C5H10O2H2OI-', Pentanoic_Acid_H2OI
rename 'C3H4O4H2OI-', Malonic_Acid_H2OI
rename 'C6H12O2H2OI-', Hexanoic_Acid_H2OI
rename 'C4H6O4H2OI-', Succinic_Acid_H2OI
rename 'C7H14O2H2OI-', Heptanoic_Acid_H2OI
rename 'C8H16O2H2OI-', Caprylic_Acid_H2OI

//Dihydrates

rename 'CH2O2(H2O)2I-', Formic_Acid_H2O2I
rename 'CH3COOH(H2O)2I-', Acetic_Acid_H2O2I
rename 'C2H6O2(H2O)2I-', Ethylene_Glycol_H2O2I
rename 'C3H4O2(H2O)2I-', Acrylic_Acid_H2O2I
rename 'C2H2O3(H2O)2I-', Glyoxylic_Acid_H2O2I
rename 'C2H2O4(H2O)2I-', Oxalic_Acid_H2O2I
rename 'C3H6O3(H2O)2I-', Lactic_Acid_H2O2I
rename 'C5H10O2(H2O)2I-', Pentanoic_Acid_H2O2I
rename 'C3H4O4(H2O)2I-', Malonic_Acid_H2O2I
rename 'C6H12O2(H2O)2I-', Hexanoic_Acid_H2O2I
rename 'C4H6O4(H2O)2I-', Succinic_Acid_H2O2I
rename 'C7H14O2(H2O)2I-', Heptanoic_Acid_H2O2I
rename 'C8H16O2(H2O)2I-', Caprylic_Acid_H2O2I

//Normalize Calibration Substances to I-, H2OI-, and Acetonitrile
normalize(CH3CN2I_,I_,H2OI_,CH3CNI_)
normalize(C2F5COOHI_,I_,H2OI_,CH3CNI_)
normalize(CH3CNI_,I_,H2OI_,CH3CNI_)
normalize(H2OI_,I_,H2OI_,CH3CNI_)
normalize(I_,I_,H2OI_,CH3CNI_)
normalize(NO2I_,I_,H2OI_,CH3CNI_)
normalize(Formic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Glyoxal_I,I_,H2OI_,CH3CNI_)
normalize(Glyoxal_Monohydrate_I,I_,H2OI_,CH3CNI_)
normalize(Glyoxal_Dihydrate_I,I_,H2OI_,CH3CNI_)
normalize(Glyoxal_Trihydrate_I,I_,H2OI_,CH3CNI_)
normalize(Acetic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Ethylene_Glycol_I,I_,H2OI_,CH3CNI_)
normalize(Acrylic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Glyoxylic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Diacetyl_I,I_,H2OI_,CH3CNI_)
normalize(Diacetyl_Monohydrate_I,I_,H2OI_,CH3CNI_)
normalize(Diacetyl_Dihydrate_I,I_,H2OI_,CH3CNI_)
normalize(Diacetyl_Trihydrate_I,I_,H2OI_,CH3CNI_)
normalize(Oxalic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Lactic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Pentanoic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Malonic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Hexanoic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Succinic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Heptanoic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Caprylic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Methylsuccinic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Methylacrylic_Acid_I,I_,H2OI_,CH3CNI_)
normalize(Methylglyoxal_I,I_,H2OI_,CH3CNI_)
normalize(Methylglyoxal_Monohydrate_I,I_,H2OI_,CH3CNI_)
normalize(Methylglyoxal_Dihydrate_I,I_,H2OI_,CH3CNI_)
normalize(Methylglyoxal_Trihydrate_I,I_,H2OI_,CH3CNI_)

normalize(H2OH2OI_,I_,H2OI_,CH3CNI_)
normalize(CH3CN2H2OI_,I_,H2OI_,CH3CNI_)
normalize(C2F5COOHH2OI_,I_,H2OI_,CH3CNI_)
normalize(CH3CNH2OI_,I_,H2OI_,CH3CNI_)
normalize(NO2H2OI_,I_,H2OI_,CH3CNI_)
normalize(Formic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Glyoxal_H2OI,I_,H2OI_,CH3CNI_)
normalize(Acetic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Ethylene_Glycol_H2OI,I_,H2OI_,CH3CNI_)
normalize(Acrylic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Glyoxylic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Diacetyl_H2OI,I_,H2OI_,CH3CNI_)
normalize(Oxalic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Lactic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Pentanoic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Malonic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Hexanoic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Succinic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Heptanoic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(Caprylic_Acid_H2OI,I_,H2OI_,CH3CNI_)
normalize(H2OH2O2I_,I_,H2OI_,CH3CNI_)
normalize(H2O2I_,I_,H2OI_,CH3CNI_)
normalize(CH3CN2H2O2I_,I_,H2OI_,CH3CNI_)
normalize(C2F5COOHH2O2I_,I_,H2OI_,CH3CNI_)
normalize(CH3CNH2O2I_,I_,H2OI_,CH3CNI_)
normalize(NO2H2O2I_,I_,H2OI_,CH3CNI_)
normalize(Formic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Glyoxal_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Acetic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Ethylene_Glycol_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Acrylic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Glyoxylic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Diacetyl_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Oxalic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Lactic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Pentanoic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Malonic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Hexanoic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Succinic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Heptanoic_Acid_H2O2I,I_,H2OI_,CH3CNI_)
normalize(Caprylic_Acid_H2O2I,I_,H2OI_,CH3CNI_)

//The Stage Average Function can be used to average signals from a start time to an end time (normalized wave)
stage_average(CH3CN2I__n,time_step)
stage_average(C2F5COOHI__n,time_step)
stage_average(CH3CNI__n,time_step)
stage_average(H2OI__n,time_step)
stage_average(I__n,time_step)
stage_average(Formic_Acid_I_n,time_step)
stage_average(Glyoxal_I_n,time_step)
stage_average(Acetic_Acid_I_n,time_step)
stage_average(Ethylene_Glycol_I_n,time_step)
stage_average(Acrylic_Acid_I_n,time_step)
stage_average(Glyoxylic_Acid_I_n,time_step)
stage_average(Diacetyl_I_n,time_step)
stage_average(Oxalic_Acid_I_n,time_step)
stage_average(Lactic_Acid_I_n,time_step)
stage_average(Pentanoic_Acid_I_n,time_step)
stage_average(Malonic_Acid_I_n,time_step)
stage_average(Hexanoic_Acid_I_n,time_step)
stage_average(Succinic_Acid_I_n,time_step)
stage_average(Heptanoic_Acid_I_n,time_step)
stage_average(Caprylic_Acid_I_n,time_step)
stage_average(NO2I__n,time_step)

stage_average(Methylsuccinic_Acid_I_n,time_step)
stage_average(Methylacrylic_Acid_I_n,time_step)
stage_average(Methylglyoxal_I_n,time_step)
stage_average(Glyoxal_Monohydrate_I_n, time_step)
stage_average(Glyoxal_Dihydrate_I_n, time_step)
stage_average(Glyoxal_Trihydrate_I_n, time_step)
stage_average(Methylglyoxal_Monohydrate_I_n, time_step)
stage_average(Methylglyoxal_Dihydrate_I_n, time_step)
stage_average(Methylglyoxal_Trihydrate_I_n, time_step)
stage_average(Diacetyl_Monohydrate_I_n, time_step)
stage_average(Diacetyl_Dihydrate_I_n, time_step)
stage_average(Diacetyl_Trihydrate_I_n, time_step)

stage_average(H2OH2OI_n,time_step)
stage_average(CH3CN2H2OI_n,time_step)
stage_average(C2F5COOHH2OI_n,time_step)
stage_average(CH3CNH2OI_n,time_step)
stage_average(NO2H2OI_n,time_step)
stage_average(Formic_Acid_H2OI_n,time_step)
stage_average(Glyoxal_H2OI_n,time_step)
stage_average(Acetic_Acid_H2OI_n,time_step)
stage_average(Ethylene_Glycol_H2OI_n,time_step)
stage_average(Acrylic_Acid_H2OI_n,time_step)
stage_average(Glyoxylic_Acid_H2OI_n,time_step)
stage_average(Diacetyl_H2OI_n,time_step)
stage_average(Oxalic_Acid_H2OI_n,time_step)
stage_average(Lactic_Acid_H2OI_n,time_step)
stage_average(Pentanoic_Acid_H2OI_n,time_step)
stage_average(Malonic_Acid_H2OI_n,time_step)
stage_average(Hexanoic_Acid_H2OI_n,time_step)
stage_average(Succinic_Acid_H2OI_n,time_step)
stage_average(Heptanoic_Acid_H2OI_n,time_step)
stage_average(Caprylic_Acid_H2OI_n,time_step)
stage_average(H2OH2O2I_n,time_step)
stage_average(H2O2I_n,time_step)
stage_average(CH3CN2H2O2I_n,time_step)
stage_average(C2F5COOHH2O2I_n,time_step)
stage_average(CH3CNH2O2I_n,time_step)
stage_average(NO2H2O2I_n,time_step)
stage_average(Formic_Acid_H2O2I_n,time_step)
stage_average(Glyoxal_H2O2I_n,time_step)
stage_average(Acetic_Acid_H2O2I_n,time_step)
stage_average(Ethylene_Glycol_H2O2I_n,time_step)
stage_average(Acrylic_Acid_H2O2I_n,time_step)
stage_average(Glyoxylic_Acid_H2O2I_n,time_step)
stage_average(Diacetyl_H2O2I_n,time_step)
stage_average(Oxalic_Acid_H2O2I_n,time_step)
stage_average(Lactic_Acid_H2O2I_n,time_step)
stage_average(Pentanoic_Acid_H2O2I_n,time_step)
stage_average(Malonic_Acid_H2O2I_n,time_step)
stage_average(Hexanoic_Acid_H2O2I_n,time_step)
stage_average(Succinic_Acid_H2O2I_n,time_step)
stage_average(Heptanoic_Acid_H2O2I_n,time_step)
stage_average(Caprylic_Acid_H2O2I_n,time_step)

//The Stage Average Function can be used to average signals from a start time to an end time (raw wave)

stage_average(CH3CN2I_,time_step)
stage_average(C2F5COOHI_,time_step)
stage_average(CH3CNI_,time_step)
stage_average(H2OI_,time_step)
stage_average(I_,time_step)
stage_average(Formic_Acid_I,time_step)
stage_average(Glyoxal_I,time_step)
stage_average(Acetic_Acid_I,time_step)
stage_average(Ethylene_Glycol_I,time_step)
stage_average(Acrylic_Acid_I,time_step)
stage_average(Glyoxylic_Acid_I,time_step)
stage_average(Diacetyl_I,time_step)
stage_average(Oxalic_Acid_I,time_step)
stage_average(Lactic_Acid_I,time_step)
stage_average(Pentanoic_Acid_I,time_step)
stage_average(Malonic_Acid_I,time_step)
stage_average(Hexanoic_Acid_I,time_step)
stage_average(Succinic_Acid_I,time_step)
stage_average(Heptanoic_Acid_I,time_step)
stage_average(Caprylic_Acid_I,time_step)
stage_average(NO2I_,time_step)

stage_average(Methylsuccinic_Acid_I,time_step)
stage_average(Methylacrylic_Acid_I,time_step)
stage_average(Methylglyoxal_I,time_step)
stage_average(Glyoxal_Monohydrate_I, time_step)
stage_average(Glyoxal_Dihydrate_I, time_step)
stage_average(Glyoxal_Trihydrate_I, time_step)
stage_average(Methylglyoxal_Monohydrate_I, time_step)
stage_average(Methylglyoxal_Dihydrate_I, time_step)
stage_average(Methylglyoxal_Trihydrate_I, time_step)
stage_average(Diacetyl_Monohydrate_I, time_step)
stage_average(Diacetyl_Dihydrate_I, time_step)
stage_average(Diacetyl_Trihydrate_I, time_step)

stage_average(H2OH2OI_,time_step)
stage_average(CH3CN2H2OI_,time_step)
stage_average(C2F5COOHH2OI_,time_step)
stage_average(CH3CNH2OI_,time_step)
stage_average(NO2H2OI_,time_step)
stage_average(Formic_Acid_H2OI,time_step)
stage_average(Glyoxal_H2OI,time_step)
stage_average(Acetic_Acid_H2OI,time_step)
stage_average(Ethylene_Glycol_H2OI,time_step)
stage_average(Acrylic_Acid_H2OI,time_step)
stage_average(Glyoxylic_Acid_H2OI,time_step)
stage_average(Diacetyl_H2OI,time_step)
stage_average(Oxalic_Acid_H2OI,time_step)
stage_average(Lactic_Acid_H2OI,time_step)
stage_average(Pentanoic_Acid_H2OI,time_step)
stage_average(Malonic_Acid_H2OI,time_step)
stage_average(Hexanoic_Acid_H2OI,time_step)
stage_average(Succinic_Acid_H2OI,time_step)
stage_average(Heptanoic_Acid_H2OI,time_step)
stage_average(Caprylic_Acid_H2OI,time_step)
stage_average(H2OH2O2I_,time_step)
stage_average(H2O2I_,time_step)
stage_average(CH3CN2H2O2I_,time_step)
stage_average(C2F5COOHH2O2I_,time_step)
stage_average(CH3CNH2O2I_,time_step)
stage_average(NO2H2O2I_,time_step)
stage_average(Formic_Acid_H2O2I,time_step)
stage_average(Glyoxal_H2O2I,time_step)
stage_average(Acetic_Acid_H2O2I,time_step)
stage_average(Ethylene_Glycol_H2O2I,time_step)
stage_average(Acrylic_Acid_H2O2I,time_step)
stage_average(Glyoxylic_Acid_H2O2I,time_step)
stage_average(Diacetyl_H2O2I,time_step)
stage_average(Oxalic_Acid_H2O2I,time_step)
stage_average(Lactic_Acid_H2O2I,time_step)
stage_average(Pentanoic_Acid_H2O2I,time_step)
stage_average(Malonic_Acid_H2O2I,time_step)
stage_average(Hexanoic_Acid_H2O2I,time_step)
stage_average(Succinic_Acid_H2O2I,time_step)
stage_average(Heptanoic_Acid_H2O2I,time_step)
stage_average(Caprylic_Acid_H2O2I,time_step)

//Background Subtract (normalized wave)
make/O/N=(dimsize(I_,0)) H2OI__n_BG_Sub = H2OI__n - H2OI__n_avg[0] 
make/O/N=(dimsize(I_,0)) I__n_BG_Sub = I__n - I__n_avg[0]
make/O/N=(dimsize(I_,0)) CH3CN2I__n_BG_Sub = CH3CN2I__n - CH3CN2I__n_avg[0]
make/O/N=(dimsize(I_,0)) C2F5COOHI__n_BG_Sub = C2F5COOHI__n - C2F5COOHI__n_avg[0]
make/O/N=(dimsize(I_,0)) CH3CNI__n_BG_Sub = CH3CNI__n - CH3CNI__n_avg[0]
make/O/N=(dimsize(I_,0)) NO2I__n_BG_Sub = NO2I__n - NO2I__n_avg[0]
make/O/N=(dimsize(I_,0)) Formic_Acid_I_n_BG_Sub = Formic_Acid_I_n - Formic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_I_n_BG_Sub = Glyoxal_I_n - Glyoxal_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Acetic_Acid_I_n_BG_Sub = Acetic_Acid_I_n - Acetic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Ethylene_Glycol_I_n_BG_Sub = Ethylene_Glycol_I_n - Ethylene_Glycol_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Acrylic_Acid_I_n_BG_Sub = Acrylic_Acid_I_n - Acrylic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxylic_Acid_I_n_BG_Sub = Glyoxylic_Acid_I_n - Glyoxylic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_I_n_BG_Sub = Diacetyl_I_n - Diacetyl_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Oxalic_Acid_I_n_BG_Sub = Oxalic_Acid_I_n - Oxalic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Lactic_Acid_I_n_BG_Sub = Lactic_Acid_I_n - Lactic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Pentanoic_Acid_I_n_BG_Sub = Pentanoic_Acid_I_n - Pentanoic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Malonic_Acid_I_n_BG_Sub = Malonic_Acid_I_n - Malonic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Hexanoic_Acid_I_n_BG_Sub = Hexanoic_Acid_I_n - Hexanoic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Succinic_Acid_I_n_BG_Sub = Succinic_Acid_I_n - Succinic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Heptanoic_Acid_I_n_BG_Sub = Heptanoic_Acid_I_n - Heptanoic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Caprylic_Acid_I_n_BG_Sub = Caprylic_Acid_I_n - Caprylic_Acid_I_n_avg[0]

make/O/N=(dimsize(I_,0)) Methylsuccinic_Acid_I_n_BG_Sub = Methylsuccinic_Acid_I_n - Methylsuccinic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Methylacrylic_Acid_I_n_BG_Sub = Methylacrylic_Acid_I_n - Methylacrylic_Acid_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Methylglyoxal_I_n_BG_Sub = Methylglyoxal_I_n - Methylglyoxal_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_Monohydrate_I_n_BG_Sub = Glyoxal_Monohydrate_I_n - Glyoxal_Monohydrate_I_n_avg[0] 
make/O/N=(dimsize(I_,0)) Glyoxal_Dihydrate_I_n_BG_Sub = Glyoxal_Dihydrate_I_n - Glyoxal_Dihydrate_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_Trihydrate_I_n_BG_Sub = Glyoxal_Trihydrate_I_n - Glyoxal_Trihydrate_I_n_avg[0]  
make/O/N=(dimsize(I_,0)) Methylglyoxal_Monohydrate_I_n_BG_Sub = Methylglyoxal_Monohydrate_I_n - Methylglyoxal_Monohydrate_I_n_avg[0] 
make/O/N=(dimsize(I_,0)) Methylglyoxal_Dihydrate_I_n_BG_Sub = Methylglyoxal_Dihydrate_I_n - Methylglyoxal_Dihydrate_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Methylglyoxal_Trihydrate_I_n_BG_Sub = Methylglyoxal_Trihydrate_I_n - Methylglyoxal_Trihydrate_I_n_avg[0] 
make/O/N=(dimsize(I_,0)) Diacetyl_Monohydrate_I_n_BG_Sub = Diacetyl_Monohydrate_I_n - Diacetyl_Monohydrate_I_n_avg[0] 
make/O/N=(dimsize(I_,0)) Diacetyl_Dihydrate_I_n_BG_Sub = Diacetyl_Dihydrate_I_n - Diacetyl_Dihydrate_I_n_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_Trihydrate_I_n_BG_Sub = Diacetyl_Trihydrate_I_n - Diacetyl_Trihydrate_I_n_avg[0] 

make/O/N=(dimsize(I_,0)) H2OH2OI__n_BG_Sub = H2OH2OI_n - H2OH2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) CH3CN2H2OI__n_BG_Sub = CH3CN2H2OI_n - CH3CN2H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) C2F5COOHH2OI__n_BG_Sub = C2F5COOHH2OI_n - C2F5COOHH2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) CH3CNH2OI__n_BG_Sub = CH3CNH2OI_n - CH3CNH2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) NO2H2OI__n_BG_Sub = NO2H2OI_n - NO2H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Formic_Acid_H2OI_n_BG_Sub = Formic_Acid_H2OI_n - Formic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_H2OI_n_BG_Sub = Glyoxal_H2OI_n - Glyoxal_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Acetic_Acid_H2OI_n_BG_Sub = Acetic_Acid_H2OI_n - Acetic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Ethylene_Glycol_H2OI_n_BG_Sub = Ethylene_Glycol_H2OI_n - Ethylene_Glycol_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Acrylic_Acid_H2OI_n_BG_Sub = Acrylic_Acid_H2OI_n - Acrylic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxylic_Acid_H2OI_n_BG_Sub = Glyoxylic_Acid_H2OI_n - Glyoxylic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_H2OI_n_BG_Sub = Diacetyl_H2OI_n - Diacetyl_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Oxalic_Acid_H2OI_n_BG_Sub = Oxalic_Acid_H2OI_n - Oxalic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Lactic_Acid_H2OI_n_BG_Sub = Lactic_Acid_H2OI_n - Lactic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Pentanoic_Acid_H2OI_n_BG_Sub = Pentanoic_Acid_H2OI_n - Pentanoic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Malonic_Acid_H2OI_n_BG_Sub = Malonic_Acid_H2OI_n - Malonic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Hexanoic_Acid_H2OI_n_BG_Sub = Hexanoic_Acid_H2OI_n - Hexanoic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Succinic_Acid_H2OI_n_BG_Sub = Succinic_Acid_H2OI_n - Succinic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Heptanoic_Acid_H2OI_n_BG_Sub = Heptanoic_Acid_H2OI_n - Heptanoic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) Caprylic_Acid_H2OI_n_BG_Sub = Caprylic_Acid_H2OI_n - Caprylic_Acid_H2OI_n_avg[0]
make/O/N=(dimsize(I_,0)) H2OH2O2I__n_BG_Sub = H2OH2O2I_n - H2OH2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) H2O2I__n_BG_Sub = H2O2I_n - H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) CH3CN2H2O2I__n_BG_Sub = CH3CN2H2O2I_n - CH3CN2H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) C2F5COOHH2O2I__n_BG_Sub = C2F5COOHH2O2I_n - C2F5COOHH2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) CH3CNH2O2I__n_BG_Sub = CH3CNH2O2I_n - CH3CNH2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) NO2H2O2I__n_BG_Sub = NO2H2O2I_n - NO2H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Formic_Acid_H2O2I_n_BG_Sub = Formic_Acid_H2O2I_n - Formic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_H2O2I_n_BG_Sub = Glyoxal_H2O2I_n - Glyoxal_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Acetic_Acid_H2O2I_n_BG_Sub = Acetic_Acid_H2O2I_n - Acetic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Ethylene_Glycol_H2O2I_n_BG_Sub = Ethylene_Glycol_H2O2I_n - Ethylene_Glycol_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Acrylic_Acid_H2O2I_n_BG_Sub = Acrylic_Acid_H2O2I_n - Acrylic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxylic_Acid_H2O2I_n_BG_Sub = Glyoxylic_Acid_H2O2I_n - Glyoxylic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_H2O2I_n_BG_Sub = Diacetyl_H2O2I_n - Diacetyl_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Oxalic_Acid_H2O2I_n_BG_Sub = Oxalic_Acid_H2O2I_n - Oxalic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Lactic_Acid_H2O2I_n_BG_Sub = Lactic_Acid_H2O2I_n - Lactic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Pentanoic_Acid_H2O2I_n_BG_Sub = Pentanoic_Acid_H2O2I_n - Pentanoic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Malonic_Acid_H2O2I_n_BG_Sub = Malonic_Acid_H2O2I_n - Malonic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Hexanoic_Acid_H2O2I_n_BG_Sub = Hexanoic_Acid_H2O2I_n - Hexanoic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Succinic_Acid_H2O2I_n_BG_Sub = Succinic_Acid_H2O2I_n - Succinic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Heptanoic_Acid_H2O2I_n_BG_Sub = Heptanoic_Acid_H2O2I_n - Heptanoic_Acid_H2O2I_n_avg[0]
make/O/N=(dimsize(I_,0)) Caprylic_Acid_H2O2I_n_BG_Sub = Caprylic_Acid_H2O2I_n - Caprylic_Acid_H2O2I_n_avg[0]

//Background Subtract (raw wave)

make/O/N=(dimsize(I_,0)) H2OI__BG_Sub = H2OI_ - H2OI__avg[0] 
make/O/N=(dimsize(I_,0)) I__BG_Sub = I_ - I__avg[0]
make/O/N=(dimsize(I_,0)) CH3CN2I__BG_Sub = CH3CN2I_ - CH3CN2I__avg[0]
make/O/N=(dimsize(I_,0)) C2F5COOHI__BG_Sub = C2F5COOHI_ - C2F5COOHI__avg[0]
make/O/N=(dimsize(I_,0)) CH3CNI__BG_Sub = CH3CNI_ - CH3CNI__avg[0]
make/O/N=(dimsize(I_,0)) NO2I__BG_Sub = NO2I_ - NO2I__avg[0]
make/O/N=(dimsize(I_,0)) Formic_Acid_I_BG_Sub = Formic_Acid_I - Formic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_I_BG_Sub = Glyoxal_I - Glyoxal_I_avg[0]
make/O/N=(dimsize(I_,0)) Acetic_Acid_I_BG_Sub = Acetic_Acid_I - Acetic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Ethylene_Glycol_I_BG_Sub = Ethylene_Glycol_I - Ethylene_Glycol_I_avg[0]
make/O/N=(dimsize(I_,0)) Acrylic_Acid_I_BG_Sub = Acrylic_Acid_I - Acrylic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxylic_Acid_I_BG_Sub = Glyoxylic_Acid_I - Glyoxylic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_I_BG_Sub = Diacetyl_I - Diacetyl_I_avg[0]
make/O/N=(dimsize(I_,0)) Oxalic_Acid_I_BG_Sub = Oxalic_Acid_I - Oxalic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Lactic_Acid_I_BG_Sub = Lactic_Acid_I - Lactic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Pentanoic_Acid_I_BG_Sub = Pentanoic_Acid_I - Pentanoic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Malonic_Acid_I_BG_Sub = Malonic_Acid_I - Malonic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Hexanoic_Acid_I_BG_Sub = Hexanoic_Acid_I - Hexanoic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Succinic_Acid_I_BG_Sub = Succinic_Acid_I - Succinic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Heptanoic_Acid_I_BG_Sub = Heptanoic_Acid_I - Heptanoic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Caprylic_Acid_I_BG_Sub = Caprylic_Acid_I - Caprylic_Acid_I_avg[0]

make/O/N=(dimsize(I_,0)) Methylsuccinic_Acid_I_BG_Sub = Methylsuccinic_Acid_I - Methylsuccinic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Methylacrylic_Acid_I_BG_Sub = Methylacrylic_Acid_I - Methylacrylic_Acid_I_avg[0]
make/O/N=(dimsize(I_,0)) Methylglyoxal_I_BG_Sub = Methylglyoxal_I - Methylglyoxal_I_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_Monohydrate_I_BG_Sub = Glyoxal_Monohydrate_I - Glyoxal_Monohydrate_I_avg[0] 
make/O/N=(dimsize(I_,0)) Glyoxal_Dihydrate_I_BG_Sub = Glyoxal_Dihydrate_I - Glyoxal_Dihydrate_I_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_Trihydrate_I_BG_Sub = Glyoxal_Trihydrate_I - Glyoxal_Trihydrate_I_avg[0]  
make/O/N=(dimsize(I_,0)) Methylglyoxal_Monohydrate_I_BG_Sub = Methylglyoxal_Monohydrate_I - Methylglyoxal_Monohydrate_I_avg[0] 
make/O/N=(dimsize(I_,0)) Methylglyoxal_Dihydrate_I_BG_Sub = Methylglyoxal_Dihydrate_I - Methylglyoxal_Dihydrate_I_avg[0]
make/O/N=(dimsize(I_,0)) Methylglyoxal_Trihydrate_I_BG_Sub = Methylglyoxal_Trihydrate_I - Methylglyoxal_Trihydrate_I_avg[0] 
make/O/N=(dimsize(I_,0)) Diacetyl_Monohydrate_I_BG_Sub = Diacetyl_Monohydrate_I - Diacetyl_Monohydrate_I_avg[0] 
make/O/N=(dimsize(I_,0)) Diacetyl_Dihydrate_I_BG_Sub = Diacetyl_Dihydrate_I - Diacetyl_Dihydrate_I_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_Trihydrate_I_BG_Sub = Diacetyl_Trihydrate_I - Diacetyl_Trihydrate_I_avg[0] 

make/O/N=(dimsize(I_,0)) H2OH2OI__BG_Sub = H2OH2OI_ - H2OH2OI__avg[0]
make/O/N=(dimsize(I_,0)) CH3CN2H2OI__BG_Sub = CH3CN2H2OI_ - CH3CN2H2OI__avg[0]
make/O/N=(dimsize(I_,0)) C2F5COOHH2OI__BG_Sub = C2F5COOHH2OI_ - C2F5COOHH2OI__avg[0]
make/O/N=(dimsize(I_,0)) CH3CNH2OI__BG_Sub = CH3CNH2OI_ - CH3CNH2OI__avg[0]
make/O/N=(dimsize(I_,0)) NO2H2OI__BG_Sub = NO2H2OI_ - NO2H2OI__avg[0]
make/O/N=(dimsize(I_,0)) Formic_Acid_H2OI_BG_Sub = Formic_Acid_H2OI - Formic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_H2OI_BG_Sub = Glyoxal_H2OI - Glyoxal_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Acetic_Acid_H2OI_BG_Sub = Acetic_Acid_H2OI - Acetic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Ethylene_Glycol_H2OI_BG_Sub = Ethylene_Glycol_H2OI - Ethylene_Glycol_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Acrylic_Acid_H2OI_BG_Sub = Acrylic_Acid_H2OI - Acrylic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxylic_Acid_H2OI_BG_Sub = Glyoxylic_Acid_H2OI - Glyoxylic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_H2OI_BG_Sub = Diacetyl_H2OI - Diacetyl_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Oxalic_Acid_H2OI_BG_Sub = Oxalic_Acid_H2OI - Oxalic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Lactic_Acid_H2OI_BG_Sub = Lactic_Acid_H2OI - Lactic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Pentanoic_Acid_H2OI_BG_Sub = Pentanoic_Acid_H2OI - Pentanoic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Malonic_Acid_H2OI_BG_Sub = Malonic_Acid_H2OI - Malonic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Hexanoic_Acid_H2OI_BG_Sub = Hexanoic_Acid_H2OI - Hexanoic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Succinic_Acid_H2OI_BG_Sub = Succinic_Acid_H2OI - Succinic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Heptanoic_Acid_H2OI_BG_Sub = Heptanoic_Acid_H2OI - Heptanoic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) Caprylic_Acid_H2OI_BG_Sub = Caprylic_Acid_H2OI - Caprylic_Acid_H2OI_avg[0]
make/O/N=(dimsize(I_,0)) H2OH2O2I__BG_Sub = H2OH2O2I_ - H2OH2O2I__avg[0]
make/O/N=(dimsize(I_,0)) H2O2I__BG_Sub = H2O2I_ - H2O2I__avg[0]
make/O/N=(dimsize(I_,0)) CH3CN2H2O2I__BG_Sub = CH3CN2H2O2I_ - CH3CN2H2O2I__avg[0]
make/O/N=(dimsize(I_,0)) C2F5COOHH2O2I__BG_Sub = C2F5COOHH2O2I_ - C2F5COOHH2O2I__avg[0]
make/O/N=(dimsize(I_,0)) CH3CNH2O2I__BG_Sub = CH3CNH2O2I_ - CH3CNH2O2I__avg[0]
make/O/N=(dimsize(I_,0)) NO2H2O2I__BG_Sub = NO2H2O2I_ - NO2H2O2I__avg[0]
make/O/N=(dimsize(I_,0)) Formic_Acid_H2O2I_BG_Sub = Formic_Acid_H2O2I - Formic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxal_H2O2I_BG_Sub = Glyoxal_H2O2I - Glyoxal_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Acetic_Acid_H2O2I_BG_Sub = Acetic_Acid_H2O2I - Acetic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Ethylene_Glycol_H2O2I_BG_Sub = Ethylene_Glycol_H2O2I - Ethylene_Glycol_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Acrylic_Acid_H2O2I_BG_Sub = Acrylic_Acid_H2O2I - Acrylic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Glyoxylic_Acid_H2O2I_BG_Sub = Glyoxylic_Acid_H2O2I - Glyoxylic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Diacetyl_H2O2I_BG_Sub = Diacetyl_H2O2I - Diacetyl_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Oxalic_Acid_H2O2I_BG_Sub = Oxalic_Acid_H2O2I - Oxalic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Lactic_Acid_H2O2I_BG_Sub = Lactic_Acid_H2O2I - Lactic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Pentanoic_Acid_H2O2I_BG_Sub = Pentanoic_Acid_H2O2I - Pentanoic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Malonic_Acid_H2O2I_BG_Sub = Malonic_Acid_H2O2I - Malonic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Hexanoic_Acid_H2O2I_BG_Sub = Hexanoic_Acid_H2O2I - Hexanoic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Succinic_Acid_H2O2I_BG_Sub = Succinic_Acid_H2O2I - Succinic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Heptanoic_Acid_H2O2I_BG_Sub = Heptanoic_Acid_H2O2I - Heptanoic_Acid_H2O2I_avg[0]
make/O/N=(dimsize(I_,0)) Caprylic_Acid_H2O2I_BG_Sub = Caprylic_Acid_H2O2I - Caprylic_Acid_H2O2I_avg[0]

//Background Subtracted Stage Average (normalized wave)
stage_average(CH3CN2I__n_BG_Sub,time_step)
stage_average(C2F5COOHI__n_BG_Sub,time_step)
stage_average(CH3CNI__n_BG_Sub,time_step)
stage_average(H2OI__n_BG_Sub,time_step)
stage_average(I__n_BG_Sub,time_step)
stage_average(Formic_Acid_I_n_BG_Sub,time_step)
stage_average(Glyoxal_I_n_BG_Sub,time_step)
stage_average(Acetic_Acid_I_n_BG_Sub,time_step)
stage_average(Ethylene_Glycol_I_n_BG_Sub,time_step)
stage_average(Acrylic_Acid_I_n_BG_Sub,time_step)
stage_average(Glyoxylic_Acid_I_n_BG_Sub,time_step)
stage_average(Diacetyl_I_n_BG_Sub,time_step)
stage_average(Oxalic_Acid_I_n_BG_Sub,time_step)
stage_average(Lactic_Acid_I_n_BG_Sub,time_step)
stage_average(Pentanoic_Acid_I_n_BG_Sub,time_step)
stage_average(Malonic_Acid_I_n_BG_Sub,time_step)
stage_average(Hexanoic_Acid_I_n_BG_Sub,time_step)
stage_average(Succinic_Acid_I_n_BG_Sub,time_step)
stage_average(Heptanoic_Acid_I_n_BG_Sub,time_step)
stage_average(Caprylic_Acid_I_n_BG_Sub,time_step)
stage_average(NO2I__n_BG_Sub,time_step)

stage_average(Methylsuccinic_Acid_I_n_BG_Sub,time_step)
stage_average(Methylacrylic_Acid_I_n_BG_Sub,time_step)
stage_average(Methylglyoxal_I_n_BG_Sub,time_step)
stage_average(Glyoxal_Monohydrate_I_n_BG_Sub, time_step)
stage_average(Glyoxal_Dihydrate_I_n_BG_Sub, time_step)
stage_average(Glyoxal_Trihydrate_I_n_BG_Sub, time_step)
stage_average(Methylglyoxal_Monohydrate_I_n_BG_Sub, time_step)
stage_average(Methylglyoxal_Dihydrate_I_n_BG_Sub, time_step)
stage_average(Methylglyoxal_Trihydrate_I_n_BG_Sub, time_step)
stage_average(Diacetyl_Monohydrate_I_n_BG_Sub, time_step)
stage_average(Diacetyl_Dihydrate_I_n_BG_Sub, time_step)
stage_average(Diacetyl_Trihydrate_I_n_BG_Sub, time_step)

stage_average(H2OH2OI_n_BG_Sub,time_step)
stage_average(CH3CN2H2OI_n_BG_Sub,time_step)
stage_average(C2F5COOHH2OI_n_BG_Sub,time_step)
stage_average(CH3CNH2OI_n_BG_Sub,time_step)
stage_average(NO2H2OI_n_BG_Sub,time_step)
stage_average(Formic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Glyoxal_H2OI_n_BG_Sub,time_step)
stage_average(Acetic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Ethylene_Glycol_H2OI_n_BG_Sub,time_step)
stage_average(Acrylic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Glyoxylic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Diacetyl_H2OI_n_BG_Sub,time_step)
stage_average(Oxalic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Lactic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Pentanoic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Malonic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Hexanoic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Succinic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Heptanoic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(Caprylic_Acid_H2OI_n_BG_Sub,time_step)
stage_average(H2OH2O2I_n_BG_Sub,time_step)
stage_average(H2O2I_n_BG_Sub,time_step)
stage_average(CH3CN2H2O2I_n_BG_Sub,time_step)
stage_average(C2F5COOHH2O2I_n_BG_Sub,time_step)
stage_average(CH3CNH2O2I_n_BG_Sub,time_step)
stage_average(NO2H2O2I_n_BG_Sub,time_step)
stage_average(Formic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Glyoxal_H2O2I_n_BG_Sub,time_step)
stage_average(Acetic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Ethylene_Glycol_H2O2I_n_BG_Sub,time_step)
stage_average(Acrylic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Glyoxylic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Diacetyl_H2O2I_n_BG_Sub,time_step)
stage_average(Oxalic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Lactic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Pentanoic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Malonic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Hexanoic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Succinic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Heptanoic_Acid_H2O2I_n_BG_Sub,time_step)
stage_average(Caprylic_Acid_H2O2I_n_BG_Sub,time_step)

//Background Subtracted Stage Average (raw wave)

stage_average(CH3CN2I__BG_Sub,time_step)
stage_average(C2F5COOHI__BG_Sub,time_step)
stage_average(CH3CNI__BG_Sub,time_step)
stage_average(H2OI__BG_Sub,time_step)
stage_average(I__BG_Sub,time_step)
stage_average(Formic_Acid_I_BG_Sub,time_step)
stage_average(Glyoxal_I_BG_Sub,time_step)
stage_average(Acetic_Acid_I_BG_Sub,time_step)
stage_average(Ethylene_Glycol_I_BG_Sub,time_step)
stage_average(Acrylic_Acid_I_BG_Sub,time_step)
stage_average(Glyoxylic_Acid_I_BG_Sub,time_step)
stage_average(Diacetyl_I_BG_Sub,time_step)
stage_average(Oxalic_Acid_I_BG_Sub,time_step)
stage_average(Lactic_Acid_I_BG_Sub,time_step)
stage_average(Pentanoic_Acid_I_BG_Sub,time_step)
stage_average(Malonic_Acid_I_BG_Sub,time_step)
stage_average(Hexanoic_Acid_I_BG_Sub,time_step)
stage_average(Succinic_Acid_I_BG_Sub,time_step)
stage_average(Heptanoic_Acid_I_BG_Sub,time_step)
stage_average(Caprylic_Acid_I_BG_Sub,time_step)
stage_average(NO2I__BG_Sub,time_step)

stage_average(Methylsuccinic_Acid_I_BG_Sub,time_step)
stage_average(Methylacrylic_Acid_I_BG_Sub,time_step)
stage_average(Methylglyoxal_I_BG_Sub,time_step)
stage_average(Glyoxal_Monohydrate_I_BG_Sub, time_step)
stage_average(Glyoxal_Dihydrate_I_BG_Sub, time_step)
stage_average(Glyoxal_Trihydrate_I_BG_Sub, time_step)
stage_average(Methylglyoxal_Monohydrate_I_BG_Sub, time_step)
stage_average(Methylglyoxal_Dihydrate_I_BG_Sub, time_step)
stage_average(Methylglyoxal_Trihydrate_I_BG_Sub, time_step)
stage_average(Diacetyl_Monohydrate_I_BG_Sub, time_step)
stage_average(Diacetyl_Dihydrate_I_BG_Sub, time_step)
stage_average(Diacetyl_Trihydrate_I_BG_Sub, time_step)

stage_average(H2OH2OI__BG_Sub,time_step)
stage_average(CH3CN2H2OI__BG_Sub,time_step)
stage_average(C2F5COOHH2OI__BG_Sub,time_step)
stage_average(CH3CNH2OI__BG_Sub,time_step)
stage_average(NO2H2OI__BG_Sub,time_step)
stage_average(Formic_Acid_H2OI_BG_Sub,time_step)
stage_average(Glyoxal_H2OI_BG_Sub,time_step)
stage_average(Acetic_Acid_H2OI_BG_Sub,time_step)
stage_average(Ethylene_Glycol_H2OI_BG_Sub,time_step)
stage_average(Acrylic_Acid_H2OI_BG_Sub,time_step)
stage_average(Glyoxylic_Acid_H2OI_BG_Sub,time_step)
stage_average(Diacetyl_H2OI_BG_Sub,time_step)
stage_average(Oxalic_Acid_H2OI_BG_Sub,time_step)
stage_average(Lactic_Acid_H2OI_BG_Sub,time_step)
stage_average(Pentanoic_Acid_H2OI_BG_Sub,time_step)
stage_average(Malonic_Acid_H2OI_BG_Sub,time_step)
stage_average(Hexanoic_Acid_H2OI_BG_Sub,time_step)
stage_average(Succinic_Acid_H2OI_BG_Sub,time_step)
stage_average(Heptanoic_Acid_H2OI_BG_Sub,time_step)
stage_average(Caprylic_Acid_H2OI_BG_Sub,time_step)
stage_average(H2OH2O2I__BG_Sub,time_step)
stage_average(H2O2I__BG_Sub,time_step)
stage_average(CH3CN2H2O2I__BG_Sub,time_step)
stage_average(C2F5COOHH2O2I__BG_Sub,time_step)
stage_average(CH3CNH2O2I__BG_Sub,time_step)
stage_average(NO2H2O2I__BG_Sub,time_step)
stage_average(Formic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Glyoxal_H2O2I_BG_Sub,time_step)
stage_average(Acetic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Ethylene_Glycol_H2O2I_BG_Sub,time_step)
stage_average(Acrylic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Glyoxylic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Diacetyl_H2O2I_BG_Sub,time_step)
stage_average(Oxalic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Lactic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Pentanoic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Malonic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Hexanoic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Succinic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Heptanoic_Acid_H2O2I_BG_Sub,time_step)
stage_average(Caprylic_Acid_H2O2I_BG_Sub,time_step)

//Plot Parameters 

//Raw
Display/L=cps Succinic_Acid_I,Pentanoic_Acid_I,Oxalic_Acid_I,NO2I_,Malonic_Acid_I,Lactic_Acid_I,I_,H2OI_,Hexanoic_Acid_I,Heptanoic_Acid_I,Glyoxylic_Acid_I,Glyoxal_I,Formic_Acid_I,Ethylene_Glycol_I,Diacetyl_I,C2F5COOHI_,CH3CN2I_,CH3CNI_,Caprylic_Acid_I,Acrylic_Acid_I,Acetic_Acid_I vs time_step as "Raw Timeseries"
Label cps "Signal (cps)";DelayUpdate
Label bottom " ";DelayUpdate
ModifyGraph mirror=1,axThick=1.5,axisOnTop=1,lblPos(cps)=45,standoff=0,freePos(cps)={0,kwFraction};DelayUpdate
Legend/C/N=text0/A=MC
•ColorTracesdBZ21()

//Normalize
Display/L=cps Succinic_Acid_I_n,Pentanoic_Acid_I_n,Oxalic_Acid_I_n,NO2I__n,Malonic_Acid_I_n,Lactic_Acid_I_n,I__n,H2OI__n,Hexanoic_Acid_I_n,Heptanoic_Acid_I_n,Glyoxylic_Acid_I_n,Glyoxal_I_n,Formic_Acid_I_n,Ethylene_Glycol_I_n,Diacetyl_I_n,C2F5COOHI__n,CH3CN2I__n,CH3CNI__n,Caprylic_Acid_I_n,Acrylic_Acid_I_n,Acetic_Acid_I_n vs time_step
ColorTracesdBZ21()
ModifyGraph log(cps)=1,mirror=1,axThick=1.5,axisOnTop=1,lblPos(cps)=45,standoff=0,freePos(cps)={0,kwFraction};DelayUpdate
Label cps "Signal (ncps)";DelayUpdate
Label bottom " "
Legend/C/N=text0/A=MC
ModifyGraph hideTrace(NO2I__n)=1,hideTrace(Lactic_Acid_I_n)=1,hideTrace(Glyoxal_I_n)=1,hideTrace(Diacetyl_I_n)=1,hideTrace(C2F5COOHI__n)=1,hideTrace(CH3CN2I__n)=1,hideTrace(Acrylic_Acid_I_n)=1


//Formatting to append text to the right axis 
SetAxis newaxis1 *,100000;DelayUpdate
ModifyGraph mirror=1,nticks(newaxis1)=0,standoff=0,freePos(newaxis1)={0,kwFraction};DelayUpdate
Label newaxis1 " "

//Integrate Calibration Curves

CalInt(H2OI__n_BG_Sub,time_step)
CalInt(I__n_BG_Sub,time_step)
CalInt(CH3CN2I__n_BG_Sub,time_step)
CalInt(C2F5COOHI__n_BG_Sub,time_step)
CalInt(CH3CNI__n_BG_Sub,time_step)
CalInt(NO2I__n_BG_Sub,time_step)
CalInt(Formic_Acid_I_n_BG_Sub,time_step)
CalInt(Glyoxal_I_n_BG_Sub,time_step)
CalInt(Acetic_Acid_I_n_BG_Sub,time_step)
CalInt(Ethylene_Glycol_I_n_BG_Sub,time_step)
CalInt(Acrylic_Acid_I_n_BG_Sub,time_step)
CalInt(Glyoxylic_Acid_I_n_BG_Sub,time_step)
CalInt(Diacetyl_I_n_BG_Sub,time_step)
CalInt(Oxalic_Acid_I_n_BG_Sub,time_step)
CalInt(Lactic_Acid_I_n_BG_Sub,time_step)
CalInt(Pentanoic_Acid_I_n_BG_Sub,time_step)
CalInt(Malonic_Acid_I_n_BG_Sub,time_step)
CalInt(Hexanoic_Acid_I_n_BG_Sub,time_step)
CalInt(Succinic_Acid_I_n_BG_Sub,time_step)
CalInt(Heptanoic_Acid_I_n_BG_Sub,time_step)
CalInt(Caprylic_Acid_I_n_BG_Sub,time_step)
CalInt(Methylsuccinic_Acid_I_n_BG_Sub,time_step)
CalInt(Methylacrylic_Acid_I_n_BG_Sub,time_step)
CalInt(Methylglyoxal_I_n_BG_Sub,time_step)
CalInt(Glyoxal_Monohydrate_I_n_BG_Sub, time_step)
CalInt(Glyoxal_Dihydrate_I_n_BG_Sub, time_step)
CalInt(Glyoxal_Trihydrate_I_n_BG_Sub, time_step)
CalInt(Methylglyoxal_Monohydrate_I_n_BG_Sub, time_step)
CalInt(Methylglyoxal_Dihydrate_I_n_BG_Sub, time_step)
CalInt(Methylglyoxal_Trihydrate_I_n_BG_Sub, time_step)
CalInt(Diacetyl_Monohydrate_I_n_BG_Sub, time_step)
CalInt(Diacetyl_Dihydrate_I_n_BG_Sub, time_step)
CalInt(Diacetyl_Trihydrate_I_n_BG_Sub, time_step)

//Use CalCon1 if you used Syringe Pump method #1 with ISOPOOH

CalCon1(Area_nc_H2OI__n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_I__n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_CH3CN2I__n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_C2F5COOHI__n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_CH3CNI__n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_NO2I__n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Formic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Glyoxal_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Acetic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Ethylene_Glycol_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Acrylic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Glyoxylic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Diacetyl_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Oxalic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Lactic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Pentanoic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Malonic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Hexanoic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Succinic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Heptanoic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Caprylic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Methylsuccinic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Methylacrylic_Acid_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Methylglyoxal_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Glyoxal_Monohydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Glyoxal_Dihydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Glyoxal_Trihydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Methylglyoxal_Monohydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Methylglyoxal_Dihydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Methylglyoxal_Trihydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Diacetyl_Monohydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Diacetyl_Dihydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)
CalCon1(Area_nc_Diacetyl_Trihydrate_I_n_BG_Sub,samp_vol,samp_conc_p, samp_conc,GasSignal_ncps)


//Use CalCon2 if you used Syringe Pump method #1 with calibration substances

CalCon2(Area_nc_H2OI__n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_I__n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_CH3CN2I__n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_C2F5COOHI__n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_CH3CNI__n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_NO2I__n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Formic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Glyoxal_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Acetic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Ethylene_Glycol_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Acrylic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Glyoxylic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Diacetyl_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Oxalic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Lactic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Pentanoic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Malonic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Hexanoic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Succinic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Heptanoic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Caprylic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Methylsuccinic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Methylacrylic_Acid_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Methylglyoxal_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Glyoxal_Monohydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Glyoxal_Dihydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Glyoxal_Trihydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Methylglyoxal_Monohydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Methylglyoxal_Dihydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Methylglyoxal_Trihydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Diacetyl_Monohydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Diacetyl_Dihydrate_I_n_BG_Sub,samp_vol,samp_conc)
CalCon2(Area_nc_Diacetyl_Trihydrate_I_n_BG_Sub,samp_vol,samp_conc)

//Use CalCon3 if you used Syringe Pump Method #2 with calibration substances

CalCon3(FlowRate_uL_min,H2OI__n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,I__n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,CH3CN2I__n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,C2F5COOHI__n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,CH3CNI__n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,NO2I__n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Formic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Glyoxal_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Acetic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Ethylene_Glycol_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Acrylic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Glyoxylic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Diacetyl_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Oxalic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Lactic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Pentanoic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Malonic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Hexanoic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Succinic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Heptanoic_Acid_I_n_BG_Sub_avg,samp_conc)
CalCon3(FlowRate_uL_min,Caprylic_Acid_I_n_BG_Sub_avg,samp_conc)


//Detection Limits

DetectionLimitCalc(H2OI__n, time_step)
DetectionLimitCalc(I__n, time_step)
DetectionLimitCalc(CH3CN2I__n, time_step)
DetectionLimitCalc(C2F5COOHI__n, time_step)
DetectionLimitCalc(CH3CNI__n, time_step)
DetectionLimitCalc(NO2I__n, time_step)
DetectionLimitCalc(Formic_Acid_I_n, time_step)
DetectionLimitCalc(Glyoxal_I_n, time_step)
DetectionLimitCalc(Acetic_Acid_I_n, time_step)
DetectionLimitCalc(Ethylene_Glycol_I_n, time_step)
DetectionLimitCalc(Acrylic_Acid_I_n, time_step)
DetectionLimitCalc(Glyoxylic_Acid_I_n, time_step)
DetectionLimitCalc(Diacetyl_I_n, time_step)
DetectionLimitCalc(Oxalic_Acid_I_n, time_step)
DetectionLimitCalc(Lactic_Acid_I_n, time_step)
DetectionLimitCalc(Pentanoic_Acid_I_n, time_step)
DetectionLimitCalc(Malonic_Acid_I_n, time_step)
DetectionLimitCalc(Hexanoic_Acid_I_n, time_step)
DetectionLimitCalc(Succinic_Acid_I_n, time_step)
DetectionLimitCalc(Heptanoic_Acid_I_n, time_step)
DetectionLimitCalc(Caprylic_Acid_I_n, time_step)
DetectionLimitCalc(Methylsuccinic_Acid_I_n, time_step)
DetectionLimitCalc(Methylacrylic_Acid_I_n, time_step)
DetectionLimitCalc(Methylglyoxal_I_n, time_step)
DetectionLimitCalc(Glyoxal_Monohydrate_I_n, time_step)
DetectionLimitCalc(Glyoxal_Dihydrate_I_n, time_step)
DetectionLimitCalc(Glyoxal_Trihydrate_I_n, time_step)
DetectionLimitCalc(Methylglyoxal_Monohydrate_I_n, time_step)
DetectionLimitCalc(Methylglyoxal_Dihydrate_I_n, time_step)
DetectionLimitCalc(Methylglyoxal_Trihydrate_I_n, time_step)
DetectionLimitCalc(Diacetyl_Monohydrate_I_n, time_step)
DetectionLimitCalc(Diacetyl_Dihydrate_I_n, time_step)
DetectionLimitCalc(Diacetyl_Trihydrate_I_n, time_step)

DetectionLimitCalc(H2OH2OI_n, time_step)
DetectionLimitCalc(CH3CN2H2OI_n, time_step)
DetectionLimitCalc(C2F5COOHH2OI_n, time_step)
DetectionLimitCalc(CH3CNH2OI_n, time_step)
DetectionLimitCalc(NO2H2OI_n, time_step)
DetectionLimitCalc(Formic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Glyoxal_H2OI_n, time_step)
DetectionLimitCalc(Acetic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Ethylene_Glycol_H2OI_n, time_step)
DetectionLimitCalc(Acrylic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Glyoxylic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Diacetyl_H2OI_n, time_step)
DetectionLimitCalc(Oxalic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Lactic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Pentanoic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Malonic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Hexanoic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Succinic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Heptanoic_Acid_H2OI_n, time_step)
DetectionLimitCalc(Caprylic_Acid_H2OI_n, time_step)
DetectionLimitCalc(H2OH2O2I_n, time_step)
DetectionLimitCalc(H2O2I_n, time_step)
DetectionLimitCalc(CH3CN2H2O2I_n, time_step)
DetectionLimitCalc(C2F5COOHH2O2I_n, time_step)
DetectionLimitCalc(CH3CNH2O2I_n, time_step)
DetectionLimitCalc(NO2H2O2I_n, time_step)
DetectionLimitCalc(Formic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Glyoxal_H2O2I_n, time_step)
DetectionLimitCalc(Acetic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Ethylene_Glycol_H2O2I_n, time_step)
DetectionLimitCalc(Acrylic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Glyoxylic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Diacetyl_H2O2I_n, time_step)
DetectionLimitCalc(Oxalic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Lactic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Pentanoic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Malonic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Hexanoic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Succinic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Heptanoic_Acid_H2O2I_n, time_step)
DetectionLimitCalc(Caprylic_Acid_H2O2I_n, time_step)

End

// To integrate a calibration experiment, use the following command

Function CalInt(datatrace,timetrace)
wave datatrace, timetrace
wave time_start_avg, time_end_avg

variable i
for(i=0;i<dimsize(time_start_avg,0);i+=1) 

make/O/N=(dimsize(time_start_avg,0)) integrationwave, integrationtimewave
make/O/N=(dimsize(time_start_avg,0)) Area_nc

variable value1, value2, x1, x2

x1 = time_start_avg[i]
x2 = time_end_avg[i]

value1 = BinarySearch(timetrace,x1)
//print value1
value2 = BinarySearch(timetrace,x2)
//print value2

duplicate/O /R=[value1,value2] datatrace integrationwave
duplicate/O /R=[value1,value2] timetrace integrationtimewave
duplicate/O integrationwave, $("integrationwave_"+nameofwave(datatrace)+num2str(i))
duplicate/O integrationtimewave, $("integrationtimewave_"+nameofwave(datatrace)+num2str(i))

make/O/N=(dimsize(time_start_avg,0)) CurveTime_s
Area_nc[i] = AreaXY(integrationtimewave,integrationwave)
duplicate/O Area_nc, $("Area_nc_"+nameofwave(datatrace))
CurveTime_s[i] = integrationtimewave[numpnts(integrationtimewave) - 1] - integrationtimewave[0]
duplicate/O CurveTime_s, $("CurveTime_s_"+nameofwave(datatrace))

//Display Integration Plots

Display $("integrationwave"+num2str(i)) vs $("integrationtimewave"+num2str(i))
ModifyGraph mirror=1,axThick=1.5,lblMargin(left)=20,standoff=0;DelayUpdate
Label left "Signal (ncps)";DelayUpdate
Label bottom " "

endfor

End


//Use Function to find the Concentration, Calibration Constant, and Henry's Constant for ISOPOOH Data

Function CalCon1(Area_nc,AqSampVol_uL,AqSampConc_M_p,AqSampConc_M,GasSignal_ncps)
	Wave Area_nc,AqSampVol_uL,AqSampConc_M_p, AqSampConc_M,GasSignal_ncps
	
	make/O/N=(dimsize(Area_nc,0)) CalibrationConstant_ncps_conc, ConcentrationGas
	make/O/N=(dimsize(Area_nc,0)) HenrysConstant_M_atm, wMolecules_nc, wGasMolecules, wAqSampMolecules, wPartialPressure
	
	variable i
	for(i=0;i<dimsize(Area_nc,0);i+=1) 

		Variable AqSampMolecules = (AqSampConc_M_p[i] * (AqSampVol_uL[i]*1e-6)) * AvogadrosNumber_mol
		Variable DilutionFactor = (1.53/2.03) //Measured via gillibrator 
		Variable Molecules_nc = (AqSampMolecules/Area_nc[i])*DilutionFactor
		Variable GasSampMolecules = Molecules_nc * GasSignal_ncps[0]
		Variable ConcGas_Molec_cm3 = GasSampMolecules / ((.8/60)*1000) // .8 L/min * 1 min/60 s * 1000 cm^3/ 1 L
		Variable PartialPGas = ConcGas_Molec_cm3/ConcAir_molec_cm3 * 1 // 1 atm 

		//Aqueous Sample Molecules 
		wAqSampMolecules[i]  = AqSampMolecules
		
		//Gas Concentration Wave in unitless
		wGasMolecules[i]  = AqSampMolecules/DilutionFactor
		
		//Gas Molecules
		ConcentrationGas[i] = ConcGas_Molec_cm3/ConcAir_molec_cm3
	
		//Calibration Constant_ncps_conc
		CalibrationConstant_ncps_conc[i] = GasSignal_ncps[0]/ (ConcentrationGas[i] * 1e9) // Specify conc unit here
		duplicate/O CalibrationConstant_ncps_conc, $("CalibrationConstant_ncps_conc_"+nameofwave(Area_nc))
	
		//Molecules_nc
		wMolecules_nc[i] = Molecules_nc
		duplicate/O wMolecules_nc, $("wMolecules_nc_"+nameofwave(Area_nc))
		
		//Partial Pressure in atm 
		wPartialPressure[i]  = PartialPGas
	
		//Henry's Constant in M/atm
		HenrysConstant_M_atm[i] = AqSampConc_M[i]/PartialPGas
		duplicate/O HenrysConstant_M_atm, $("HenrysConstant_M_atm_"+nameofwave(Area_nc))
	
	Endfor
	
End 

//Use Function to find the Concentration and Calibration Constant for calibration substances

Function CalCon2(Area_nc,AqSampVol_uL,AqSampConc_M)
	Wave Area_nc,AqSampVol_uL,AqSampConc_M
	
	make/O/N=(dimsize(Area_nc,0)) CalibrationConstant_ncps_conc, ConcentrationGas
	make/O/N=(dimsize(Area_nc,0)) HenrysConstant_M_atm
	
	variable i
	for(i=0;i<dimsize(Area_nc,0);i+=1) 

		Variable AqSampMolecules = (AqSampConc_M[i] * (AqSampVol_uL[i]*1e-6)) * AvogadrosNumber_mol
		Variable DilutionFactor = (1.53/2.03) //THIS NEEDS TO BE MEASURED AND CHANGED
		Variable GasSampMolecules = AqSampMolecules*DilutionFactor
		Variable Molecules_nc = (GasSampMolecules/Area_nc[i])
		Variable Volume_cm3_s = ((2/60)*1000) // 2 L/min * 1 min/60 s * 1000 cm^3/ 1 L
		Variable ConcGas_Molec_cm3 = GasSampMolecules / Volume_cm3_s

		//Gas Concentration Wave in unitless
		ConcentrationGas[i] = ConcGas_Molec_cm3/ConcAir_molec_cm3
	
		//Calibration Constant_ncps_conc
		CalibrationConstant_ncps_conc[i] = ((Volume_cm3_s/ Molecules_nc) * ConcAir_molec_cm3) * 1e-12 // Specify conc unit here
		duplicate/O CalibrationConstant_ncps_conc, $("CalibrationConstant_ncps_conc_"+nameofwave(Area_nc))
	
	Endfor
	
End 

	//Use Function to find the Concentration and Calibration Constant for calibration substances

Function CalCon3(FlowRate_uL_min,GasSignal_ncps,AqSampConc_M)
	Wave FlowRate_uL_min,GasSignal_ncps,AqSampConc_M
	
	make/O/N=(dimsize(GasSignal_ncps,0)) CalibrationConstant_ncps_conc,CalibrationConstant_cps_ppt,ConcentrationGas, wGasMolecules, wMolec_cm3	
	make/O/N=(dimsize(GasSignal_ncps,0)) HenrysConstant_M_atm
	
	variable i
	for(i=0;i<dimsize(GasSignal_ncps,0);i+=1) 

		Variable AqSampMolecules_s = (AqSampConc_M[i] * (FlowRate_uL_min[i]*1e-6)/60) * AvogadrosNumber_mol
		Variable GasSampMolecules_s = AqSampMolecules_s //Volume lost in vent, concentration remains the same 
		Variable Molecules_nc = (GasSampMolecules_s/GasSignal_ncps[i])
	//	Variable Molecules_cps = (GasSampMolecules_s/GasSignal_cps[i])
		Variable Volume_cm3_s = ((2/60)*1000) // 2 L/min * 1 min/60 s * 1000 cm^3/ 1 L
		Variable ConcGas_Molec_cm3 = GasSampMolecules_s / Volume_cm3_s
		
		//Gas Concentration Wave in unitless
		wGasMolecules[i]  = AqSampMolecules_s
		
		//Molecules/cm^3
		wMolec_cm3[i]  = ConcGas_Molec_cm3

		//Gas Concentration Wave in unitless
		ConcentrationGas[i] = (ConcGas_Molec_cm3/ConcAir_molec_cm3)* 1e12
	
		//Calibration Constant_ncps_conc
		CalibrationConstant_ncps_conc[i] = ((Volume_cm3_s/ Molecules_nc) * ConcAir_molec_cm3) * 1e-12 // Specify conc unit here
		duplicate/O CalibrationConstant_ncps_conc, $("CalibrationConstant_ncps_conc_"+nameofwave(GasSignal_ncps))
		
		//Calibration Constant_cps_ppt
	//	CalibrationConstant_cps_ppt[i] = (((Volume_cm3_s/ Molecules_cps) * ConcAir_molec_cm3) * 1e-12) // Specify conc unit here
	//	duplicate/O CalibrationConstant_cps_ppt, $("CalibrationConstant_cps_ppt_"+nameofwave(GasSignal_cps))
	
	Endfor
	
End 

//Useful function to close graphs
Function KillGraphs(startnum, endnum)
    Variable startnum, endnum
    Variable i
    String WindowName
   
    for(i=startnum; i<=(endnum); i+=1)
        WindowName="Graph"+num2str(i)
        KillWindow $WindowName
    endfor
   
End


//Working Code for Calibration Curves Below

•Label left "\\f01Signal (ncps)";DelayUpdate
•Label bottom "\\f01Concentration (ppb)"
•ModifyGraph marker=0
•ModifyGraph mode=3
•ModifyGraph mirror=1,axThick=1.5
•ModifyGraph notation=1

•ModifyGraph nticks(bottom)=20,lblMargin(left)=15
•ModifyGraph mrkThick=2,rgb=(0,0,65535)



Display H2OI__n_BG_Sub_avg vs ConcentrationGas
Display I__n_BG_Sub_avg vs ConcentrationGas
Display CH3CN2I__n_BG_Sub_avg vs ConcentrationGas
Display C2F5COOHI__n_BG_Sub_avg vs ConcentrationGas
Display CH3CNI__n_BG_Sub_avg vs ConcentrationGas
Display NO2I__n_BG_Sub_avg vs ConcentrationGas
Display Formic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Glyoxal_I_n_BG_Sub_avg vs ConcentrationGas
Display Acetic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Ethylene_Glycol_I_n_BG_Sub_avg vs ConcentrationGas
Display Acrylic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Glyoxylic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Diacetyl_I_n_BG_Sub_avg vs ConcentrationGas
Display Oxalic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Lactic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Pentanoic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Malonic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Hexanoic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Succinic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Heptanoic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Caprylic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Methylsuccinic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Methylacrylic_Acid_I_n_BG_Sub_avg vs ConcentrationGas
Display Methylglyoxal_I_n_BG_Sub_avg vs ConcentrationGas
Display Glyoxal_Monohydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Glyoxal_Dihydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Glyoxal_Trihydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Methylglyoxal_Monohydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Methylglyoxal_Dihydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Methylglyoxal_Trihydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Diacetyl_Monohydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Diacetyl_Dihydrate_I_n_BG_Sub_avg vs ConcentrationGas
Display Diacetyl_Trihydrate_I_n_BG_Sub_avg vs ConcentrationGas

CurveFit/TBOX=768 line Heptanoic_Acid_I_n_BG_Sub_avg /X=ConcentrationGas /D 



ModifyGraph rgb(fit_H2OI__n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_I__n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_CH3CN2I__n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_C2F5COOHI__n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_CH3CNI__n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_NO2I__n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Formic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Glyoxal_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Acetic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Ethylene_Glycol_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Acrylic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Glyoxylic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Diacetyl_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Oxalic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Lactic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Pentanoic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Malonic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Hexanoic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Succinic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Heptanoic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Caprylic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Methylsuccinic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Methylacrylic_Acid_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Methylglyoxal_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Glyoxal_Monohydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Glyoxal_Dihydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Glyoxal_Trihydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Methylglyoxal_Monohydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Methylglyoxal_Dihydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Methylglyoxal_Trihydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Diacetyl_Monohydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Diacetyl_Dihydrate_I_n_BG_Sub_avg)=(0,0,0)
ModifyGraph rgb(fit_Diacetyl_Trihydrate_I_n_BG_Sub_avg)=(0,0,0)

//Working Code for detection limits 

//variance

Function DetectionLimitCalc(datatrace,timetrace)
wave datatrace, timetrace
wave time_start_avg, time_end_avg

make/O/N=1 dl_avg, dl_stdev, dl_3, dl_10, S_N

variable value1, value2, x1, x2

x1 = time_start_avg[0]
x2 = time_end_avg[0]

value1 = BinarySearch(timetrace,x1)
//print value1
value2 = BinarySearch(timetrace,x2)
//print value2

//Duplicate background waves for each calibration substance
duplicate/O /R=[value1,value2] datatrace detectionlimit
duplicate/O /R=[value1,value2] timetrace detectionlimit_time
duplicate/O detectionlimit, $("detectionlimit_"+nameofwave(datatrace))
duplicate/O detectionlimit_time, $("detectionlimit_time_"+nameofwave(datatrace))

//Background Mean
dl_avg = mean(detectionlimit)
duplicate/O dl_avg, $("dl_avg_"+nameofwave(datatrace))

//Background Standard Deviation
dl_stdev = sqrt(variance(detectionlimit))
duplicate/O dl_stdev, $("dl_stdev_"+nameofwave(datatrace))

//Limit of Detection
dl_3 = (dl_avg[0] + 3*dl_stdev[0]) //ppt
duplicate/O dl_3, $("dl_3_"+nameofwave(datatrace))

//Limit of Quantification
dl_10 = (dl_avg[0] + 10*dl_stdev[0]) //ppt
duplicate/O dl_10, $("dl_10_"+nameofwave(datatrace))

//Signal to Noise Ratio
S_N = dl_avg[0]/dl_stdev[0]
duplicate/O S_N, $("S_N_"+nameofwave(datatrace))

End

//Use Function to find the Concentration, Calibration Constant, and Henry's Constant for ISOPOOH Data

Function CalCon4(Molecules_nc,AqSampConc_M,GasSignal_ncps)
	Wave AqSampConc_M,GasSignal_ncps
	Variable Molecules_nc
	
	make/O/N=(dimsize(GasSignal_ncps,0)) HenrysConstant_M_atm5, GasMolecules, PartialPressure
	
	variable i
	for(i=0;i<dimsize(GasSignal_ncps,0);i+=1) 

		
		Variable GasSampMolecules = Molecules_nc * GasSignal_ncps[i]
		Variable ConcGas_Molec_cm3 = GasSampMolecules / ((.8/60)*1000*(1.44/2.30)) // .8 L/min * 1 min/60 s * 1000 cm^3/ 1 L
		Variable PartialPGas = ConcGas_Molec_cm3/ConcAir_molec_cm3 * 1 // 1 atm 

		//Gas Molecules
		GasMolecules[i] = GasSampMolecules
		
		
		//Partial Pressure
		
		PartialPressure[i] = PartialPGas
		
		//Henry's Constant in M/atm
		HenrysConstant_M_atm5[i] = AqSampConc_M[i]/PartialPGas
	
	Endfor
	End





//ERROR CALCULATIONS 


//Calculate the Integration Error

Function CalIntError(signal, signal_estimate, Area_nc)
wave signal, signal_estimate, Area_nc

make/O/N=(dimsize(Area_nc,0)) wsignal_error, warea_error

variable i
	For(i=0;i<dimsize(Area_nc,0);i+=1) 
	
	variable vsignal_error = signal_estimate[i]/signal[i]
	variable varea_error = sqrt((Area_nc[i])^2 * ((vsignal_error)^2))
	
	wsignal_error[i] = vsignal_error
	warea_error[i] = varea_error	
	
	Endfor
End


//Calculate the Aqueous Molecules Error

Function AqMolecError(conc, conc_estimate, vol, vol_estimate, aq_molec)
wave conc, conc_estimate, vol, vol_estimate, aq_molec

make/O/N=(dimsize(aq_molec,0)) wconc_error, wvol_error, waqmolec_error

variable i
	For(i=0;i<dimsize(aq_molec,0);i+=1) 
	
	variable vconc_error = conc_estimate[i]/conc[i]
	variable vvol_error = vol_estimate[i]/vol[i]
	variable vaqmolec_error = sqrt((aq_molec[i])^2 * ((vconc_error)^2 + (vvol_error)^2))
	
	wconc_error[i] = vconc_error
	wvol_error[i] = vvol_error
	waqmolec_error[i] = vaqmolec_error	
	
	Endfor
End

//Calculate the Dilution Factor Error 

Function DilutionFactorError(inletflow, inletflow_estimate, totalflow, totalflow_estimate, dilutionfactor)
wave inletflow, inletflow_estimate, totalflow, totalflow_estimate, dilutionfactor

make/O/N=(dimsize(dilutionfactor,0)) winletflow_error, wtotalflow_error, wdilutionfactor_error

variable i
	For(i=0;i<dimsize(dilutionfactor,0);i+=1) 
	
	variable vinletflow_error = inletflow_estimate[i]/inletflow[i]
	variable vtotalflow_error = totalflow_estimate[i]/totalflow[i]
	variable vdilutionfactor_error = sqrt((dilutionfactor[i])^2 * ((vinletflow_error)^2 + (vtotalflow_error)^2))
	
	winletflow_error[i] = vinletflow_error
	wtotalflow_error[i] = vtotalflow_error
	wdilutionfactor_error[i] = vdilutionfactor_error	
	
	Endfor
End

//Calculate the Molecules_nc Error

Function Molecules_ncError(aq_molec, aq_molecestimate, area_nc, area_estimate, dilutionfactor, dilutionfactor_estimate, molecules_nc)
wave aq_molec, aq_molecestimate, area_nc, area_estimate, dilutionfactor, dilutionfactor_estimate, molecules_nc

make/O/N=(dimsize(dilutionfactor,0)) waqmolec_error, warea_error, wdilutionfactor_error, wmolecules_nc_error

variable i
	For(i=0;i<dimsize(dilutionfactor,0);i+=1) 
	
	variable vaqmolec_error = aq_molecestimate[i]/aq_molec[i]
	variable varea_nc_error = area_estimate[i]/area_nc[i]
	variable vdilutionfactor_error = dilutionfactor_estimate[i]/dilutionfactor[i]
	variable vmolecules_nc_error = sqrt((molecules_nc[i])^2 * ((vaqmolec_error)^2 + (varea_nc_error)^2) + (vdilutionfactor_error)^2)
	
	waqmolec_error[i] = vaqmolec_error
	warea_error[i] = varea_nc_error
	wdilutionfactor_error[i] = vdilutionfactor_error
	wmolecules_nc_error[i] = vmolecules_nc_error	
	
	Endfor
End


//Calculate the Gas Sample Molecules Error 

Function GasMolecError(molecules_nc, molecules_nc_estimate, gassignal, gassignal_estimate, gasmolec)
wave molecules_nc, molecules_nc_estimate, gassignal, gassignal_estimate, gasmolec

make/O/N=(dimsize(gasmolec,0)) wmolecules_nc_error, wgassignal_error, wgasmolec_error
variable i
	For(i=0;i<dimsize(gasmolec,0);i+=1) 
	
	variable vmolecules_nc_error = molecules_nc_estimate[i]/molecules_nc[i]
	variable vgassignal_error = gassignal_estimate[i]/gassignal[i]
	variable vgasmolec_error = sqrt((gasmolec[i])^2 * ((vmolecules_nc_error)^2 + (vgassignal_error)^2))
	
	wmolecules_nc_error[i] = vmolecules_nc_error
	wgassignal_error[i] = vgassignal_error
	wgasmolec_error[i] = vgasmolec_error	
	
	Endfor
End


//Calculate the Gas Concentration Error 

Function GasConcError(gasmolec, gasmolec_estimate, vol, vol_estimate, gasconc)
wave gasmolec, gasmolec_estimate, vol, vol_estimate, gasconc

make/O/N=(dimsize(gasconc,0)) wgasmolec_error, wvol_error, wgasconc_error
variable i
	For(i=0;i<dimsize(gasconc,0);i+=1) 
	
	variable vgasmolec_error = gasmolec_estimate[i]/gasmolec[i]
	variable vvol_error = vol_estimate[i]/vol[i]
	variable vgasconc_error = sqrt((gasconc[i])^2 * ((vgasmolec_error)^2 + (vvol_error)^2))
	
	wgasmolec_error[i] = vgasmolec_error
	wvol_error[i] = vvol_error
	wgasconc_error[i] = vgasconc_error	
	
	Endfor
End


//Calculate the Partial Pressure Error 

Function PartialPressureError(gasconc, gasconc_estimate, partialpressure)
wave gasconc, gasconc_estimate, partialpressure

make/O/N=(dimsize(partialpressure,0)) wgasconc_error, wpartialpressure_error
variable i
	For(i=0;i<dimsize(partialpressure,0);i+=1) 
	
	variable vgasconc_error = gasconc_estimate[i]/gasconc[i]
	variable vpartialpressure_error = sqrt((partialpressure[i])^2 * ((vgasconc_error)^2))
	
	wgasconc_error[i] = vgasconc_error
	wpartialpressure_error[i] = vpartialpressure_error	
	
	Endfor
End

//Calculate the Henry's Law Constant Error 

Function HenrysError(aq_conc, aq_conc_estimate, partialpressure, partialpressure_estimate, henrys)
wave aq_conc, aq_conc_estimate, partialpressure, partialpressure_estimate, henrys

make/O/N=(dimsize(henrys,0)) waq_conc_error, wpartialpressure_error, whenrys_error
variable i
	For(i=0;i<dimsize(henrys,0);i+=1) 
	
	variable vaq_conc_error = aq_conc_estimate[i]/aq_conc[i]
	variable vpartialpressure_error = partialpressure_estimate[i]/partialpressure[i]
	variable vhenrys_error = sqrt((henrys[i])^2 * ((vaq_conc_error)^2 + (vpartialpressure_error)^2))
	
	waq_conc_error[i] = vaq_conc_error
	wpartialpressure_error[i] = vpartialpressure_error
	whenrys_error[i] = vhenrys_error	
	
	Endfor
End

// Calibration Constant Error 




Function AqMolecError2(conc, conc_estimate, flow, flow_estimate, aq_molec)
wave conc, conc_estimate, flow, flow_estimate, aq_molec

make/O/N=(dimsize(aq_molec,0)) wconc_error, wflow_error, waqmolec_error2

variable i
	For(i=0;i<dimsize(aq_molec,0);i+=1) 
	
	variable vconc_error = conc_estimate[i]/conc[i]
	variable vflow_error = flow_estimate[i]/flow[i]
	variable vaqmolec_error = sqrt((aq_molec[i])^2 * ((vconc_error)^2 + (vflow_error)^2))
	
	wconc_error[i] = vconc_error
	wflow_error[i] = vflow_error
	waqmolec_error2[i] = vaqmolec_error	
	
	Endfor
End


Function gas_molec_cm3_error(gasmolec, gasmolec_estimate, vol, vol_estimate, molec_cm3)
wave gasmolec, gasmolec_estimate, vol, vol_estimate, molec_cm3

make/O/N=(dimsize(gasmolec,0)) wgasmolec_error, wvol_error, wmolec_cm3_error

variable i
	For(i=0;i<dimsize(gasmolec,0);i+=1) 
	
	variable vgasmolec_error = gasmolec_estimate[i]/gasmolec[i]
	variable vvol_error = vol_estimate[i]/vol[i]
	variable vmolec_cm3_error = sqrt((molec_cm3[i])^2 * ((vgasmolec_error)^2 + (vvol_error)^2))
	
	wgasmolec_error[i] = vgasmolec_error
	wvol_error[i] = vvol_error
	wmolec_cm3_error[i] = vmolec_cm3_error	
	
	Endfor
End


Function gas_molec_cm3_nc_error(molec_cm3,molec_cm3_estimate, nc, nc_estimate, molec_cm3_nc)
wave molec_cm3,molec_cm3_estimate, nc, nc_estimate, molec_cm3_nc

make/O/N=(dimsize(molec_cm3,0)) wmolec_cm3_error2, wnc_error, wmolec_cm3_nc_error

variable i
	For(i=0;i<dimsize(molec_cm3,0);i+=1) 
	
	variable vmolec_cm3_error = molec_cm3_estimate[i]/molec_cm3[i]
	variable vnc_error = nc_estimate[i]/nc[i]
	variable vmolec_cm3_nc_error = sqrt((molec_cm3_nc[i])^2 * ((vmolec_cm3_error)^2 + (vnc_error)^2))
	
	wmolec_cm3_error2[i] = vmolec_cm3_error
	wnc_error[i] = vnc_error
	wmolec_cm3_nc_error[i] = vmolec_cm3_nc_error	
	
	Endfor
End


End