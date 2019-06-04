set lang "C++"
set moduleName "LF_valid_to_AXIS"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "data_in"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "1"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "[list ap_uint 8 ]"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "frame_valid"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "1"
set Pointer1 "1"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set DataType1 "bool"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "line_valid"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "1"
set Pointer2 "1"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "bool"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "outputStream"
set BitWidth3 "8"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "2"
set Reference3 "1"
set Dims3 [list 0]
set Interface3 [list AP_STREAM 0] 
set DataType3 "[list ap_uint 8 ]"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
