//Maya ASCII 2019 scene
//Name: Coin.ma
//Last modified: Fri, May 08, 2020 01:13:51 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18363)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "CE3FA951-41E4-8947-878F-8EB0289DBCE4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -20.956086801504259 1.2928304042089009 7.2157593522261863 ;
	setAttr ".r" -type "double3" -3.3383527377719382 288.99999999993156 -1.2211554777131527e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E6712D27-4BCD-AC16-6B87-08ACB9F902EA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.201264998091407;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0592E287-4E45-4C8F-1D2A-E59D9C2F6A6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2DAD5925-44E0-7C78-B434-7493D3217E84";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "292532C4-4FE8-D334-3A9F-F28E837F912D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5AA12E0A-4B2F-B96C-0C1A-E89234AB49F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "271C8B10-4C14-4DE7-501C-25BFEC8E2BF7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C2160DA0-48A5-2938-AB1D-49AC7E051364";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "2A12EBF5-49A2-3D51-3069-928BB137A173";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "38FC6E21-4C14-6C0F-D9B0-BF97D36D72B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49999996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 204 ".uvst[0].uvsp[0:203]" -type "float2" 0.57430136 0.13210803
		 0.56320453 0.11032924 0.54592073 0.093045503 0.52414197 0.081948668 0.5 0.07812497
		 0.47585803 0.081948668 0.45407927 0.093045533 0.43679553 0.11032927 0.4256987 0.13210803
		 0.421875 0.15625 0.4256987 0.18039197 0.43679553 0.20217073 0.45407927 0.21945447
		 0.47585803 0.2305513 0.5 0.234375 0.52414197 0.2305513 0.54592073 0.21945447 0.56320447
		 0.20217073 0.5743013 0.18039197 0.578125 0.15625 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661 0.34374997
		 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453
		 0.79782927 0.54592073 0.78054547 0.52414197 0.76944864 0.5 0.765625 0.47585803 0.76944864
		 0.45407927 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375
		 0.4256987 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513
		 0.5 0.921875 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013
		 0.86789197 0.578125 0.84375 0.5 0.15000001 0.5 0.83749998 0.57430136 0.13210803 0.56320453
		 0.11032924 0.62640899 0.064408496 0.64860266 0.10796607 0.54592073 0.093045503 0.59184152
		 0.029841021 0.52414197 0.081948668 0.54828393 0.0076473355 0.5 0.07812497 0.5 -7.4505806e-08
		 0.47585803 0.081948668 0.45171607 0.0076473504 0.45407927 0.093045533 0.40815851
		 0.029841051 0.43679553 0.11032927 0.37359107 0.064408526 0.4256987 0.13210803 0.3513974
		 0.1079661 0.421875 0.15625 0.34374997 0.15625 0.4256987 0.18039197 0.3513974 0.2045339
		 0.43679553 0.20217073 0.37359107 0.24809146 0.45407927 0.21945447 0.40815854 0.28265893
		 0.47585803 0.2305513 0.4517161 0.3048526 0.5 0.234375 0.5 0.3125 0.52414197 0.2305513
		 0.54828387 0.3048526 0.54592073 0.21945447 0.59184146 0.28265893 0.56320447 0.20217073
		 0.62640893 0.24809146 0.5743013 0.18039197 0.6486026 0.2045339 0.578125 0.15625 0.65625
		 0.15625 0.6486026 0.89203393 0.62640893 0.93559146 0.56320447 0.88967073 0.5743013
		 0.86789197 0.59184146 0.97015893 0.54592073 0.90695447 0.54828387 0.9923526 0.52414197
		 0.9180513 0.5 1 0.5 0.921875 0.4517161 0.9923526 0.47585803 0.9180513 0.40815854
		 0.97015893 0.45407927 0.90695447 0.37359107 0.93559146 0.43679553 0.88967073 0.3513974
		 0.89203393 0.4256987 0.86789197 0.34374997 0.84375 0.421875 0.84375 0.3513974 0.79546607
		 0.4256987 0.81960803 0.37359107 0.75190854 0.43679553 0.79782927 0.40815851 0.71734107
		 0.45407927 0.78054553 0.45171607 0.69514734 0.47585803 0.76944864 0.5 0.68749994
		 0.5 0.765625 0.54828393 0.69514734 0.52414197 0.76944864 0.59184152 0.71734101 0.54592073
		 0.78054547 0.62640899 0.75190848 0.56320453 0.79782927 0.64860266 0.79546607 0.57430136
		 0.81960803 0.65625 0.84375 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 162 ".vt[0:161]"  0.080311254 0.79940003 -0.25974068 0.080311254 0.68001008 -0.49405605
		 0.080311254 0.49405631 -0.68000996 0.080311254 0.2597408 -0.7993995 0.080311254 4.0595303e-08 -0.84053838
		 0.080311254 -0.25974068 -0.79939944 0.080311254 -0.49405599 -0.68000984 0.080311254 -0.68000984 -0.49405593
		 0.080311254 -0.79939932 -0.25974062 0.080311254 -0.8405382 6.0892951e-08 0.080311254 -0.79939932 0.25974074
		 0.080311254 -0.68000978 0.49405617 0.080311254 -0.4940559 0.68000984 0.080311254 -0.25974062 0.79939926
		 0.080311254 1.5545314e-08 0.84053814 0.080311254 0.25974059 0.79939926 0.080311254 0.49405587 0.68000978
		 0.080311254 0.68000972 0.4940559 0.080311254 0.7993992 0.25974071 0.080311254 0.84053808 6.0892951e-08
		 0.080311254 0.95105714 -0.30901718 0.080311254 0.80901754 -0.5877856 0.080311254 0.5877856 -0.80901748
		 0.080311254 0.30901715 -0.95105702 0.080311254 0 -1.000000476837 0.080311254 -0.30901715 -0.95105696
		 0.080311254 -0.58778548 -0.8090173 0.080311254 -0.80901724 -0.58778542 0.080311254 -0.95105678 -0.30901706
		 0.080311254 -1.000000238419 0 0.080311254 -0.95105678 0.30901706 0.080311254 -0.80901718 0.58778536
		 0.080311254 -0.58778536 0.80901712 0.080311254 -0.30901706 0.95105666 0.080311254 -2.9802322e-08 1.000000119209
		 0.080311254 0.30901697 0.9510566 0.080311254 0.58778524 0.80901706 0.080311254 0.809017 0.5877853
		 0.080311254 0.95105654 0.309017 0.080311254 1 0 -0.080311254 0.95105714 -0.30901718
		 -0.080311254 0.80901754 -0.5877856 -0.080311254 0.5877856 -0.80901748 -0.080311254 0.30901715 -0.95105702
		 -0.080311254 0 -1.000000476837 -0.080311254 -0.30901715 -0.95105696 -0.080311254 -0.58778548 -0.8090173
		 -0.080311254 -0.80901724 -0.58778542 -0.080311254 -0.95105678 -0.30901706 -0.080311254 -1.000000238419 0
		 -0.080311254 -0.95105678 0.30901706 -0.080311254 -0.80901718 0.58778536 -0.080311254 -0.58778536 0.80901712
		 -0.080311254 -0.30901706 0.95105666 -0.080311254 -2.9802322e-08 1.000000119209 -0.080311254 0.30901697 0.9510566
		 -0.080311254 0.58778524 0.80901706 -0.080311254 0.809017 0.5877853 -0.080311254 0.95105654 0.309017
		 -0.080311254 1 0 -0.080311254 0.79940003 -0.25974068 -0.080311254 0.68001008 -0.49405605
		 -0.080311254 0.49405631 -0.68000996 -0.080311254 0.2597408 -0.7993995 -0.080311254 4.0595303e-08 -0.84053838
		 -0.080311254 -0.25974068 -0.79939944 -0.080311254 -0.49405599 -0.68000984 -0.080311254 -0.68000984 -0.49405593
		 -0.080311254 -0.79939932 -0.25974062 -0.080311254 -0.8405382 6.0892951e-08 -0.080311254 -0.79939932 0.25974074
		 -0.080311254 -0.68000978 0.49405617 -0.080311254 -0.4940559 0.68000984 -0.080311254 -0.25974062 0.79939926
		 -0.080311254 1.5545314e-08 0.84053814 -0.080311254 0.25974059 0.79939926 -0.080311254 0.49405587 0.68000978
		 -0.080311254 0.68000972 0.4940559 -0.080311254 0.7993992 0.25974071 -0.080311254 0.84053808 6.0892951e-08
		 0.080311254 4.0595303e-08 6.0892951e-08 -0.080311254 4.0595303e-08 6.0892951e-08
		 0.13587935 0.79940003 -0.25974068 0.13587935 0.68001008 -0.49405605 0.13587935 0.80901754 -0.5877856
		 0.13587935 0.95105714 -0.30901718 0.13587935 0.49405631 -0.68000996 0.13587935 0.5877856 -0.80901748
		 0.13587935 0.2597408 -0.7993995 0.13587935 0.30901715 -0.95105702 0.13587935 4.0595303e-08 -0.84053838
		 0.13587935 0 -1.000000476837 0.13587935 -0.25974068 -0.79939944 0.13587935 -0.30901715 -0.95105696
		 0.13587935 -0.49405599 -0.68000984 0.13587935 -0.58778548 -0.8090173 0.13587935 -0.68000984 -0.49405593
		 0.13587935 -0.80901724 -0.58778542 0.13587935 -0.79939932 -0.25974062 0.13587935 -0.95105678 -0.30901706
		 0.13587935 -0.8405382 6.0892951e-08 0.13587935 -1.000000238419 0 0.13587935 -0.79939932 0.25974074
		 0.13587935 -0.95105678 0.30901706 0.13587935 -0.68000978 0.49405617 0.13587935 -0.80901718 0.58778536
		 0.13587935 -0.4940559 0.68000984 0.13587935 -0.58778536 0.80901712 0.13587935 -0.25974062 0.79939926
		 0.13587935 -0.30901706 0.95105666 0.13587935 1.5545314e-08 0.84053814 0.13587935 -2.9802322e-08 1.000000119209
		 0.13587935 0.25974059 0.79939926 0.13587935 0.30901697 0.9510566 0.13587935 0.49405587 0.68000978
		 0.13587935 0.58778524 0.80901706 0.13587935 0.68000972 0.4940559 0.13587935 0.809017 0.5877853
		 0.13587935 0.7993992 0.25974071 0.13587935 0.95105654 0.309017 0.13587935 0.84053808 6.0892951e-08
		 0.13587935 1 0 -0.13587935 0.95105714 -0.30901718 -0.13587935 0.80901754 -0.5877856
		 -0.13587935 0.68001008 -0.49405605 -0.13587935 0.79940003 -0.25974068 -0.13587935 0.5877856 -0.80901748
		 -0.13587935 0.49405631 -0.68000996 -0.13587935 0.30901715 -0.95105702 -0.13587935 0.2597408 -0.7993995
		 -0.13587935 0 -1.000000476837 -0.13587935 4.0595303e-08 -0.84053838 -0.13587935 -0.30901715 -0.95105696
		 -0.13587935 -0.25974068 -0.79939944 -0.13587935 -0.58778548 -0.8090173 -0.13587935 -0.49405599 -0.68000984
		 -0.13587935 -0.80901724 -0.58778542 -0.13587935 -0.68000984 -0.49405593 -0.13587935 -0.95105678 -0.30901706
		 -0.13587935 -0.79939932 -0.25974062 -0.13587935 -1.000000238419 0 -0.13587935 -0.8405382 6.0892951e-08
		 -0.13587935 -0.95105678 0.30901706 -0.13587935 -0.79939932 0.25974074 -0.13587935 -0.80901718 0.58778536
		 -0.13587935 -0.68000978 0.49405617 -0.13587935 -0.58778536 0.80901712 -0.13587935 -0.4940559 0.68000984
		 -0.13587935 -0.30901706 0.95105666 -0.13587935 -0.25974062 0.79939926 -0.13587935 -2.9802322e-08 1.000000119209
		 -0.13587935 1.5545314e-08 0.84053814 -0.13587935 0.30901697 0.9510566 -0.13587935 0.25974059 0.79939926
		 -0.13587935 0.58778524 0.80901706 -0.13587935 0.49405587 0.68000978 -0.13587935 0.809017 0.5877853
		 -0.13587935 0.68000972 0.4940559 -0.13587935 0.95105654 0.309017 -0.13587935 0.7993992 0.25974071
		 -0.13587935 1 0 -0.13587935 0.84053808 6.0892951e-08;
	setAttr -s 340 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1
		 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1
		 37 57 1 38 58 1 39 59 1 80 0 1 80 1 1 80 2 1 80 3 1 80 4 1 80 5 1 80 6 1 80 7 1 80 8 1
		 80 9 1 80 10 1 80 11 1 80 12 1 80 13 1 80 14 1 80 15 1 80 16 1 80 17 1 80 18 1 80 19 1
		 60 81 1 61 81 1 62 81 1 63 81 1 64 81 1 65 81 1 66 81 1 67 81 1 68 81 1 69 81 1 70 81 1
		 71 81 1 72 81 1 73 81 1 74 81 1 75 81 1 76 81 1 77 81 1 78 81 1 79 81 1 0 82 0 1 83 0
		 82 83 0 21 84 0 83 84 1 20 85 0 85 84 0 82 85 1 2 86 0 83 86 0 22 87 0 86 87 1 84 87 0
		 3 88 0 86 88 0 23 89 0 88 89 1 87 89 0 4 90 0 88 90 0 24 91 0 90 91 1 89 91 0 5 92 0
		 90 92 0 25 93 0;
	setAttr ".ed[166:331]" 92 93 1 91 93 0 6 94 0 92 94 0 26 95 0 94 95 1 93 95 0
		 7 96 0 94 96 0 27 97 0 96 97 1 95 97 0 8 98 0 96 98 0 28 99 0 98 99 1 97 99 0 9 100 0
		 98 100 0 29 101 0 100 101 1 99 101 0 10 102 0 100 102 0 30 103 0 102 103 1 101 103 0
		 11 104 0 102 104 0 31 105 0 104 105 1 103 105 0 12 106 0 104 106 0 32 107 0 106 107 1
		 105 107 0 13 108 0 106 108 0 33 109 0 108 109 1 107 109 0 14 110 0 108 110 0 34 111 0
		 110 111 1 109 111 0 15 112 0 110 112 0 35 113 0 112 113 1 111 113 0 16 114 0 112 114 0
		 36 115 0 114 115 1 113 115 0 17 116 0 114 116 0 37 117 0 116 117 1 115 117 0 18 118 0
		 116 118 0 38 119 0 118 119 1 117 119 0 19 120 0 118 120 0 39 121 0 120 121 1 119 121 0
		 120 82 0 121 85 0 40 122 0 41 123 0 122 123 0 61 124 0 123 124 1 60 125 0 125 124 0
		 122 125 1 42 126 0 123 126 0 62 127 0 126 127 1 124 127 0 43 128 0 126 128 0 63 129 0
		 128 129 1 127 129 0 44 130 0 128 130 0 64 131 0 130 131 1 129 131 0 45 132 0 130 132 0
		 65 133 0 132 133 1 131 133 0 46 134 0 132 134 0 66 135 0 134 135 1 133 135 0 47 136 0
		 134 136 0 67 137 0 136 137 1 135 137 0 48 138 0 136 138 0 68 139 0 138 139 1 137 139 0
		 49 140 0 138 140 0 69 141 0 140 141 1 139 141 0 50 142 0 140 142 0 70 143 0 142 143 1
		 141 143 0 51 144 0 142 144 0 71 145 0 144 145 1 143 145 0 52 146 0 144 146 0 72 147 0
		 146 147 1 145 147 0 53 148 0 146 148 0 73 149 0 148 149 1 147 149 0 54 150 0 148 150 0
		 74 151 0 150 151 1 149 151 0 55 152 0 150 152 0 75 153 0 152 153 1 151 153 0 56 154 0
		 152 154 0 76 155 0 154 155 1 153 155 0 57 156 0 154 156 0 77 157 0 156 157 1 155 157 0
		 58 158 0 156 158 0 78 159 0 158 159 1;
	setAttr ".ed[332:339]" 157 159 0 59 160 0 158 160 0 79 161 0 160 161 1 159 161 0
		 160 122 0 161 125 0;
	setAttr -s 180 -ch 680 ".fc[0:179]" -type "polyFaces" 
		f 4 142 144 -147 -148
		mu 0 4 124 125 126 127
		f 4 149 151 -153 -145
		mu 0 4 125 128 129 126
		f 4 154 156 -158 -152
		mu 0 4 128 130 131 129
		f 4 159 161 -163 -157
		mu 0 4 130 132 133 131
		f 4 164 166 -168 -162
		mu 0 4 132 134 135 133
		f 4 169 171 -173 -167
		mu 0 4 134 136 137 135
		f 4 174 176 -178 -172
		mu 0 4 136 138 139 137
		f 4 179 181 -183 -177
		mu 0 4 138 140 141 139
		f 4 184 186 -188 -182
		mu 0 4 140 142 143 141
		f 4 189 191 -193 -187
		mu 0 4 142 144 145 143
		f 4 194 196 -198 -192
		mu 0 4 144 146 147 145
		f 4 199 201 -203 -197
		mu 0 4 146 148 149 147
		f 4 204 206 -208 -202
		mu 0 4 148 150 151 149
		f 4 209 211 -213 -207
		mu 0 4 150 152 153 151
		f 4 214 216 -218 -212
		mu 0 4 152 154 155 153
		f 4 219 221 -223 -217
		mu 0 4 154 156 157 155
		f 4 224 226 -228 -222
		mu 0 4 156 158 159 157
		f 4 229 231 -233 -227
		mu 0 4 158 160 161 159
		f 4 234 236 -238 -232
		mu 0 4 160 162 163 161
		f 4 238 147 -240 -237
		mu 0 4 162 124 127 163
		f 4 20 81 -41 -81
		mu 0 4 40 41 62 61
		f 4 21 82 -42 -82
		mu 0 4 41 42 63 62
		f 4 22 83 -43 -83
		mu 0 4 42 43 64 63
		f 4 23 84 -44 -84
		mu 0 4 43 44 65 64
		f 4 24 85 -45 -85
		mu 0 4 44 45 66 65
		f 4 25 86 -46 -86
		mu 0 4 45 46 67 66
		f 4 26 87 -47 -87
		mu 0 4 46 47 68 67
		f 4 27 88 -48 -88
		mu 0 4 47 48 69 68
		f 4 28 89 -49 -89
		mu 0 4 48 49 70 69
		f 4 29 90 -50 -90
		mu 0 4 49 50 71 70
		f 4 30 91 -51 -91
		mu 0 4 50 51 72 71
		f 4 31 92 -52 -92
		mu 0 4 51 52 73 72
		f 4 32 93 -53 -93
		mu 0 4 52 53 74 73
		f 4 33 94 -54 -94
		mu 0 4 53 54 75 74
		f 4 34 95 -55 -95
		mu 0 4 54 55 76 75
		f 4 35 96 -56 -96
		mu 0 4 55 56 77 76
		f 4 36 97 -57 -97
		mu 0 4 56 57 78 77
		f 4 37 98 -58 -98
		mu 0 4 57 58 79 78
		f 4 38 99 -59 -99
		mu 0 4 58 59 80 79
		f 4 39 80 -60 -100
		mu 0 4 59 60 81 80
		f 4 242 244 -247 -248
		mu 0 4 164 165 166 167
		f 4 249 251 -253 -245
		mu 0 4 165 168 169 166
		f 4 254 256 -258 -252
		mu 0 4 168 170 171 169
		f 4 259 261 -263 -257
		mu 0 4 170 172 173 171
		f 4 264 266 -268 -262
		mu 0 4 172 174 175 173
		f 4 269 271 -273 -267
		mu 0 4 174 176 177 175
		f 4 274 276 -278 -272
		mu 0 4 176 178 179 177
		f 4 279 281 -283 -277
		mu 0 4 178 180 181 179
		f 4 284 286 -288 -282
		mu 0 4 180 182 183 181
		f 4 289 291 -293 -287
		mu 0 4 182 184 185 183
		f 4 294 296 -298 -292
		mu 0 4 184 186 187 185
		f 4 299 301 -303 -297
		mu 0 4 186 188 189 187
		f 4 304 306 -308 -302
		mu 0 4 188 190 191 189
		f 4 309 311 -313 -307
		mu 0 4 190 192 193 191
		f 4 314 316 -318 -312
		mu 0 4 192 194 195 193
		f 4 319 321 -323 -317
		mu 0 4 194 196 197 195
		f 4 324 326 -328 -322
		mu 0 4 196 198 199 197
		f 4 329 331 -333 -327
		mu 0 4 198 200 201 199
		f 4 334 336 -338 -332
		mu 0 4 200 202 203 201
		f 4 338 247 -340 -337
		mu 0 4 202 164 167 203
		f 3 -1 -101 101
		mu 0 3 1 0 122
		f 3 -2 -102 102
		mu 0 3 2 1 122
		f 3 -3 -103 103
		mu 0 3 3 2 122
		f 3 -4 -104 104
		mu 0 3 4 3 122
		f 3 -5 -105 105
		mu 0 3 5 4 122
		f 3 -6 -106 106
		mu 0 3 6 5 122
		f 3 -7 -107 107
		mu 0 3 7 6 122
		f 3 -8 -108 108
		mu 0 3 8 7 122
		f 3 -9 -109 109
		mu 0 3 9 8 122
		f 3 -10 -110 110
		mu 0 3 10 9 122
		f 3 -11 -111 111
		mu 0 3 11 10 122
		f 3 -12 -112 112
		mu 0 3 12 11 122
		f 3 -13 -113 113
		mu 0 3 13 12 122
		f 3 -14 -114 114
		mu 0 3 14 13 122
		f 3 -15 -115 115
		mu 0 3 15 14 122
		f 3 -16 -116 116
		mu 0 3 16 15 122
		f 3 -17 -117 117
		mu 0 3 17 16 122
		f 3 -18 -118 118
		mu 0 3 18 17 122
		f 3 -19 -119 119
		mu 0 3 19 18 122
		f 3 -20 -120 100
		mu 0 3 0 19 122
		f 3 60 121 -121
		mu 0 3 120 119 123
		f 3 61 122 -122
		mu 0 3 119 118 123
		f 3 62 123 -123
		mu 0 3 118 117 123
		f 3 63 124 -124
		mu 0 3 117 116 123
		f 3 64 125 -125
		mu 0 3 116 115 123
		f 3 65 126 -126
		mu 0 3 115 114 123
		f 3 66 127 -127
		mu 0 3 114 113 123
		f 3 67 128 -128
		mu 0 3 113 112 123
		f 3 68 129 -129
		mu 0 3 112 111 123
		f 3 69 130 -130
		mu 0 3 111 110 123
		f 3 70 131 -131
		mu 0 3 110 109 123
		f 3 71 132 -132
		mu 0 3 109 108 123
		f 3 72 133 -133
		mu 0 3 108 107 123
		f 3 73 134 -134
		mu 0 3 107 106 123
		f 3 74 135 -135
		mu 0 3 106 105 123
		f 3 75 136 -136
		mu 0 3 105 104 123
		f 3 76 137 -137
		mu 0 3 104 103 123
		f 3 77 138 -138
		mu 0 3 103 102 123
		f 3 78 139 -139
		mu 0 3 102 121 123
		f 3 79 120 -140
		mu 0 3 121 120 123
		f 4 0 141 -143 -141
		mu 0 4 0 1 125 124
		f 4 -21 145 146 -144
		mu 0 4 21 20 127 126
		f 4 1 148 -150 -142
		mu 0 4 1 2 128 125
		f 4 -22 143 152 -151
		mu 0 4 22 21 126 129
		f 4 2 153 -155 -149
		mu 0 4 2 3 130 128
		f 4 -23 150 157 -156
		mu 0 4 23 22 129 131
		f 4 3 158 -160 -154
		mu 0 4 3 4 132 130
		f 4 -24 155 162 -161
		mu 0 4 24 23 131 133
		f 4 4 163 -165 -159
		mu 0 4 4 5 134 132
		f 4 -25 160 167 -166
		mu 0 4 25 24 133 135
		f 4 5 168 -170 -164
		mu 0 4 5 6 136 134
		f 4 -26 165 172 -171
		mu 0 4 26 25 135 137
		f 4 6 173 -175 -169
		mu 0 4 6 7 138 136
		f 4 -27 170 177 -176
		mu 0 4 27 26 137 139
		f 4 7 178 -180 -174
		mu 0 4 7 8 140 138
		f 4 -28 175 182 -181
		mu 0 4 28 27 139 141
		f 4 8 183 -185 -179
		mu 0 4 8 9 142 140
		f 4 -29 180 187 -186
		mu 0 4 29 28 141 143
		f 4 9 188 -190 -184
		mu 0 4 9 10 144 142
		f 4 -30 185 192 -191
		mu 0 4 30 29 143 145
		f 4 10 193 -195 -189
		mu 0 4 10 11 146 144
		f 4 -31 190 197 -196
		mu 0 4 31 30 145 147
		f 4 11 198 -200 -194
		mu 0 4 11 12 148 146
		f 4 -32 195 202 -201
		mu 0 4 32 31 147 149
		f 4 12 203 -205 -199
		mu 0 4 12 13 150 148
		f 4 -33 200 207 -206
		mu 0 4 33 32 149 151
		f 4 13 208 -210 -204
		mu 0 4 13 14 152 150
		f 4 -34 205 212 -211
		mu 0 4 34 33 151 153
		f 4 14 213 -215 -209
		mu 0 4 14 15 154 152
		f 4 -35 210 217 -216
		mu 0 4 35 34 153 155
		f 4 15 218 -220 -214
		mu 0 4 15 16 156 154
		f 4 -36 215 222 -221
		mu 0 4 36 35 155 157
		f 4 16 223 -225 -219
		mu 0 4 16 17 158 156
		f 4 -37 220 227 -226
		mu 0 4 37 36 157 159
		f 4 17 228 -230 -224
		mu 0 4 17 18 160 158
		f 4 -38 225 232 -231
		mu 0 4 38 37 159 161
		f 4 18 233 -235 -229
		mu 0 4 18 19 162 160
		f 4 -39 230 237 -236
		mu 0 4 39 38 161 163
		f 4 19 140 -239 -234
		mu 0 4 19 0 124 162
		f 4 -40 235 239 -146
		mu 0 4 20 39 163 127
		f 4 40 241 -243 -241
		mu 0 4 100 99 165 164
		f 4 -61 245 246 -244
		mu 0 4 119 120 167 166
		f 4 41 248 -250 -242
		mu 0 4 99 98 168 165
		f 4 -62 243 252 -251
		mu 0 4 118 119 166 169
		f 4 42 253 -255 -249
		mu 0 4 98 97 170 168
		f 4 -63 250 257 -256
		mu 0 4 117 118 169 171
		f 4 43 258 -260 -254
		mu 0 4 97 96 172 170
		f 4 -64 255 262 -261
		mu 0 4 116 117 171 173
		f 4 44 263 -265 -259
		mu 0 4 96 95 174 172
		f 4 -65 260 267 -266
		mu 0 4 115 116 173 175
		f 4 45 268 -270 -264
		mu 0 4 95 94 176 174
		f 4 -66 265 272 -271
		mu 0 4 114 115 175 177
		f 4 46 273 -275 -269
		mu 0 4 94 93 178 176
		f 4 -67 270 277 -276
		mu 0 4 113 114 177 179
		f 4 47 278 -280 -274
		mu 0 4 93 92 180 178
		f 4 -68 275 282 -281
		mu 0 4 112 113 179 181
		f 4 48 283 -285 -279
		mu 0 4 92 91 182 180
		f 4 -69 280 287 -286
		mu 0 4 111 112 181 183
		f 4 49 288 -290 -284
		mu 0 4 91 90 184 182
		f 4 -70 285 292 -291
		mu 0 4 110 111 183 185
		f 4 50 293 -295 -289
		mu 0 4 90 89 186 184
		f 4 -71 290 297 -296
		mu 0 4 109 110 185 187
		f 4 51 298 -300 -294
		mu 0 4 89 88 188 186
		f 4 -72 295 302 -301
		mu 0 4 108 109 187 189
		f 4 52 303 -305 -299
		mu 0 4 88 87 190 188
		f 4 -73 300 307 -306
		mu 0 4 107 108 189 191
		f 4 53 308 -310 -304
		mu 0 4 87 86 192 190
		f 4 -74 305 312 -311
		mu 0 4 106 107 191 193
		f 4 54 313 -315 -309
		mu 0 4 86 85 194 192
		f 4 -75 310 317 -316
		mu 0 4 105 106 193 195
		f 4 55 318 -320 -314
		mu 0 4 85 84 196 194
		f 4 -76 315 322 -321
		mu 0 4 104 105 195 197
		f 4 56 323 -325 -319
		mu 0 4 84 83 198 196
		f 4 -77 320 327 -326
		mu 0 4 103 104 197 199
		f 4 57 328 -330 -324
		mu 0 4 83 82 200 198
		f 4 -78 325 332 -331
		mu 0 4 102 103 199 201
		f 4 58 333 -335 -329
		mu 0 4 82 101 202 200
		f 4 -79 330 337 -336
		mu 0 4 121 102 201 203
		f 4 59 240 -339 -334
		mu 0 4 101 100 164 202
		f 4 -80 335 339 -246
		mu 0 4 120 121 203 167;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "290959F4-4925-1561-57B0-6FA3B23CEF3B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "01237E30-426A-1662-ABFA-8A908207916E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0C677F2D-4A8D-82FE-3B72-B3B42296AAAA";
createNode displayLayerManager -n "layerManager";
	rename -uid "4E144832-4849-BD1B-C3F1-3BA87734DD94";
createNode displayLayer -n "defaultLayer";
	rename -uid "77E91B42-4DD7-B2BB-9B17-25AF415A6439";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "81DDBC64-490C-04DD-9821-4D8AB5262FBD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C6FD9511-40B7-C6A0-2600-379ED037FC0D";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "74AEA3DC-403A-DA06-E86E-91987679CC62";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 755\n            -height 390\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 755\\n    -height 390\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 755\\n    -height 390\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0AD964C5-4E7D-F858-3D80-B893D87B00D4";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Coin.ma
