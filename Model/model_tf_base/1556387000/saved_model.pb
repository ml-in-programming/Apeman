��
��
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
�
BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
h
BoostedTreesCreateEnsemble
tree_ensemble_handle
stamp_token	
tree_ensemble_serialized�
�
(BoostedTreesCreateQuantileStreamResource#
quantile_stream_resource_handle
epsilon
num_streams	"
max_elementsint����� �
m
BoostedTreesDeserializeEnsemble
tree_ensemble_handle
stamp_token	
tree_ensemble_serialized�
k
$BoostedTreesEnsembleResourceHandleOp
resource"
	containerstring "
shared_namestring �
�
BoostedTreesPredict
tree_ensemble_handle0
bucketized_features*num_bucketized_features

logits""
num_bucketized_featuresint(0"
logits_dimensionint�
�
-BoostedTreesQuantileStreamResourceDeserialize#
quantile_stream_resource_handle"
bucket_boundaries*num_streams"
num_streamsint(0�
�
5BoostedTreesQuantileStreamResourceGetBucketBoundaries#
quantile_stream_resource_handle#
bucket_boundaries*num_features"
num_featuresint(�
q
*BoostedTreesQuantileStreamResourceHandleOp
resource"
	containerstring "
shared_namestring �
k
BoostedTreesSerializeEnsemble
tree_ensemble_handle
stamp_token	
tree_ensemble_serialized�
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
T
!IsBoostedTreesEnsembleInitialized
tree_ensemble_handle
is_initialized
�
m
/IsBoostedTreesQuantileStreamResourceInitialized#
quantile_stream_resource_handle
is_initialized
�
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.13.12b'v1.13.1-0-g6612da8951'8��

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shape: *
_class
loc:@global_step
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
NUM_CONDITIONALPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
e

NUM_SWITCHPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
j
NUM_TYPE_ACCESSPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
i
NUM_INVOCATIONPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
a
NUM_IFPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
e

NUM_ASSIGNPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
m
NUM_TYPED_ELEMENTSPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
i
NUM_VAR_ACCESSPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
k
NUM_FIELD_ACCESSPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
d
	NUM_LOCALPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
f
NUM_PACKAGEPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
b
NUM_LOCPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
d
	LOC_RATIOPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
b
CON_LOCPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
e

CON_ASSERTPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
j
CON_CONDITIONALPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
e

CON_SWITCHPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
j
CON_TYPE_ACCESSPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
i
CON_INVOCATIONPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
a
CON_IFPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
e

CON_ASSIGNPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
m
CON_TYPED_ELEMENTSPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
i
CON_VAR_ACCESSPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
k
CON_FIELD_ACCESSPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
d
	CON_LOCALPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
f
CON_PACKAGEPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
n
VAR_ACCESS_COUPLINGPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
p
VAR_ACCESS_COUPLING_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
n
VAR_ACCESS_COHESIONPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
p
VAR_ACCESS_COHESION_2Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
p
FIELD_ACCESS_COUPLINGPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
r
FIELD_ACCESS_COUPLING_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
p
FIELD_ACCESS_COHESIONPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
r
FIELD_ACCESS_COHESION_2Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
n
INVOCATION_COUPLINGPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
n
INVOCATION_COHESIONPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
r
TYPED_ELEMENTS_COUPLINGPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
r
TYPED_ELEMENTS_COHESIONPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
o
TYPE_ACCESS_COUPLINGPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
q
TYPE_ACCESS_COUPLING_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
o
TYPE_ACCESS_COHESIONPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
q
TYPE_ACCESS_COHESION_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
k
PACKAGE_COUPLINGPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
m
PACKAGE_COUPLING_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
k
PACKAGE_COHESIONPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
m
PACKAGE_COHESION_2Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
n
boosted_trees$BoostedTreesEnsembleResourceHandleOp*
shared_nameboosted_trees/*
_output_shapes
: 
v
4boosted_trees/BoostedTreesCreateEnsemble/stamp_tokenConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
Aboosted_trees/BoostedTreesCreateEnsemble/tree_ensemble_serializedConst*
valueB B *
dtype0*
_output_shapes
: 
�
(boosted_trees/BoostedTreesCreateEnsembleBoostedTreesCreateEnsembleboosted_trees4boosted_trees/BoostedTreesCreateEnsemble/stamp_tokenAboosted_trees/BoostedTreesCreateEnsemble/tree_ensemble_serialized
{
/boosted_trees/IsBoostedTreesEnsembleInitialized!IsBoostedTreesEnsembleInitializedboosted_trees*
_output_shapes
: 
u
+boosted_trees/BoostedTreesSerializeEnsembleBoostedTreesSerializeEnsembleboosted_trees*
_output_shapes
: : 
�
!boosted_trees/QuantileAccumulator*BoostedTreesQuantileStreamResourceHandleOp*3
shared_name$"boosted_trees/QuantileAccumulator/*
_output_shapes
: 
�
Rboosted_trees/QuantileAccumulator/BoostedTreesCreateQuantileStreamResource/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *
�#<
�
Vboosted_trees/QuantileAccumulator/BoostedTreesCreateQuantileStreamResource/num_streamsConst*
value	B	 R.*
dtype0	*
_output_shapes
: 
�
Jboosted_trees/QuantileAccumulator/BoostedTreesCreateQuantileStreamResource(BoostedTreesCreateQuantileStreamResource!boosted_trees/QuantileAccumulatorRboosted_trees/QuantileAccumulator/BoostedTreesCreateQuantileStreamResource/epsilonVboosted_trees/QuantileAccumulator/BoostedTreesCreateQuantileStreamResource/num_streams
�
Qboosted_trees/QuantileAccumulator/IsBoostedTreesQuantileStreamResourceInitialized/IsBoostedTreesQuantileStreamResourceInitialized!boosted_trees/QuantileAccumulator*
_output_shapes
: 
�
Wboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries5BoostedTreesQuantileStreamResourceGetBucketBoundaries!boosted_trees/QuantileAccumulator*
num_features.*�
_output_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������
�
Cboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries5BoostedTreesQuantileStreamResourceGetBucketBoundaries!boosted_trees/QuantileAccumulator*
num_features.*�
_output_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������
�
:boosted_trees/transform_features/CON_ASSERT/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
6boosted_trees/transform_features/CON_ASSERT/ExpandDims
ExpandDims
CON_ASSERT:boosted_trees/transform_features/CON_ASSERT/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
3boosted_trees/transform_features/CON_ASSERT/ToFloatCast6boosted_trees/transform_features/CON_ASSERT/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
:boosted_trees/transform_features/CON_ASSIGN/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
6boosted_trees/transform_features/CON_ASSIGN/ExpandDims
ExpandDims
CON_ASSIGN:boosted_trees/transform_features/CON_ASSIGN/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
3boosted_trees/transform_features/CON_ASSIGN/ToFloatCast6boosted_trees/transform_features/CON_ASSIGN/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
?boosted_trees/transform_features/CON_CONDITIONAL/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
;boosted_trees/transform_features/CON_CONDITIONAL/ExpandDims
ExpandDimsCON_CONDITIONAL?boosted_trees/transform_features/CON_CONDITIONAL/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
8boosted_trees/transform_features/CON_CONDITIONAL/ToFloatCast;boosted_trees/transform_features/CON_CONDITIONAL/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
@boosted_trees/transform_features/CON_FIELD_ACCESS/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
<boosted_trees/transform_features/CON_FIELD_ACCESS/ExpandDims
ExpandDimsCON_FIELD_ACCESS@boosted_trees/transform_features/CON_FIELD_ACCESS/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
9boosted_trees/transform_features/CON_FIELD_ACCESS/ToFloatCast<boosted_trees/transform_features/CON_FIELD_ACCESS/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
6boosted_trees/transform_features/CON_IF/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
2boosted_trees/transform_features/CON_IF/ExpandDims
ExpandDimsCON_IF6boosted_trees/transform_features/CON_IF/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
/boosted_trees/transform_features/CON_IF/ToFloatCast2boosted_trees/transform_features/CON_IF/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
>boosted_trees/transform_features/CON_INVOCATION/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
:boosted_trees/transform_features/CON_INVOCATION/ExpandDims
ExpandDimsCON_INVOCATION>boosted_trees/transform_features/CON_INVOCATION/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
7boosted_trees/transform_features/CON_INVOCATION/ToFloatCast:boosted_trees/transform_features/CON_INVOCATION/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
7boosted_trees/transform_features/CON_LOC/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
3boosted_trees/transform_features/CON_LOC/ExpandDims
ExpandDimsCON_LOC7boosted_trees/transform_features/CON_LOC/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
0boosted_trees/transform_features/CON_LOC/ToFloatCast3boosted_trees/transform_features/CON_LOC/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
9boosted_trees/transform_features/CON_LOCAL/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
5boosted_trees/transform_features/CON_LOCAL/ExpandDims
ExpandDims	CON_LOCAL9boosted_trees/transform_features/CON_LOCAL/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
2boosted_trees/transform_features/CON_LOCAL/ToFloatCast5boosted_trees/transform_features/CON_LOCAL/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
;boosted_trees/transform_features/CON_PACKAGE/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
7boosted_trees/transform_features/CON_PACKAGE/ExpandDims
ExpandDimsCON_PACKAGE;boosted_trees/transform_features/CON_PACKAGE/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
4boosted_trees/transform_features/CON_PACKAGE/ToFloatCast7boosted_trees/transform_features/CON_PACKAGE/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
:boosted_trees/transform_features/CON_SWITCH/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
6boosted_trees/transform_features/CON_SWITCH/ExpandDims
ExpandDims
CON_SWITCH:boosted_trees/transform_features/CON_SWITCH/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
3boosted_trees/transform_features/CON_SWITCH/ToFloatCast6boosted_trees/transform_features/CON_SWITCH/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Bboosted_trees/transform_features/CON_TYPED_ELEMENTS/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
>boosted_trees/transform_features/CON_TYPED_ELEMENTS/ExpandDims
ExpandDimsCON_TYPED_ELEMENTSBboosted_trees/transform_features/CON_TYPED_ELEMENTS/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
;boosted_trees/transform_features/CON_TYPED_ELEMENTS/ToFloatCast>boosted_trees/transform_features/CON_TYPED_ELEMENTS/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
?boosted_trees/transform_features/CON_TYPE_ACCESS/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
;boosted_trees/transform_features/CON_TYPE_ACCESS/ExpandDims
ExpandDimsCON_TYPE_ACCESS?boosted_trees/transform_features/CON_TYPE_ACCESS/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
8boosted_trees/transform_features/CON_TYPE_ACCESS/ToFloatCast;boosted_trees/transform_features/CON_TYPE_ACCESS/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
>boosted_trees/transform_features/CON_VAR_ACCESS/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
:boosted_trees/transform_features/CON_VAR_ACCESS/ExpandDims
ExpandDimsCON_VAR_ACCESS>boosted_trees/transform_features/CON_VAR_ACCESS/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
7boosted_trees/transform_features/CON_VAR_ACCESS/ToFloatCast:boosted_trees/transform_features/CON_VAR_ACCESS/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Eboosted_trees/transform_features/FIELD_ACCESS_COHESION/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Aboosted_trees/transform_features/FIELD_ACCESS_COHESION/ExpandDims
ExpandDimsFIELD_ACCESS_COHESIONEboosted_trees/transform_features/FIELD_ACCESS_COHESION/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
>boosted_trees/transform_features/FIELD_ACCESS_COHESION/ToFloatCastAboosted_trees/transform_features/FIELD_ACCESS_COHESION/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Gboosted_trees/transform_features/FIELD_ACCESS_COHESION_2/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
Cboosted_trees/transform_features/FIELD_ACCESS_COHESION_2/ExpandDims
ExpandDimsFIELD_ACCESS_COHESION_2Gboosted_trees/transform_features/FIELD_ACCESS_COHESION_2/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
@boosted_trees/transform_features/FIELD_ACCESS_COHESION_2/ToFloatCastCboosted_trees/transform_features/FIELD_ACCESS_COHESION_2/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Eboosted_trees/transform_features/FIELD_ACCESS_COUPLING/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Aboosted_trees/transform_features/FIELD_ACCESS_COUPLING/ExpandDims
ExpandDimsFIELD_ACCESS_COUPLINGEboosted_trees/transform_features/FIELD_ACCESS_COUPLING/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
>boosted_trees/transform_features/FIELD_ACCESS_COUPLING/ToFloatCastAboosted_trees/transform_features/FIELD_ACCESS_COUPLING/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Gboosted_trees/transform_features/FIELD_ACCESS_COUPLING_2/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Cboosted_trees/transform_features/FIELD_ACCESS_COUPLING_2/ExpandDims
ExpandDimsFIELD_ACCESS_COUPLING_2Gboosted_trees/transform_features/FIELD_ACCESS_COUPLING_2/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
@boosted_trees/transform_features/FIELD_ACCESS_COUPLING_2/ToFloatCastCboosted_trees/transform_features/FIELD_ACCESS_COUPLING_2/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
Cboosted_trees/transform_features/INVOCATION_COHESION/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
?boosted_trees/transform_features/INVOCATION_COHESION/ExpandDims
ExpandDimsINVOCATION_COHESIONCboosted_trees/transform_features/INVOCATION_COHESION/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<boosted_trees/transform_features/INVOCATION_COHESION/ToFloatCast?boosted_trees/transform_features/INVOCATION_COHESION/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Cboosted_trees/transform_features/INVOCATION_COUPLING/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
?boosted_trees/transform_features/INVOCATION_COUPLING/ExpandDims
ExpandDimsINVOCATION_COUPLINGCboosted_trees/transform_features/INVOCATION_COUPLING/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
<boosted_trees/transform_features/INVOCATION_COUPLING/ToFloatCast?boosted_trees/transform_features/INVOCATION_COUPLING/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
9boosted_trees/transform_features/LOC_RATIO/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
5boosted_trees/transform_features/LOC_RATIO/ExpandDims
ExpandDims	LOC_RATIO9boosted_trees/transform_features/LOC_RATIO/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
2boosted_trees/transform_features/LOC_RATIO/ToFloatCast5boosted_trees/transform_features/LOC_RATIO/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
:boosted_trees/transform_features/NUM_ASSIGN/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
6boosted_trees/transform_features/NUM_ASSIGN/ExpandDims
ExpandDims
NUM_ASSIGN:boosted_trees/transform_features/NUM_ASSIGN/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
3boosted_trees/transform_features/NUM_ASSIGN/ToFloatCast6boosted_trees/transform_features/NUM_ASSIGN/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
?boosted_trees/transform_features/NUM_CONDITIONAL/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
;boosted_trees/transform_features/NUM_CONDITIONAL/ExpandDims
ExpandDimsNUM_CONDITIONAL?boosted_trees/transform_features/NUM_CONDITIONAL/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
8boosted_trees/transform_features/NUM_CONDITIONAL/ToFloatCast;boosted_trees/transform_features/NUM_CONDITIONAL/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
@boosted_trees/transform_features/NUM_FIELD_ACCESS/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
<boosted_trees/transform_features/NUM_FIELD_ACCESS/ExpandDims
ExpandDimsNUM_FIELD_ACCESS@boosted_trees/transform_features/NUM_FIELD_ACCESS/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
9boosted_trees/transform_features/NUM_FIELD_ACCESS/ToFloatCast<boosted_trees/transform_features/NUM_FIELD_ACCESS/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
6boosted_trees/transform_features/NUM_IF/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
2boosted_trees/transform_features/NUM_IF/ExpandDims
ExpandDimsNUM_IF6boosted_trees/transform_features/NUM_IF/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
/boosted_trees/transform_features/NUM_IF/ToFloatCast2boosted_trees/transform_features/NUM_IF/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
>boosted_trees/transform_features/NUM_INVOCATION/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
:boosted_trees/transform_features/NUM_INVOCATION/ExpandDims
ExpandDimsNUM_INVOCATION>boosted_trees/transform_features/NUM_INVOCATION/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
7boosted_trees/transform_features/NUM_INVOCATION/ToFloatCast:boosted_trees/transform_features/NUM_INVOCATION/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
7boosted_trees/transform_features/NUM_LOC/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
3boosted_trees/transform_features/NUM_LOC/ExpandDims
ExpandDimsNUM_LOC7boosted_trees/transform_features/NUM_LOC/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
0boosted_trees/transform_features/NUM_LOC/ToFloatCast3boosted_trees/transform_features/NUM_LOC/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
9boosted_trees/transform_features/NUM_LOCAL/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
5boosted_trees/transform_features/NUM_LOCAL/ExpandDims
ExpandDims	NUM_LOCAL9boosted_trees/transform_features/NUM_LOCAL/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
2boosted_trees/transform_features/NUM_LOCAL/ToFloatCast5boosted_trees/transform_features/NUM_LOCAL/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
;boosted_trees/transform_features/NUM_PACKAGE/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
7boosted_trees/transform_features/NUM_PACKAGE/ExpandDims
ExpandDimsNUM_PACKAGE;boosted_trees/transform_features/NUM_PACKAGE/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
4boosted_trees/transform_features/NUM_PACKAGE/ToFloatCast7boosted_trees/transform_features/NUM_PACKAGE/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
:boosted_trees/transform_features/NUM_SWITCH/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
6boosted_trees/transform_features/NUM_SWITCH/ExpandDims
ExpandDims
NUM_SWITCH:boosted_trees/transform_features/NUM_SWITCH/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
3boosted_trees/transform_features/NUM_SWITCH/ToFloatCast6boosted_trees/transform_features/NUM_SWITCH/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Bboosted_trees/transform_features/NUM_TYPED_ELEMENTS/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
>boosted_trees/transform_features/NUM_TYPED_ELEMENTS/ExpandDims
ExpandDimsNUM_TYPED_ELEMENTSBboosted_trees/transform_features/NUM_TYPED_ELEMENTS/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
;boosted_trees/transform_features/NUM_TYPED_ELEMENTS/ToFloatCast>boosted_trees/transform_features/NUM_TYPED_ELEMENTS/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
?boosted_trees/transform_features/NUM_TYPE_ACCESS/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
;boosted_trees/transform_features/NUM_TYPE_ACCESS/ExpandDims
ExpandDimsNUM_TYPE_ACCESS?boosted_trees/transform_features/NUM_TYPE_ACCESS/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
8boosted_trees/transform_features/NUM_TYPE_ACCESS/ToFloatCast;boosted_trees/transform_features/NUM_TYPE_ACCESS/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
>boosted_trees/transform_features/NUM_VAR_ACCESS/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
:boosted_trees/transform_features/NUM_VAR_ACCESS/ExpandDims
ExpandDimsNUM_VAR_ACCESS>boosted_trees/transform_features/NUM_VAR_ACCESS/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
7boosted_trees/transform_features/NUM_VAR_ACCESS/ToFloatCast:boosted_trees/transform_features/NUM_VAR_ACCESS/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
@boosted_trees/transform_features/PACKAGE_COHESION/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
<boosted_trees/transform_features/PACKAGE_COHESION/ExpandDims
ExpandDimsPACKAGE_COHESION@boosted_trees/transform_features/PACKAGE_COHESION/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
9boosted_trees/transform_features/PACKAGE_COHESION/ToFloatCast<boosted_trees/transform_features/PACKAGE_COHESION/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Bboosted_trees/transform_features/PACKAGE_COHESION_2/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
>boosted_trees/transform_features/PACKAGE_COHESION_2/ExpandDims
ExpandDimsPACKAGE_COHESION_2Bboosted_trees/transform_features/PACKAGE_COHESION_2/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
;boosted_trees/transform_features/PACKAGE_COHESION_2/ToFloatCast>boosted_trees/transform_features/PACKAGE_COHESION_2/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
@boosted_trees/transform_features/PACKAGE_COUPLING/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
<boosted_trees/transform_features/PACKAGE_COUPLING/ExpandDims
ExpandDimsPACKAGE_COUPLING@boosted_trees/transform_features/PACKAGE_COUPLING/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
9boosted_trees/transform_features/PACKAGE_COUPLING/ToFloatCast<boosted_trees/transform_features/PACKAGE_COUPLING/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
Bboosted_trees/transform_features/PACKAGE_COUPLING_2/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
>boosted_trees/transform_features/PACKAGE_COUPLING_2/ExpandDims
ExpandDimsPACKAGE_COUPLING_2Bboosted_trees/transform_features/PACKAGE_COUPLING_2/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
;boosted_trees/transform_features/PACKAGE_COUPLING_2/ToFloatCast>boosted_trees/transform_features/PACKAGE_COUPLING_2/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Gboosted_trees/transform_features/TYPED_ELEMENTS_COHESION/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Cboosted_trees/transform_features/TYPED_ELEMENTS_COHESION/ExpandDims
ExpandDimsTYPED_ELEMENTS_COHESIONGboosted_trees/transform_features/TYPED_ELEMENTS_COHESION/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
@boosted_trees/transform_features/TYPED_ELEMENTS_COHESION/ToFloatCastCboosted_trees/transform_features/TYPED_ELEMENTS_COHESION/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Gboosted_trees/transform_features/TYPED_ELEMENTS_COUPLING/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Cboosted_trees/transform_features/TYPED_ELEMENTS_COUPLING/ExpandDims
ExpandDimsTYPED_ELEMENTS_COUPLINGGboosted_trees/transform_features/TYPED_ELEMENTS_COUPLING/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
@boosted_trees/transform_features/TYPED_ELEMENTS_COUPLING/ToFloatCastCboosted_trees/transform_features/TYPED_ELEMENTS_COUPLING/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Dboosted_trees/transform_features/TYPE_ACCESS_COHESION/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
@boosted_trees/transform_features/TYPE_ACCESS_COHESION/ExpandDims
ExpandDimsTYPE_ACCESS_COHESIONDboosted_trees/transform_features/TYPE_ACCESS_COHESION/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
=boosted_trees/transform_features/TYPE_ACCESS_COHESION/ToFloatCast@boosted_trees/transform_features/TYPE_ACCESS_COHESION/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Fboosted_trees/transform_features/TYPE_ACCESS_COHESION_2/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
Bboosted_trees/transform_features/TYPE_ACCESS_COHESION_2/ExpandDims
ExpandDimsTYPE_ACCESS_COHESION_2Fboosted_trees/transform_features/TYPE_ACCESS_COHESION_2/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
?boosted_trees/transform_features/TYPE_ACCESS_COHESION_2/ToFloatCastBboosted_trees/transform_features/TYPE_ACCESS_COHESION_2/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Dboosted_trees/transform_features/TYPE_ACCESS_COUPLING/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
@boosted_trees/transform_features/TYPE_ACCESS_COUPLING/ExpandDims
ExpandDimsTYPE_ACCESS_COUPLINGDboosted_trees/transform_features/TYPE_ACCESS_COUPLING/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
=boosted_trees/transform_features/TYPE_ACCESS_COUPLING/ToFloatCast@boosted_trees/transform_features/TYPE_ACCESS_COUPLING/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Fboosted_trees/transform_features/TYPE_ACCESS_COUPLING_2/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Bboosted_trees/transform_features/TYPE_ACCESS_COUPLING_2/ExpandDims
ExpandDimsTYPE_ACCESS_COUPLING_2Fboosted_trees/transform_features/TYPE_ACCESS_COUPLING_2/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
?boosted_trees/transform_features/TYPE_ACCESS_COUPLING_2/ToFloatCastBboosted_trees/transform_features/TYPE_ACCESS_COUPLING_2/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
Cboosted_trees/transform_features/VAR_ACCESS_COHESION/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
?boosted_trees/transform_features/VAR_ACCESS_COHESION/ExpandDims
ExpandDimsVAR_ACCESS_COHESIONCboosted_trees/transform_features/VAR_ACCESS_COHESION/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
<boosted_trees/transform_features/VAR_ACCESS_COHESION/ToFloatCast?boosted_trees/transform_features/VAR_ACCESS_COHESION/ExpandDims*'
_output_shapes
:���������*

DstT0*

SrcT0
�
Eboosted_trees/transform_features/VAR_ACCESS_COHESION_2/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Aboosted_trees/transform_features/VAR_ACCESS_COHESION_2/ExpandDims
ExpandDimsVAR_ACCESS_COHESION_2Eboosted_trees/transform_features/VAR_ACCESS_COHESION_2/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
>boosted_trees/transform_features/VAR_ACCESS_COHESION_2/ToFloatCastAboosted_trees/transform_features/VAR_ACCESS_COHESION_2/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Cboosted_trees/transform_features/VAR_ACCESS_COUPLING/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
?boosted_trees/transform_features/VAR_ACCESS_COUPLING/ExpandDims
ExpandDimsVAR_ACCESS_COUPLINGCboosted_trees/transform_features/VAR_ACCESS_COUPLING/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<boosted_trees/transform_features/VAR_ACCESS_COUPLING/ToFloatCast?boosted_trees/transform_features/VAR_ACCESS_COUPLING/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
Eboosted_trees/transform_features/VAR_ACCESS_COUPLING_2/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Aboosted_trees/transform_features/VAR_ACCESS_COUPLING_2/ExpandDims
ExpandDimsVAR_ACCESS_COUPLING_2Eboosted_trees/transform_features/VAR_ACCESS_COUPLING_2/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
>boosted_trees/transform_features/VAR_ACCESS_COUPLING_2/ToFloatCastAboosted_trees/transform_features/VAR_ACCESS_COUPLING_2/ExpandDims*

SrcT0*'
_output_shapes
:���������*

DstT0
�
boosted_trees/unstackUnpack3boosted_trees/transform_features/CON_ASSERT/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
#boosted_trees/BoostedTreesBucketizeBoostedTreesBucketizeboosted_trees/unstackCboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_1Unpack3boosted_trees/transform_features/CON_ASSIGN/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_1BoostedTreesBucketizeboosted_trees/unstack_1Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:1*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_2Unpack8boosted_trees/transform_features/CON_CONDITIONAL/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_2BoostedTreesBucketizeboosted_trees/unstack_2Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:2*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_3Unpack9boosted_trees/transform_features/CON_FIELD_ACCESS/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_3BoostedTreesBucketizeboosted_trees/unstack_3Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:3*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_4Unpack/boosted_trees/transform_features/CON_IF/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_4BoostedTreesBucketizeboosted_trees/unstack_4Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:4*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_5Unpack7boosted_trees/transform_features/CON_INVOCATION/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_5BoostedTreesBucketizeboosted_trees/unstack_5Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:5*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_6Unpack0boosted_trees/transform_features/CON_LOC/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_6BoostedTreesBucketizeboosted_trees/unstack_6Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:6*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_7Unpack2boosted_trees/transform_features/CON_LOCAL/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_7BoostedTreesBucketizeboosted_trees/unstack_7Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:7*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_8Unpack4boosted_trees/transform_features/CON_PACKAGE/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_8BoostedTreesBucketizeboosted_trees/unstack_8Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:8*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_9Unpack3boosted_trees/transform_features/CON_SWITCH/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
%boosted_trees/BoostedTreesBucketize_9BoostedTreesBucketizeboosted_trees/unstack_9Eboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:9*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_10Unpack;boosted_trees/transform_features/CON_TYPED_ELEMENTS/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_10BoostedTreesBucketizeboosted_trees/unstack_10Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:10*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_11Unpack8boosted_trees/transform_features/CON_TYPE_ACCESS/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_11BoostedTreesBucketizeboosted_trees/unstack_11Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:11*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_12Unpack7boosted_trees/transform_features/CON_VAR_ACCESS/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_12BoostedTreesBucketizeboosted_trees/unstack_12Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:12*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_13Unpack>boosted_trees/transform_features/FIELD_ACCESS_COHESION/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_13BoostedTreesBucketizeboosted_trees/unstack_13Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:13*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_14Unpack@boosted_trees/transform_features/FIELD_ACCESS_COHESION_2/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_14BoostedTreesBucketizeboosted_trees/unstack_14Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:14*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_15Unpack>boosted_trees/transform_features/FIELD_ACCESS_COUPLING/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_15BoostedTreesBucketizeboosted_trees/unstack_15Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:15*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_16Unpack@boosted_trees/transform_features/FIELD_ACCESS_COUPLING_2/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_16BoostedTreesBucketizeboosted_trees/unstack_16Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:16*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_17Unpack<boosted_trees/transform_features/INVOCATION_COHESION/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_17BoostedTreesBucketizeboosted_trees/unstack_17Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:17*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_18Unpack<boosted_trees/transform_features/INVOCATION_COUPLING/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_18BoostedTreesBucketizeboosted_trees/unstack_18Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:18*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_19Unpack2boosted_trees/transform_features/LOC_RATIO/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_19BoostedTreesBucketizeboosted_trees/unstack_19Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:19*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_20Unpack3boosted_trees/transform_features/NUM_ASSIGN/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_20BoostedTreesBucketizeboosted_trees/unstack_20Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:20*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_21Unpack8boosted_trees/transform_features/NUM_CONDITIONAL/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_21BoostedTreesBucketizeboosted_trees/unstack_21Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:21*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_22Unpack9boosted_trees/transform_features/NUM_FIELD_ACCESS/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_22BoostedTreesBucketizeboosted_trees/unstack_22Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:22*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_23Unpack/boosted_trees/transform_features/NUM_IF/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_23BoostedTreesBucketizeboosted_trees/unstack_23Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:23*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_24Unpack7boosted_trees/transform_features/NUM_INVOCATION/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_24BoostedTreesBucketizeboosted_trees/unstack_24Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:24*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_25Unpack0boosted_trees/transform_features/NUM_LOC/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_25BoostedTreesBucketizeboosted_trees/unstack_25Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:25*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_26Unpack2boosted_trees/transform_features/NUM_LOCAL/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_26BoostedTreesBucketizeboosted_trees/unstack_26Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:26*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_27Unpack4boosted_trees/transform_features/NUM_PACKAGE/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_27BoostedTreesBucketizeboosted_trees/unstack_27Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:27*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_28Unpack3boosted_trees/transform_features/NUM_SWITCH/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_28BoostedTreesBucketizeboosted_trees/unstack_28Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:28*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_29Unpack;boosted_trees/transform_features/NUM_TYPED_ELEMENTS/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_29BoostedTreesBucketizeboosted_trees/unstack_29Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:29*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_30Unpack8boosted_trees/transform_features/NUM_TYPE_ACCESS/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_30BoostedTreesBucketizeboosted_trees/unstack_30Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:30*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_31Unpack7boosted_trees/transform_features/NUM_VAR_ACCESS/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_31BoostedTreesBucketizeboosted_trees/unstack_31Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:31*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_32Unpack9boosted_trees/transform_features/PACKAGE_COHESION/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_32BoostedTreesBucketizeboosted_trees/unstack_32Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:32*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_33Unpack;boosted_trees/transform_features/PACKAGE_COHESION_2/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_33BoostedTreesBucketizeboosted_trees/unstack_33Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:33*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_34Unpack9boosted_trees/transform_features/PACKAGE_COUPLING/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_34BoostedTreesBucketizeboosted_trees/unstack_34Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:34*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_35Unpack;boosted_trees/transform_features/PACKAGE_COUPLING_2/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_35BoostedTreesBucketizeboosted_trees/unstack_35Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:35*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_36Unpack@boosted_trees/transform_features/TYPED_ELEMENTS_COHESION/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_36BoostedTreesBucketizeboosted_trees/unstack_36Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:36*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_37Unpack@boosted_trees/transform_features/TYPED_ELEMENTS_COUPLING/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_37BoostedTreesBucketizeboosted_trees/unstack_37Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:37*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_38Unpack=boosted_trees/transform_features/TYPE_ACCESS_COHESION/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_38BoostedTreesBucketizeboosted_trees/unstack_38Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:38*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_39Unpack?boosted_trees/transform_features/TYPE_ACCESS_COHESION_2/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_39BoostedTreesBucketizeboosted_trees/unstack_39Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:39*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_40Unpack=boosted_trees/transform_features/TYPE_ACCESS_COUPLING/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_40BoostedTreesBucketizeboosted_trees/unstack_40Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:40*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_41Unpack?boosted_trees/transform_features/TYPE_ACCESS_COUPLING_2/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_41BoostedTreesBucketizeboosted_trees/unstack_41Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:41*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_42Unpack<boosted_trees/transform_features/VAR_ACCESS_COHESION/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_42BoostedTreesBucketizeboosted_trees/unstack_42Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:42*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_43Unpack>boosted_trees/transform_features/VAR_ACCESS_COHESION_2/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_43BoostedTreesBucketizeboosted_trees/unstack_43Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:43*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_44Unpack<boosted_trees/transform_features/VAR_ACCESS_COUPLING/ToFloat*#
_output_shapes
:���������*	
num*
T0*

axis
�
&boosted_trees/BoostedTreesBucketize_44BoostedTreesBucketizeboosted_trees/unstack_44Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:44*
num_features*#
_output_shapes
:���������
�
boosted_trees/unstack_45Unpack>boosted_trees/transform_features/VAR_ACCESS_COUPLING_2/ToFloat*	
num*
T0*

axis*#
_output_shapes
:���������
�
&boosted_trees/BoostedTreesBucketize_45BoostedTreesBucketizeboosted_trees/unstack_45Fboosted_trees/BoostedTreesQuantileStreamResourceGetBucketBoundaries:45*
num_features*#
_output_shapes
:���������
�
!boosted_trees/BoostedTreesPredictBoostedTreesPredictboosted_trees#boosted_trees/BoostedTreesBucketize%boosted_trees/BoostedTreesBucketize_1%boosted_trees/BoostedTreesBucketize_2%boosted_trees/BoostedTreesBucketize_3%boosted_trees/BoostedTreesBucketize_4%boosted_trees/BoostedTreesBucketize_5%boosted_trees/BoostedTreesBucketize_6%boosted_trees/BoostedTreesBucketize_7%boosted_trees/BoostedTreesBucketize_8%boosted_trees/BoostedTreesBucketize_9&boosted_trees/BoostedTreesBucketize_10&boosted_trees/BoostedTreesBucketize_11&boosted_trees/BoostedTreesBucketize_12&boosted_trees/BoostedTreesBucketize_13&boosted_trees/BoostedTreesBucketize_14&boosted_trees/BoostedTreesBucketize_15&boosted_trees/BoostedTreesBucketize_16&boosted_trees/BoostedTreesBucketize_17&boosted_trees/BoostedTreesBucketize_18&boosted_trees/BoostedTreesBucketize_19&boosted_trees/BoostedTreesBucketize_20&boosted_trees/BoostedTreesBucketize_21&boosted_trees/BoostedTreesBucketize_22&boosted_trees/BoostedTreesBucketize_23&boosted_trees/BoostedTreesBucketize_24&boosted_trees/BoostedTreesBucketize_25&boosted_trees/BoostedTreesBucketize_26&boosted_trees/BoostedTreesBucketize_27&boosted_trees/BoostedTreesBucketize_28&boosted_trees/BoostedTreesBucketize_29&boosted_trees/BoostedTreesBucketize_30&boosted_trees/BoostedTreesBucketize_31&boosted_trees/BoostedTreesBucketize_32&boosted_trees/BoostedTreesBucketize_33&boosted_trees/BoostedTreesBucketize_34&boosted_trees/BoostedTreesBucketize_35&boosted_trees/BoostedTreesBucketize_36&boosted_trees/BoostedTreesBucketize_37&boosted_trees/BoostedTreesBucketize_38&boosted_trees/BoostedTreesBucketize_39&boosted_trees/BoostedTreesBucketize_40&boosted_trees/BoostedTreesBucketize_41&boosted_trees/BoostedTreesBucketize_42&boosted_trees/BoostedTreesBucketize_43&boosted_trees/BoostedTreesBucketize_44&boosted_trees/BoostedTreesBucketize_45*
num_bucketized_features.*'
_output_shapes
:���������*
logits_dimension
p
boosted_trees/head/logits/ShapeShape!boosted_trees/BoostedTreesPredict*
T0*
_output_shapes
:
u
3boosted_trees/head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
e
]boosted_trees/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
V
Nboosted_trees/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_018aae0eaaeb48aebef57a099ffa7f4d/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:1*�
value�B�1B6boosted_trees/QuantileAccumulator/_bucket_boundaries_0B6boosted_trees/QuantileAccumulator/_bucket_boundaries_1B6boosted_trees/QuantileAccumulator/_bucket_boundaries_2B6boosted_trees/QuantileAccumulator/_bucket_boundaries_3B6boosted_trees/QuantileAccumulator/_bucket_boundaries_4B6boosted_trees/QuantileAccumulator/_bucket_boundaries_5B6boosted_trees/QuantileAccumulator/_bucket_boundaries_6B6boosted_trees/QuantileAccumulator/_bucket_boundaries_7B6boosted_trees/QuantileAccumulator/_bucket_boundaries_8B6boosted_trees/QuantileAccumulator/_bucket_boundaries_9B7boosted_trees/QuantileAccumulator/_bucket_boundaries_10B7boosted_trees/QuantileAccumulator/_bucket_boundaries_11B7boosted_trees/QuantileAccumulator/_bucket_boundaries_12B7boosted_trees/QuantileAccumulator/_bucket_boundaries_13B7boosted_trees/QuantileAccumulator/_bucket_boundaries_14B7boosted_trees/QuantileAccumulator/_bucket_boundaries_15B7boosted_trees/QuantileAccumulator/_bucket_boundaries_16B7boosted_trees/QuantileAccumulator/_bucket_boundaries_17B7boosted_trees/QuantileAccumulator/_bucket_boundaries_18B7boosted_trees/QuantileAccumulator/_bucket_boundaries_19B7boosted_trees/QuantileAccumulator/_bucket_boundaries_20B7boosted_trees/QuantileAccumulator/_bucket_boundaries_21B7boosted_trees/QuantileAccumulator/_bucket_boundaries_22B7boosted_trees/QuantileAccumulator/_bucket_boundaries_23B7boosted_trees/QuantileAccumulator/_bucket_boundaries_24B7boosted_trees/QuantileAccumulator/_bucket_boundaries_25B7boosted_trees/QuantileAccumulator/_bucket_boundaries_26B7boosted_trees/QuantileAccumulator/_bucket_boundaries_27B7boosted_trees/QuantileAccumulator/_bucket_boundaries_28B7boosted_trees/QuantileAccumulator/_bucket_boundaries_29B7boosted_trees/QuantileAccumulator/_bucket_boundaries_30B7boosted_trees/QuantileAccumulator/_bucket_boundaries_31B7boosted_trees/QuantileAccumulator/_bucket_boundaries_32B7boosted_trees/QuantileAccumulator/_bucket_boundaries_33B7boosted_trees/QuantileAccumulator/_bucket_boundaries_34B7boosted_trees/QuantileAccumulator/_bucket_boundaries_35B7boosted_trees/QuantileAccumulator/_bucket_boundaries_36B7boosted_trees/QuantileAccumulator/_bucket_boundaries_37B7boosted_trees/QuantileAccumulator/_bucket_boundaries_38B7boosted_trees/QuantileAccumulator/_bucket_boundaries_39B7boosted_trees/QuantileAccumulator/_bucket_boundaries_40B7boosted_trees/QuantileAccumulator/_bucket_boundaries_41B7boosted_trees/QuantileAccumulator/_bucket_boundaries_42B7boosted_trees/QuantileAccumulator/_bucket_boundaries_43B7boosted_trees/QuantileAccumulator/_bucket_boundaries_44B7boosted_trees/QuantileAccumulator/_bucket_boundaries_45Bboosted_trees:0_stampBboosted_trees:0_serializedBglobal_step
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:1
�#
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesWboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundariesYboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:1Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:2Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:3Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:4Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:5Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:6Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:7Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:8Yboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:9Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:10Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:11Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:12Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:13Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:14Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:15Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:16Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:17Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:18Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:19Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:20Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:21Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:22Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:23Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:24Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:25Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:26Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:27Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:28Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:29Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:30Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:31Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:32Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:33Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:34Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:35Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:36Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:37Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:38Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:39Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:40Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:41Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:42Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:43Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:44Zboosted_trees/QuantileAccumulator/BoostedTreesQuantileStreamResourceGetBucketBoundaries:45+boosted_trees/BoostedTreesSerializeEnsemble-boosted_trees/BoostedTreesSerializeEnsemble:1global_step"/device:CPU:0*?
dtypes5
321		
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�1B6boosted_trees/QuantileAccumulator/_bucket_boundaries_0B6boosted_trees/QuantileAccumulator/_bucket_boundaries_1B6boosted_trees/QuantileAccumulator/_bucket_boundaries_2B6boosted_trees/QuantileAccumulator/_bucket_boundaries_3B6boosted_trees/QuantileAccumulator/_bucket_boundaries_4B6boosted_trees/QuantileAccumulator/_bucket_boundaries_5B6boosted_trees/QuantileAccumulator/_bucket_boundaries_6B6boosted_trees/QuantileAccumulator/_bucket_boundaries_7B6boosted_trees/QuantileAccumulator/_bucket_boundaries_8B6boosted_trees/QuantileAccumulator/_bucket_boundaries_9B7boosted_trees/QuantileAccumulator/_bucket_boundaries_10B7boosted_trees/QuantileAccumulator/_bucket_boundaries_11B7boosted_trees/QuantileAccumulator/_bucket_boundaries_12B7boosted_trees/QuantileAccumulator/_bucket_boundaries_13B7boosted_trees/QuantileAccumulator/_bucket_boundaries_14B7boosted_trees/QuantileAccumulator/_bucket_boundaries_15B7boosted_trees/QuantileAccumulator/_bucket_boundaries_16B7boosted_trees/QuantileAccumulator/_bucket_boundaries_17B7boosted_trees/QuantileAccumulator/_bucket_boundaries_18B7boosted_trees/QuantileAccumulator/_bucket_boundaries_19B7boosted_trees/QuantileAccumulator/_bucket_boundaries_20B7boosted_trees/QuantileAccumulator/_bucket_boundaries_21B7boosted_trees/QuantileAccumulator/_bucket_boundaries_22B7boosted_trees/QuantileAccumulator/_bucket_boundaries_23B7boosted_trees/QuantileAccumulator/_bucket_boundaries_24B7boosted_trees/QuantileAccumulator/_bucket_boundaries_25B7boosted_trees/QuantileAccumulator/_bucket_boundaries_26B7boosted_trees/QuantileAccumulator/_bucket_boundaries_27B7boosted_trees/QuantileAccumulator/_bucket_boundaries_28B7boosted_trees/QuantileAccumulator/_bucket_boundaries_29B7boosted_trees/QuantileAccumulator/_bucket_boundaries_30B7boosted_trees/QuantileAccumulator/_bucket_boundaries_31B7boosted_trees/QuantileAccumulator/_bucket_boundaries_32B7boosted_trees/QuantileAccumulator/_bucket_boundaries_33B7boosted_trees/QuantileAccumulator/_bucket_boundaries_34B7boosted_trees/QuantileAccumulator/_bucket_boundaries_35B7boosted_trees/QuantileAccumulator/_bucket_boundaries_36B7boosted_trees/QuantileAccumulator/_bucket_boundaries_37B7boosted_trees/QuantileAccumulator/_bucket_boundaries_38B7boosted_trees/QuantileAccumulator/_bucket_boundaries_39B7boosted_trees/QuantileAccumulator/_bucket_boundaries_40B7boosted_trees/QuantileAccumulator/_bucket_boundaries_41B7boosted_trees/QuantileAccumulator/_bucket_boundaries_42B7boosted_trees/QuantileAccumulator/_bucket_boundaries_43B7boosted_trees/QuantileAccumulator/_bucket_boundaries_44B7boosted_trees/QuantileAccumulator/_bucket_boundaries_45Bboosted_trees:0_stampBboosted_trees:0_serializedBglobal_step*
dtype0*
_output_shapes
:1
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:1*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321		
�
2save/BoostedTreesQuantileStreamResourceDeserialize-BoostedTreesQuantileStreamResourceDeserialize!boosted_trees/QuantileAccumulatorsave/RestoreV2save/RestoreV2:1save/RestoreV2:2save/RestoreV2:3save/RestoreV2:4save/RestoreV2:5save/RestoreV2:6save/RestoreV2:7save/RestoreV2:8save/RestoreV2:9save/RestoreV2:10save/RestoreV2:11save/RestoreV2:12save/RestoreV2:13save/RestoreV2:14save/RestoreV2:15save/RestoreV2:16save/RestoreV2:17save/RestoreV2:18save/RestoreV2:19save/RestoreV2:20save/RestoreV2:21save/RestoreV2:22save/RestoreV2:23save/RestoreV2:24save/RestoreV2:25save/RestoreV2:26save/RestoreV2:27save/RestoreV2:28save/RestoreV2:29save/RestoreV2:30save/RestoreV2:31save/RestoreV2:32save/RestoreV2:33save/RestoreV2:34save/RestoreV2:35save/RestoreV2:36save/RestoreV2:37save/RestoreV2:38save/RestoreV2:39save/RestoreV2:40save/RestoreV2:41save/RestoreV2:42save/RestoreV2:43save/RestoreV2:44save/RestoreV2:45K^boosted_trees/QuantileAccumulator/BoostedTreesCreateQuantileStreamResource*
num_streams.
�
$save/BoostedTreesDeserializeEnsembleBoostedTreesDeserializeEnsembleboosted_treessave/RestoreV2:46save/RestoreV2:47)^boosted_trees/BoostedTreesCreateEnsemble
v
save/AssignAssignglobal_stepsave/RestoreV2:48*
_output_shapes
: *
T0	*
_class
loc:@global_step
�
save/restore_shardNoOp^save/Assign%^save/BoostedTreesDeserializeEnsemble3^save/BoostedTreesQuantileStreamResourceDeserialize
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"K
saveable_objects7
5
boosted_trees:0
"boosted_trees/QuantileAccumulator/"i
	variables\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps*�
predict�
C
VAR_ACCESS_COHESION_2*
VAR_ACCESS_COHESION_2:0���������
?
INVOCATION_COUPLING(
INVOCATION_COUPLING:0���������
5
CON_INVOCATION#
CON_INVOCATION:0���������
E
TYPE_ACCESS_COHESION_2+
TYPE_ACCESS_COHESION_2:0���������
-

NUM_ASSIGN
NUM_ASSIGN:0���������
%
CON_IF
CON_IF:0���������
/
CON_PACKAGE 
CON_PACKAGE:0���������
C
VAR_ACCESS_COUPLING_2*
VAR_ACCESS_COUPLING_2:0���������
+
	LOC_RATIO
LOC_RATIO:0���������
9
PACKAGE_COUPLING%
PACKAGE_COUPLING:0���������
=
PACKAGE_COHESION_2'
PACKAGE_COHESION_2:0���������
E
TYPE_ACCESS_COUPLING_2+
TYPE_ACCESS_COUPLING_2:0���������
G
FIELD_ACCESS_COHESION_2,
FIELD_ACCESS_COHESION_2:0���������
+
	NUM_LOCAL
NUM_LOCAL:0���������
-

CON_ASSIGN
CON_ASSIGN:0���������
7
NUM_TYPE_ACCESS$
NUM_TYPE_ACCESS:0���������
7
NUM_CONDITIONAL$
NUM_CONDITIONAL:0���������
9
NUM_FIELD_ACCESS%
NUM_FIELD_ACCESS:0���������
?
VAR_ACCESS_COHESION(
VAR_ACCESS_COHESION:0���������
=
NUM_TYPED_ELEMENTS'
NUM_TYPED_ELEMENTS:0���������
-

NUM_SWITCH
NUM_SWITCH:0���������
=
PACKAGE_COUPLING_2'
PACKAGE_COUPLING_2:0���������
G
FIELD_ACCESS_COUPLING_2,
FIELD_ACCESS_COUPLING_2:0���������
5
NUM_VAR_ACCESS#
NUM_VAR_ACCESS:0���������
G
TYPED_ELEMENTS_COHESION,
TYPED_ELEMENTS_COHESION:0���������
+
	CON_LOCAL
CON_LOCAL:0���������
C
FIELD_ACCESS_COHESION*
FIELD_ACCESS_COHESION:0���������
7
CON_TYPE_ACCESS$
CON_TYPE_ACCESS:0���������
A
TYPE_ACCESS_COHESION)
TYPE_ACCESS_COHESION:0���������
7
CON_CONDITIONAL$
CON_CONDITIONAL:0���������
9
CON_FIELD_ACCESS%
CON_FIELD_ACCESS:0���������
?
INVOCATION_COHESION(
INVOCATION_COHESION:0���������
'
NUM_LOC
	NUM_LOC:0���������
-

CON_SWITCH
CON_SWITCH:0���������
=
CON_TYPED_ELEMENTS'
CON_TYPED_ELEMENTS:0���������
-

CON_ASSERT
CON_ASSERT:0���������
?
VAR_ACCESS_COUPLING(
VAR_ACCESS_COUPLING:0���������
5
NUM_INVOCATION#
NUM_INVOCATION:0���������
5
CON_VAR_ACCESS#
CON_VAR_ACCESS:0���������
G
TYPED_ELEMENTS_COUPLING,
TYPED_ELEMENTS_COUPLING:0���������
%
NUM_IF
NUM_IF:0���������
/
NUM_PACKAGE 
NUM_PACKAGE:0���������
C
FIELD_ACCESS_COUPLING*
FIELD_ACCESS_COUPLING:0���������
'
CON_LOC
	CON_LOC:0���������
9
PACKAGE_COHESION%
PACKAGE_COHESION:0���������
A
TYPE_ACCESS_COUPLING)
TYPE_ACCESS_COUPLING:0���������I
predictions:
#boosted_trees/BoostedTreesPredict:0���������tensorflow/serving/predict