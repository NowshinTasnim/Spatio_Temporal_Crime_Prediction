
óÉ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.12v2.4.1-0-g85c8b2a817f8±
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22* 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:22*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:2*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:2*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_20/lstm_cell_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È*,
shared_namelstm_20/lstm_cell_38/kernel

/lstm_20/lstm_cell_38/kernel/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_38/kernel*
_output_shapes
:	È*
dtype0
§
%lstm_20/lstm_cell_38/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_20/lstm_cell_38/recurrent_kernel
 
9lstm_20/lstm_cell_38/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_20/lstm_cell_38/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_20/lstm_cell_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_20/lstm_cell_38/bias

-lstm_20/lstm_cell_38/bias/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_38/bias*
_output_shapes	
:È*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_24/kernel/m

*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m*
_output_shapes

:22*
dtype0

Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_24/bias/m
y
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_25/kernel/m

*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes

:2*
dtype0

Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_20/lstm_cell_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È*3
shared_name$"Adam/lstm_20/lstm_cell_38/kernel/m

6Adam/lstm_20/lstm_cell_38/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_38/kernel/m*
_output_shapes
:	È*
dtype0
µ
,Adam/lstm_20/lstm_cell_38/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_20/lstm_cell_38/recurrent_kernel/m
®
@Adam/lstm_20/lstm_cell_38/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_38/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

 Adam/lstm_20/lstm_cell_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_20/lstm_cell_38/bias/m

4Adam/lstm_20/lstm_cell_38/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_38/bias/m*
_output_shapes	
:È*
dtype0

Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/dense_24/kernel/v

*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v*
_output_shapes

:22*
dtype0

Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_24/bias/v
y
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_25/kernel/v

*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes

:2*
dtype0

Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_20/lstm_cell_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È*3
shared_name$"Adam/lstm_20/lstm_cell_38/kernel/v

6Adam/lstm_20/lstm_cell_38/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_38/kernel/v*
_output_shapes
:	È*
dtype0
µ
,Adam/lstm_20/lstm_cell_38/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_20/lstm_cell_38/recurrent_kernel/v
®
@Adam/lstm_20/lstm_cell_38/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_38/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

 Adam/lstm_20/lstm_cell_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_20/lstm_cell_38/bias/v

4Adam/lstm_20/lstm_cell_38/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_38/bias/v*
_output_shapes	
:È*
dtype0

NoOpNoOp
¨.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ã-
valueÙ-BÖ- BÏ-
æ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
l

cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
¾
iter

beta_1

beta_2
	decay
 learning_ratemSmTmUmV!mW"mX#mYvZv[v\v]!v^"v_#v`
1
!0
"1
#2
3
4
5
6
 
1
!0
"1
#2
3
4
5
6
­
trainable_variables
$layer_metrics
%layer_regularization_losses
regularization_losses

&layers
	variables
'metrics
(non_trainable_variables
 
~

!kernel
"recurrent_kernel
#bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
 

!0
"1
#2
 

!0
"1
#2
¹
trainable_variables
-layer_metrics

.states
/layer_regularization_losses
regularization_losses

0layers
	variables
1metrics
2non_trainable_variables
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
trainable_variables
3layer_metrics
4non_trainable_variables
5layer_regularization_losses
regularization_losses
	variables
6metrics

7layers
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
trainable_variables
8layer_metrics
9non_trainable_variables
:layer_regularization_losses
regularization_losses
	variables
;metrics

<layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_20/lstm_cell_38/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_20/lstm_cell_38/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_20/lstm_cell_38/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2

=0
>1
?2
 

!0
"1
#2
 

!0
"1
#2
­
)trainable_variables
@layer_metrics
Anon_trainable_variables
Blayer_regularization_losses
*regularization_losses
+	variables
Cmetrics

Dlayers
 
 
 


0
 
 
 
 
 
 
 
 
 
 
 
 
4
	Etotal
	Fcount
G	variables
H	keras_api
D
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api
D
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

G	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

I0
J1

L	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

Q	variables
~|
VARIABLE_VALUEAdam/dense_24/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_20/lstm_cell_38/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_20/lstm_cell_38/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_20/lstm_cell_38/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_24/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_20/lstm_cell_38/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_20/lstm_cell_38/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_20/lstm_cell_38/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_20_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
é
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_20_inputlstm_20/lstm_cell_38/kernel%lstm_20/lstm_cell_38/recurrent_kernellstm_20/lstm_cell_38/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_788618
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ñ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_20/lstm_cell_38/kernel/Read/ReadVariableOp9lstm_20/lstm_cell_38/recurrent_kernel/Read/ReadVariableOp-lstm_20/lstm_cell_38/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_38/kernel/m/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_38/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_38/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_38/kernel/v/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_38/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_38/bias/v/Read/ReadVariableOpConst*-
Tin&
$2"	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_790022
ì
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_24/kerneldense_24/biasdense_25/kerneldense_25/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_20/lstm_cell_38/kernel%lstm_20/lstm_cell_38/recurrent_kernellstm_20/lstm_cell_38/biastotalcounttotal_1count_1total_2count_2Adam/dense_24/kernel/mAdam/dense_24/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/m"Adam/lstm_20/lstm_cell_38/kernel/m,Adam/lstm_20/lstm_cell_38/recurrent_kernel/m Adam/lstm_20/lstm_cell_38/bias/mAdam/dense_24/kernel/vAdam/dense_24/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/v"Adam/lstm_20/lstm_cell_38/kernel/v,Adam/lstm_20/lstm_cell_38/recurrent_kernel/v Adam/lstm_20/lstm_cell_38/bias/v*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_790128ä¨
ª
Ô
-__inference_sequential_8_layer_call_fn_788549
lstm_20_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_7885322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_20_input
ì
~
)__inference_dense_25_layer_call_fn_789803

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_7884702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

æ
H__inference_sequential_8_layer_call_and_return_conditional_losses_788508
lstm_20_input
lstm_20_788490
lstm_20_788492
lstm_20_788494
dense_24_788497
dense_24_788499
dense_25_788502
dense_25_788504
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCall¢lstm_20/StatefulPartitionedCall¬
lstm_20/StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputlstm_20_788490lstm_20_788492lstm_20_788494*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7883632!
lstm_20/StatefulPartitionedCallº
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0dense_24_788497dense_24_788499*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_7884242"
 dense_24/StatefulPartitionedCall»
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_788502dense_25_788504*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_7884702"
 dense_25/StatefulPartitionedCallé
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_20_input
½
Ý
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_789869

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	È*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
½
Ý
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_789836

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	È*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
«
Ã
while_cond_787975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_787975___redundant_placeholder04
0while_while_cond_787975___redundant_placeholder14
0while_while_cond_787975___redundant_placeholder24
0while_while_cond_787975___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Ñ
ã
D__inference_dense_25_layer_call_and_return_conditional_losses_789794

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ä
§
"__inference__traced_restore_790128
file_prefix$
 assignvariableop_dense_24_kernel$
 assignvariableop_1_dense_24_bias&
"assignvariableop_2_dense_25_kernel$
 assignvariableop_3_dense_25_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rate2
.assignvariableop_9_lstm_20_lstm_cell_38_kernel=
9assignvariableop_10_lstm_20_lstm_cell_38_recurrent_kernel1
-assignvariableop_11_lstm_20_lstm_cell_38_bias
assignvariableop_12_total
assignvariableop_13_count
assignvariableop_14_total_1
assignvariableop_15_count_1
assignvariableop_16_total_2
assignvariableop_17_count_2.
*assignvariableop_18_adam_dense_24_kernel_m,
(assignvariableop_19_adam_dense_24_bias_m.
*assignvariableop_20_adam_dense_25_kernel_m,
(assignvariableop_21_adam_dense_25_bias_m:
6assignvariableop_22_adam_lstm_20_lstm_cell_38_kernel_mD
@assignvariableop_23_adam_lstm_20_lstm_cell_38_recurrent_kernel_m8
4assignvariableop_24_adam_lstm_20_lstm_cell_38_bias_m.
*assignvariableop_25_adam_dense_24_kernel_v,
(assignvariableop_26_adam_dense_24_bias_v.
*assignvariableop_27_adam_dense_25_kernel_v,
(assignvariableop_28_adam_dense_25_bias_v:
6assignvariableop_29_adam_lstm_20_lstm_cell_38_kernel_vD
@assignvariableop_30_adam_lstm_20_lstm_cell_38_recurrent_kernel_v8
4assignvariableop_31_adam_lstm_20_lstm_cell_38_bias_v
identity_33¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9®
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*º
value°B­!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÐ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÓ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_24_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_24_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_25_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_25_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4¡
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ª
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9³
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_20_lstm_cell_38_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_20_lstm_cell_38_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_20_lstm_cell_38_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18²
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_24_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19°
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_24_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20²
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_25_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21°
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_25_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¾
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_20_lstm_cell_38_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23È
AssignVariableOp_23AssignVariableOp@assignvariableop_23_adam_lstm_20_lstm_cell_38_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¼
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_20_lstm_cell_38_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_24_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_24_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_25_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_25_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¾
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_20_lstm_cell_38_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30È
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_lstm_20_lstm_cell_38_recurrent_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¼
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_20_lstm_cell_38_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_319
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_32
Identity_33IdentityIdentity_32:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_33"#
identity_33Identity_33:output:0*
_input_shapes
: ::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ñ
ã
D__inference_dense_25_layer_call_and_return_conditional_losses_788470

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
[
ò
C__inference_lstm_20_layer_call_and_return_conditional_losses_789221

inputs/
+lstm_cell_38_matmul_readvariableop_resource1
-lstm_cell_38_matmul_1_readvariableop_resource0
,lstm_cell_38_biasadd_readvariableop_resource
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02$
"lstm_cell_38/MatMul/ReadVariableOp­
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul»
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02&
$lstm_cell_38/MatMul_1/ReadVariableOp©
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul_1 
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/add´
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02%
#lstm_cell_38/BiasAdd/ReadVariableOp­
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/BiasAddj
lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/Const~
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/split/split_dimó
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_cell_38/split
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_1
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_2
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_1
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/add_1
lstm_cell_38/Sigmoid_3Sigmoidlstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_3
lstm_cell_38/Sigmoid_4Sigmoidlstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_4
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_3:y:0lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_789136*
condR
while_cond_789135*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
ç
&sequential_8_lstm_20_while_cond_787305F
Bsequential_8_lstm_20_while_sequential_8_lstm_20_while_loop_counterL
Hsequential_8_lstm_20_while_sequential_8_lstm_20_while_maximum_iterations*
&sequential_8_lstm_20_while_placeholder,
(sequential_8_lstm_20_while_placeholder_1,
(sequential_8_lstm_20_while_placeholder_2,
(sequential_8_lstm_20_while_placeholder_3H
Dsequential_8_lstm_20_while_less_sequential_8_lstm_20_strided_slice_1^
Zsequential_8_lstm_20_while_sequential_8_lstm_20_while_cond_787305___redundant_placeholder0^
Zsequential_8_lstm_20_while_sequential_8_lstm_20_while_cond_787305___redundant_placeholder1^
Zsequential_8_lstm_20_while_sequential_8_lstm_20_while_cond_787305___redundant_placeholder2^
Zsequential_8_lstm_20_while_sequential_8_lstm_20_while_cond_787305___redundant_placeholder3'
#sequential_8_lstm_20_while_identity
Ù
sequential_8/lstm_20/while/LessLess&sequential_8_lstm_20_while_placeholderDsequential_8_lstm_20_while_less_sequential_8_lstm_20_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_8/lstm_20/while/Less
#sequential_8/lstm_20/while/IdentityIdentity#sequential_8/lstm_20/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_8/lstm_20/while/Identity"S
#sequential_8_lstm_20_while_identity,sequential_8/lstm_20/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ª
Ô
-__inference_sequential_8_layer_call_fn_788589
lstm_20_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_7885722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_20_input
ßD
Ü
C__inference_lstm_20_layer_call_and_return_conditional_losses_788045

inputs
lstm_cell_38_787963
lstm_cell_38_787965
lstm_cell_38_787967
identity¢$lstm_cell_38/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_38_787963lstm_cell_38_787965lstm_cell_38_787967*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_7875502&
$lstm_cell_38/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_38_787963lstm_cell_38_787965lstm_cell_38_787967*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_787976*
condR
while_cond_787975*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0%^lstm_cell_38/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_38/StatefulPartitionedCall$lstm_cell_38/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
ß
H__inference_sequential_8_layer_call_and_return_conditional_losses_788572

inputs
lstm_20_788554
lstm_20_788556
lstm_20_788558
dense_24_788561
dense_24_788563
dense_25_788566
dense_25_788568
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCall¢lstm_20/StatefulPartitionedCall¥
lstm_20/StatefulPartitionedCallStatefulPartitionedCallinputslstm_20_788554lstm_20_788556lstm_20_788558*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7883632!
lstm_20/StatefulPartitionedCallº
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0dense_24_788561dense_24_788563*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_7884242"
 dense_24/StatefulPartitionedCall»
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_788566dense_25_788568*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_7884702"
 dense_25/StatefulPartitionedCallé
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
O
þ	
lstm_20_while_body_788686,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0A
=lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0@
<lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor=
9lstm_20_while_lstm_cell_38_matmul_readvariableop_resource?
;lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource>
:lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource¢1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp¢0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp¢2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpÓ
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_20/while/TensorArrayV2Read/TensorListGetItemá
0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype022
0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp÷
!lstm_20/while/lstm_cell_38/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_20/while/lstm_cell_38/MatMulç
2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype024
2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpà
#lstm_20/while/lstm_cell_38/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#lstm_20/while/lstm_cell_38/MatMul_1Ø
lstm_20/while/lstm_cell_38/addAddV2+lstm_20/while/lstm_cell_38/MatMul:product:0-lstm_20/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_20/while/lstm_cell_38/addà
1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype023
1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOpå
"lstm_20/while/lstm_cell_38/BiasAddBiasAdd"lstm_20/while/lstm_cell_38/add:z:09lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_20/while/lstm_cell_38/BiasAdd
 lstm_20/while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_20/while/lstm_cell_38/Const
*lstm_20/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_20/while/lstm_cell_38/split/split_dim«
 lstm_20/while/lstm_cell_38/splitSplit3lstm_20/while/lstm_cell_38/split/split_dim:output:0+lstm_20/while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2"
 lstm_20/while/lstm_cell_38/split°
"lstm_20/while/lstm_cell_38/SigmoidSigmoid)lstm_20/while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_20/while/lstm_cell_38/Sigmoid´
$lstm_20/while/lstm_cell_38/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_1À
lstm_20/while/lstm_cell_38/mulMul(lstm_20/while/lstm_cell_38/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/while/lstm_cell_38/mul´
$lstm_20/while/lstm_cell_38/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_2Ï
 lstm_20/while/lstm_cell_38/mul_1Mul&lstm_20/while/lstm_cell_38/Sigmoid:y:0(lstm_20/while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_20/while/lstm_cell_38/mul_1É
 lstm_20/while/lstm_cell_38/add_1AddV2"lstm_20/while/lstm_cell_38/mul:z:0$lstm_20/while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_20/while/lstm_cell_38/add_1´
$lstm_20/while/lstm_cell_38/Sigmoid_3Sigmoid)lstm_20/while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_3¯
$lstm_20/while/lstm_cell_38/Sigmoid_4Sigmoid$lstm_20/while/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_4Ñ
 lstm_20/while/lstm_cell_38/mul_2Mul(lstm_20/while/lstm_cell_38/Sigmoid_3:y:0(lstm_20/while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_20/while/lstm_cell_38/mul_2
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_20/while/TensorArrayV2Write/TensorListSetIteml
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add/y
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/addp
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add_1/y
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/add_1
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity­
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations2^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_1
lstm_20/while/Identity_2Identitylstm_20/while/add:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_2Á
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_3´
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_38/mul_2:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/while/Identity_4´
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_38/add_1:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/while/Identity_5"9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_38_matmul_readvariableop_resource;lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0"È
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2f
1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ú±
÷
H__inference_sequential_8_layer_call_and_return_conditional_losses_788824

inputs7
3lstm_20_lstm_cell_38_matmul_readvariableop_resource9
5lstm_20_lstm_cell_38_matmul_1_readvariableop_resource8
4lstm_20_lstm_cell_38_biasadd_readvariableop_resource.
*dense_24_tensordot_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource.
*dense_25_tensordot_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource
identity¢dense_24/BiasAdd/ReadVariableOp¢!dense_24/Tensordot/ReadVariableOp¢dense_25/BiasAdd/ReadVariableOp¢!dense_25/Tensordot/ReadVariableOp¢+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp¢*lstm_20/lstm_cell_38/MatMul/ReadVariableOp¢,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp¢lstm_20/whileT
lstm_20/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_20/Shape
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice/stack
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_1
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_2
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slicel
lstm_20/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros/mul/y
lstm_20/zeros/mulMullstm_20/strided_slice:output:0lstm_20/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/mulo
lstm_20/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_20/zeros/Less/y
lstm_20/zeros/LessLesslstm_20/zeros/mul:z:0lstm_20/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/Lessr
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros/packed/1£
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros/packedo
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros/Const
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/zerosp
lstm_20/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros_1/mul/y
lstm_20/zeros_1/mulMullstm_20/strided_slice:output:0lstm_20/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/muls
lstm_20/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_20/zeros_1/Less/y
lstm_20/zeros_1/LessLesslstm_20/zeros_1/mul:z:0lstm_20/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/Lessv
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros_1/packed/1©
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros_1/packeds
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros_1/Const
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/zeros_1
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose/perm
lstm_20/transpose	Transposeinputslstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_20/transposeg
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:2
lstm_20/Shape_1
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_1/stack
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_1
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_2
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slice_1
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_20/TensorArrayV2/element_shapeÒ
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2Ï
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_20/TensorArrayUnstack/TensorListFromTensor
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_2/stack
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_1
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_2¬
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_20/strided_slice_2Í
*lstm_20/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02,
*lstm_20/lstm_cell_38/MatMul/ReadVariableOpÍ
lstm_20/lstm_cell_38/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/MatMulÓ
,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02.
,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOpÉ
lstm_20/lstm_cell_38/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/MatMul_1À
lstm_20/lstm_cell_38/addAddV2%lstm_20/lstm_cell_38/MatMul:product:0'lstm_20/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/addÌ
+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02-
+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOpÍ
lstm_20/lstm_cell_38/BiasAddBiasAddlstm_20/lstm_cell_38/add:z:03lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/BiasAddz
lstm_20/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/lstm_cell_38/Const
$lstm_20/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_20/lstm_cell_38/split/split_dim
lstm_20/lstm_cell_38/splitSplit-lstm_20/lstm_cell_38/split/split_dim:output:0%lstm_20/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_20/lstm_cell_38/split
lstm_20/lstm_cell_38/SigmoidSigmoid#lstm_20/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/Sigmoid¢
lstm_20/lstm_cell_38/Sigmoid_1Sigmoid#lstm_20/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_1«
lstm_20/lstm_cell_38/mulMul"lstm_20/lstm_cell_38/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/mul¢
lstm_20/lstm_cell_38/Sigmoid_2Sigmoid#lstm_20/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_2·
lstm_20/lstm_cell_38/mul_1Mul lstm_20/lstm_cell_38/Sigmoid:y:0"lstm_20/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/mul_1±
lstm_20/lstm_cell_38/add_1AddV2lstm_20/lstm_cell_38/mul:z:0lstm_20/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/add_1¢
lstm_20/lstm_cell_38/Sigmoid_3Sigmoid#lstm_20/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_3
lstm_20/lstm_cell_38/Sigmoid_4Sigmoidlstm_20/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_4¹
lstm_20/lstm_cell_38/mul_2Mul"lstm_20/lstm_cell_38/Sigmoid_3:y:0"lstm_20/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/mul_2
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2'
%lstm_20/TensorArrayV2_1/element_shapeØ
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2_1^
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/time
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_20/while/maximum_iterationsz
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/while/loop_counteræ
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_38_matmul_readvariableop_resource5lstm_20_lstm_cell_38_matmul_1_readvariableop_resource4lstm_20_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_20_while_body_788686*%
condR
lstm_20_while_cond_788685*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
lstm_20/whileÅ
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2:
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02,
*lstm_20/TensorArrayV2Stack/TensorListStack
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_20/strided_slice_3/stack
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_20/strided_slice_3/stack_1
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_3/stack_2Ê
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
lstm_20/strided_slice_3
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose_1/permÅ
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/transpose_1v
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/runtime±
!dense_24/Tensordot/ReadVariableOpReadVariableOp*dense_24_tensordot_readvariableop_resource*
_output_shapes

:22*
dtype02#
!dense_24/Tensordot/ReadVariableOp|
dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_24/Tensordot/axes
dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_24/Tensordot/free{
dense_24/Tensordot/ShapeShapelstm_20/transpose_1:y:0*
T0*
_output_shapes
:2
dense_24/Tensordot/Shape
 dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_24/Tensordot/GatherV2/axisþ
dense_24/Tensordot/GatherV2GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/free:output:0)dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_24/Tensordot/GatherV2
"dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_24/Tensordot/GatherV2_1/axis
dense_24/Tensordot/GatherV2_1GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/axes:output:0+dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_24/Tensordot/GatherV2_1~
dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_24/Tensordot/Const¤
dense_24/Tensordot/ProdProd$dense_24/Tensordot/GatherV2:output:0!dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_24/Tensordot/Prod
dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_24/Tensordot/Const_1¬
dense_24/Tensordot/Prod_1Prod&dense_24/Tensordot/GatherV2_1:output:0#dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_24/Tensordot/Prod_1
dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_24/Tensordot/concat/axisÝ
dense_24/Tensordot/concatConcatV2 dense_24/Tensordot/free:output:0 dense_24/Tensordot/axes:output:0'dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_24/Tensordot/concat°
dense_24/Tensordot/stackPack dense_24/Tensordot/Prod:output:0"dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_24/Tensordot/stack¼
dense_24/Tensordot/transpose	Transposelstm_20/transpose_1:y:0"dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Tensordot/transposeÃ
dense_24/Tensordot/ReshapeReshape dense_24/Tensordot/transpose:y:0!dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_24/Tensordot/ReshapeÂ
dense_24/Tensordot/MatMulMatMul#dense_24/Tensordot/Reshape:output:0)dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Tensordot/MatMul
dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense_24/Tensordot/Const_2
 dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_24/Tensordot/concat_1/axisê
dense_24/Tensordot/concat_1ConcatV2$dense_24/Tensordot/GatherV2:output:0#dense_24/Tensordot/Const_2:output:0)dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_24/Tensordot/concat_1´
dense_24/TensordotReshape#dense_24/Tensordot/MatMul:product:0$dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Tensordot§
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_24/BiasAdd/ReadVariableOp«
dense_24/BiasAddBiasAdddense_24/Tensordot:output:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/BiasAdd
dense_24/SigmoidSigmoiddense_24/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Sigmoid±
!dense_25/Tensordot/ReadVariableOpReadVariableOp*dense_25_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02#
!dense_25/Tensordot/ReadVariableOp|
dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_25/Tensordot/axes
dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_25/Tensordot/freex
dense_25/Tensordot/ShapeShapedense_24/Sigmoid:y:0*
T0*
_output_shapes
:2
dense_25/Tensordot/Shape
 dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_25/Tensordot/GatherV2/axisþ
dense_25/Tensordot/GatherV2GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/free:output:0)dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_25/Tensordot/GatherV2
"dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_25/Tensordot/GatherV2_1/axis
dense_25/Tensordot/GatherV2_1GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/axes:output:0+dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_25/Tensordot/GatherV2_1~
dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_25/Tensordot/Const¤
dense_25/Tensordot/ProdProd$dense_25/Tensordot/GatherV2:output:0!dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_25/Tensordot/Prod
dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_25/Tensordot/Const_1¬
dense_25/Tensordot/Prod_1Prod&dense_25/Tensordot/GatherV2_1:output:0#dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_25/Tensordot/Prod_1
dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_25/Tensordot/concat/axisÝ
dense_25/Tensordot/concatConcatV2 dense_25/Tensordot/free:output:0 dense_25/Tensordot/axes:output:0'dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_25/Tensordot/concat°
dense_25/Tensordot/stackPack dense_25/Tensordot/Prod:output:0"dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_25/Tensordot/stack¹
dense_25/Tensordot/transpose	Transposedense_24/Sigmoid:y:0"dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_25/Tensordot/transposeÃ
dense_25/Tensordot/ReshapeReshape dense_25/Tensordot/transpose:y:0!dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_25/Tensordot/ReshapeÂ
dense_25/Tensordot/MatMulMatMul#dense_25/Tensordot/Reshape:output:0)dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/Tensordot/MatMul
dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_25/Tensordot/Const_2
 dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_25/Tensordot/concat_1/axisê
dense_25/Tensordot/concat_1ConcatV2$dense_25/Tensordot/GatherV2:output:0#dense_25/Tensordot/Const_2:output:0)dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_25/Tensordot/concat_1´
dense_25/TensordotReshape#dense_25/Tensordot/MatMul:product:0$dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/Tensordot§
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOp«
dense_25/BiasAddBiasAdddense_25/Tensordot:output:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/BiasAdd
IdentityIdentitydense_25/BiasAdd:output:0 ^dense_24/BiasAdd/ReadVariableOp"^dense_24/Tensordot/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp"^dense_25/Tensordot/ReadVariableOp,^lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_38/MatMul/ReadVariableOp-^lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp^lstm_20/while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2F
!dense_24/Tensordot/ReadVariableOp!dense_24/Tensordot/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2F
!dense_25/Tensordot/ReadVariableOp!dense_25/Tensordot/ReadVariableOp2Z
+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_38/MatMul/ReadVariableOp*lstm_20/lstm_cell_38/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
þ
while_body_788278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_38_matmul_readvariableop_resource_09
5while_lstm_cell_38_matmul_1_readvariableop_resource_08
4while_lstm_cell_38_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_38_matmul_readvariableop_resource7
3while_lstm_cell_38_matmul_1_readvariableop_resource6
2while_lstm_cell_38_biasadd_readvariableop_resource¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype02*
(while/lstm_cell_38/MatMul/ReadVariableOp×
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMulÏ
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02,
*while/lstm_cell_38/MatMul_1/ReadVariableOpÀ
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMul_1¸
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/addÈ
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype02+
)while/lstm_cell_38/BiasAdd/ReadVariableOpÅ
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/BiasAddv
while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_38/Const
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_38/split/split_dim
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
while/lstm_cell_38/split
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_1 
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_2¯
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0 while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_1©
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/add_1
while/lstm_cell_38/Sigmoid_3Sigmoid!while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_3
while/lstm_cell_38/Sigmoid_4Sigmoidwhile/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_4±
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_3:y:0 while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
«
Ã
while_cond_789616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_789616___redundant_placeholder04
0while_while_cond_789616___redundant_placeholder14
0while_while_cond_789616___redundant_placeholder24
0while_while_cond_789616___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Çb

&sequential_8_lstm_20_while_body_787306F
Bsequential_8_lstm_20_while_sequential_8_lstm_20_while_loop_counterL
Hsequential_8_lstm_20_while_sequential_8_lstm_20_while_maximum_iterations*
&sequential_8_lstm_20_while_placeholder,
(sequential_8_lstm_20_while_placeholder_1,
(sequential_8_lstm_20_while_placeholder_2,
(sequential_8_lstm_20_while_placeholder_3E
Asequential_8_lstm_20_while_sequential_8_lstm_20_strided_slice_1_0
}sequential_8_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_20_tensorarrayunstack_tensorlistfromtensor_0L
Hsequential_8_lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0N
Jsequential_8_lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0M
Isequential_8_lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0'
#sequential_8_lstm_20_while_identity)
%sequential_8_lstm_20_while_identity_1)
%sequential_8_lstm_20_while_identity_2)
%sequential_8_lstm_20_while_identity_3)
%sequential_8_lstm_20_while_identity_4)
%sequential_8_lstm_20_while_identity_5C
?sequential_8_lstm_20_while_sequential_8_lstm_20_strided_slice_1
{sequential_8_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_20_tensorarrayunstack_tensorlistfromtensorJ
Fsequential_8_lstm_20_while_lstm_cell_38_matmul_readvariableop_resourceL
Hsequential_8_lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resourceK
Gsequential_8_lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource¢>sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp¢=sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp¢?sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpí
Lsequential_8/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_8/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_8/lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_8_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_20_tensorarrayunstack_tensorlistfromtensor_0&sequential_8_lstm_20_while_placeholderUsequential_8/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_8/lstm_20/while/TensorArrayV2Read/TensorListGetItem
=sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpHsequential_8_lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype02?
=sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp«
.sequential_8/lstm_20/while/lstm_cell_38/MatMulMatMulEsequential_8/lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_8/lstm_20/while/lstm_cell_38/MatMul
?sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpJsequential_8_lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02A
?sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp
0sequential_8/lstm_20/while/lstm_cell_38/MatMul_1MatMul(sequential_8_lstm_20_while_placeholder_2Gsequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
0sequential_8/lstm_20/while/lstm_cell_38/MatMul_1
+sequential_8/lstm_20/while/lstm_cell_38/addAddV28sequential_8/lstm_20/while/lstm_cell_38/MatMul:product:0:sequential_8/lstm_20/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_8/lstm_20/while/lstm_cell_38/add
>sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpIsequential_8_lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype02@
>sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp
/sequential_8/lstm_20/while/lstm_cell_38/BiasAddBiasAdd/sequential_8/lstm_20/while/lstm_cell_38/add:z:0Fsequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_8/lstm_20/while/lstm_cell_38/BiasAdd 
-sequential_8/lstm_20/while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_8/lstm_20/while/lstm_cell_38/Const´
7sequential_8/lstm_20/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_8/lstm_20/while/lstm_cell_38/split/split_dimß
-sequential_8/lstm_20/while/lstm_cell_38/splitSplit@sequential_8/lstm_20/while/lstm_cell_38/split/split_dim:output:08sequential_8/lstm_20/while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2/
-sequential_8/lstm_20/while/lstm_cell_38/split×
/sequential_8/lstm_20/while/lstm_cell_38/SigmoidSigmoid6sequential_8/lstm_20/while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/sequential_8/lstm_20/while/lstm_cell_38/SigmoidÛ
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_1Sigmoid6sequential_8/lstm_20/while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ223
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_1ô
+sequential_8/lstm_20/while/lstm_cell_38/mulMul5sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_1:y:0(sequential_8_lstm_20_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_8/lstm_20/while/lstm_cell_38/mulÛ
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_2Sigmoid6sequential_8/lstm_20/while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ223
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_2
-sequential_8/lstm_20/while/lstm_cell_38/mul_1Mul3sequential_8/lstm_20/while/lstm_cell_38/Sigmoid:y:05sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-sequential_8/lstm_20/while/lstm_cell_38/mul_1ý
-sequential_8/lstm_20/while/lstm_cell_38/add_1AddV2/sequential_8/lstm_20/while/lstm_cell_38/mul:z:01sequential_8/lstm_20/while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-sequential_8/lstm_20/while/lstm_cell_38/add_1Û
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_3Sigmoid6sequential_8/lstm_20/while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ223
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_3Ö
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_4Sigmoid1sequential_8/lstm_20/while/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ223
1sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_4
-sequential_8/lstm_20/while/lstm_cell_38/mul_2Mul5sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_3:y:05sequential_8/lstm_20/while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-sequential_8/lstm_20/while/lstm_cell_38/mul_2É
?sequential_8/lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_8_lstm_20_while_placeholder_1&sequential_8_lstm_20_while_placeholder1sequential_8/lstm_20/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_8/lstm_20/while/TensorArrayV2Write/TensorListSetItem
 sequential_8/lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_8/lstm_20/while/add/y½
sequential_8/lstm_20/while/addAddV2&sequential_8_lstm_20_while_placeholder)sequential_8/lstm_20/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_8/lstm_20/while/add
"sequential_8/lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_8/lstm_20/while/add_1/yß
 sequential_8/lstm_20/while/add_1AddV2Bsequential_8_lstm_20_while_sequential_8_lstm_20_while_loop_counter+sequential_8/lstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_8/lstm_20/while/add_1à
#sequential_8/lstm_20/while/IdentityIdentity$sequential_8/lstm_20/while/add_1:z:0?^sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp>^sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp@^sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#sequential_8/lstm_20/while/Identity
%sequential_8/lstm_20/while/Identity_1IdentityHsequential_8_lstm_20_while_sequential_8_lstm_20_while_maximum_iterations?^sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp>^sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp@^sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_8/lstm_20/while/Identity_1â
%sequential_8/lstm_20/while/Identity_2Identity"sequential_8/lstm_20/while/add:z:0?^sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp>^sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp@^sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_8/lstm_20/while/Identity_2
%sequential_8/lstm_20/while/Identity_3IdentityOsequential_8/lstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp>^sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp@^sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_8/lstm_20/while/Identity_3
%sequential_8/lstm_20/while/Identity_4Identity1sequential_8/lstm_20/while/lstm_cell_38/mul_2:z:0?^sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp>^sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp@^sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_8/lstm_20/while/Identity_4
%sequential_8/lstm_20/while/Identity_5Identity1sequential_8/lstm_20/while/lstm_cell_38/add_1:z:0?^sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp>^sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp@^sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_8/lstm_20/while/Identity_5"S
#sequential_8_lstm_20_while_identity,sequential_8/lstm_20/while/Identity:output:0"W
%sequential_8_lstm_20_while_identity_1.sequential_8/lstm_20/while/Identity_1:output:0"W
%sequential_8_lstm_20_while_identity_2.sequential_8/lstm_20/while/Identity_2:output:0"W
%sequential_8_lstm_20_while_identity_3.sequential_8/lstm_20/while/Identity_3:output:0"W
%sequential_8_lstm_20_while_identity_4.sequential_8/lstm_20/while/Identity_4:output:0"W
%sequential_8_lstm_20_while_identity_5.sequential_8/lstm_20/while/Identity_5:output:0"
Gsequential_8_lstm_20_while_lstm_cell_38_biasadd_readvariableop_resourceIsequential_8_lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0"
Hsequential_8_lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resourceJsequential_8_lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0"
Fsequential_8_lstm_20_while_lstm_cell_38_matmul_readvariableop_resourceHsequential_8_lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0"
?sequential_8_lstm_20_while_sequential_8_lstm_20_strided_slice_1Asequential_8_lstm_20_while_sequential_8_lstm_20_strided_slice_1_0"ü
{sequential_8_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_20_tensorarrayunstack_tensorlistfromtensor}sequential_8_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2
>sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp>sequential_8/lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp2~
=sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp=sequential_8/lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp2
?sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp?sequential_8/lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
«
Ã
while_cond_789288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_789288___redundant_placeholder04
0while_while_cond_789288___redundant_placeholder14
0while_while_cond_789288___redundant_placeholder24
0while_while_cond_789288___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
³ 
ã
D__inference_dense_24_layer_call_and_return_conditional_losses_789755

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:22*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAdde
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ý
ß
H__inference_sequential_8_layer_call_and_return_conditional_losses_788532

inputs
lstm_20_788514
lstm_20_788516
lstm_20_788518
dense_24_788521
dense_24_788523
dense_25_788526
dense_25_788528
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCall¢lstm_20/StatefulPartitionedCall¥
lstm_20/StatefulPartitionedCallStatefulPartitionedCallinputslstm_20_788514lstm_20_788516lstm_20_788518*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7882102!
lstm_20/StatefulPartitionedCallº
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0dense_24_788521dense_24_788523*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_7884242"
 dense_24/StatefulPartitionedCall»
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_788526dense_25_788528*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_7884702"
 dense_25/StatefulPartitionedCallé
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
þ
while_body_788125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_38_matmul_readvariableop_resource_09
5while_lstm_cell_38_matmul_1_readvariableop_resource_08
4while_lstm_cell_38_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_38_matmul_readvariableop_resource7
3while_lstm_cell_38_matmul_1_readvariableop_resource6
2while_lstm_cell_38_biasadd_readvariableop_resource¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype02*
(while/lstm_cell_38/MatMul/ReadVariableOp×
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMulÏ
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02,
*while/lstm_cell_38/MatMul_1/ReadVariableOpÀ
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMul_1¸
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/addÈ
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype02+
)while/lstm_cell_38/BiasAdd/ReadVariableOpÅ
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/BiasAddv
while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_38/Const
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_38/split/split_dim
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
while/lstm_cell_38/split
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_1 
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_2¯
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0 while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_1©
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/add_1
while/lstm_cell_38/Sigmoid_3Sigmoid!while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_3
while/lstm_cell_38/Sigmoid_4Sigmoidwhile/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_4±
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_3:y:0 while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 


(__inference_lstm_20_layer_call_fn_789396

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7883632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
Ã
while_cond_789463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_789463___redundant_placeholder04
0while_while_cond_789463___redundant_placeholder14
0while_while_cond_789463___redundant_placeholder24
0while_while_cond_789463___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:


ã
lstm_20_while_cond_788891,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_788891___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_788891___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_788891___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_788891___redundant_placeholder3
lstm_20_while_identity

lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: 2
lstm_20/while/Lessu
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_20/while/Identity"9
lstm_20_while_identitylstm_20/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
%

while_body_787976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_38_788000_0
while_lstm_cell_38_788002_0
while_lstm_cell_38_788004_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_38_788000
while_lstm_cell_38_788002
while_lstm_cell_38_788004¢*while/lstm_cell_38/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_38_788000_0while_lstm_cell_38_788002_0while_lstm_cell_38_788004_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_7875502,
*while/lstm_cell_38/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_38/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ä
while/Identity_4Identity3while/lstm_cell_38/StatefulPartitionedCall:output:1+^while/lstm_cell_38/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4Ä
while/Identity_5Identity3while/lstm_cell_38/StatefulPartitionedCall:output:2+^while/lstm_cell_38/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_38_788000while_lstm_cell_38_788000_0"8
while_lstm_cell_38_788002while_lstm_cell_38_788002_0"8
while_lstm_cell_38_788004while_lstm_cell_38_788004_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2X
*while/lstm_cell_38/StatefulPartitionedCall*while/lstm_cell_38/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
»
Í
-__inference_lstm_cell_38_layer_call_fn_789903

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_7875502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
»
Í
-__inference_lstm_cell_38_layer_call_fn_789886

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_7875172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
ú
Ë
$__inference_signature_wrapper_788618
lstm_20_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_7874442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_20_input
ßD
Ü
C__inference_lstm_20_layer_call_and_return_conditional_losses_787913

inputs
lstm_cell_38_787831
lstm_cell_38_787833
lstm_cell_38_787835
identity¢$lstm_cell_38/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_38_787831lstm_cell_38_787833lstm_cell_38_787835*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_7875172&
$lstm_cell_38/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_38_787831lstm_cell_38_787833lstm_cell_38_787835*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_787844*
condR
while_cond_787843*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0%^lstm_cell_38/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_38/StatefulPartitionedCall$lstm_cell_38/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
þ
while_body_789136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_38_matmul_readvariableop_resource_09
5while_lstm_cell_38_matmul_1_readvariableop_resource_08
4while_lstm_cell_38_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_38_matmul_readvariableop_resource7
3while_lstm_cell_38_matmul_1_readvariableop_resource6
2while_lstm_cell_38_biasadd_readvariableop_resource¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype02*
(while/lstm_cell_38/MatMul/ReadVariableOp×
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMulÏ
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02,
*while/lstm_cell_38/MatMul_1/ReadVariableOpÀ
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMul_1¸
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/addÈ
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype02+
)while/lstm_cell_38/BiasAdd/ReadVariableOpÅ
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/BiasAddv
while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_38/Const
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_38/split/split_dim
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
while/lstm_cell_38/split
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_1 
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_2¯
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0 while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_1©
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/add_1
while/lstm_cell_38/Sigmoid_3Sigmoid!while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_3
while/lstm_cell_38/Sigmoid_4Sigmoidwhile/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_4±
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_3:y:0 while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
«
Ã
while_cond_788124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_788124___redundant_placeholder04
0while_while_cond_788124___redundant_placeholder14
0while_while_cond_788124___redundant_placeholder24
0while_while_cond_788124___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
[
ò
C__inference_lstm_20_layer_call_and_return_conditional_losses_788363

inputs/
+lstm_cell_38_matmul_readvariableop_resource1
-lstm_cell_38_matmul_1_readvariableop_resource0
,lstm_cell_38_biasadd_readvariableop_resource
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02$
"lstm_cell_38/MatMul/ReadVariableOp­
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul»
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02&
$lstm_cell_38/MatMul_1/ReadVariableOp©
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul_1 
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/add´
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02%
#lstm_cell_38/BiasAdd/ReadVariableOp­
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/BiasAddj
lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/Const~
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/split/split_dimó
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_cell_38/split
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_1
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_2
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_1
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/add_1
lstm_cell_38/Sigmoid_3Sigmoidlstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_3
lstm_cell_38/Sigmoid_4Sigmoidlstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_4
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_3:y:0lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_788278*
condR
while_cond_788277*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

(__inference_lstm_20_layer_call_fn_789713
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7879132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ì
~
)__inference_dense_24_layer_call_fn_789764

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_7884242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
«
Ã
while_cond_788277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_788277___redundant_placeholder04
0while_while_cond_788277___redundant_placeholder14
0while_while_cond_788277___redundant_placeholder24
0while_while_cond_788277___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
O
þ	
lstm_20_while_body_788892,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0A
=lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0@
<lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor=
9lstm_20_while_lstm_cell_38_matmul_readvariableop_resource?
;lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource>
:lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource¢1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp¢0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp¢2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpÓ
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_20/while/TensorArrayV2Read/TensorListGetItemá
0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype022
0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp÷
!lstm_20/while/lstm_cell_38/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_20/while/lstm_cell_38/MatMulç
2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype024
2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOpà
#lstm_20/while/lstm_cell_38/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#lstm_20/while/lstm_cell_38/MatMul_1Ø
lstm_20/while/lstm_cell_38/addAddV2+lstm_20/while/lstm_cell_38/MatMul:product:0-lstm_20/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_20/while/lstm_cell_38/addà
1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype023
1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOpå
"lstm_20/while/lstm_cell_38/BiasAddBiasAdd"lstm_20/while/lstm_cell_38/add:z:09lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_20/while/lstm_cell_38/BiasAdd
 lstm_20/while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_20/while/lstm_cell_38/Const
*lstm_20/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_20/while/lstm_cell_38/split/split_dim«
 lstm_20/while/lstm_cell_38/splitSplit3lstm_20/while/lstm_cell_38/split/split_dim:output:0+lstm_20/while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2"
 lstm_20/while/lstm_cell_38/split°
"lstm_20/while/lstm_cell_38/SigmoidSigmoid)lstm_20/while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_20/while/lstm_cell_38/Sigmoid´
$lstm_20/while/lstm_cell_38/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_1À
lstm_20/while/lstm_cell_38/mulMul(lstm_20/while/lstm_cell_38/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/while/lstm_cell_38/mul´
$lstm_20/while/lstm_cell_38/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_2Ï
 lstm_20/while/lstm_cell_38/mul_1Mul&lstm_20/while/lstm_cell_38/Sigmoid:y:0(lstm_20/while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_20/while/lstm_cell_38/mul_1É
 lstm_20/while/lstm_cell_38/add_1AddV2"lstm_20/while/lstm_cell_38/mul:z:0$lstm_20/while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_20/while/lstm_cell_38/add_1´
$lstm_20/while/lstm_cell_38/Sigmoid_3Sigmoid)lstm_20/while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_3¯
$lstm_20/while/lstm_cell_38/Sigmoid_4Sigmoid$lstm_20/while/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_20/while/lstm_cell_38/Sigmoid_4Ñ
 lstm_20/while/lstm_cell_38/mul_2Mul(lstm_20/while/lstm_cell_38/Sigmoid_3:y:0(lstm_20/while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_20/while/lstm_cell_38/mul_2
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_20/while/TensorArrayV2Write/TensorListSetIteml
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add/y
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/addp
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add_1/y
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/add_1
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity­
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations2^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_1
lstm_20/while/Identity_2Identitylstm_20/while/add:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_2Á
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_3´
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_38/mul_2:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/while/Identity_4´
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_38/add_1:z:02^lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/while/Identity_5"9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_38_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_38_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_38_matmul_readvariableop_resource;lstm_20_while_lstm_cell_38_matmul_readvariableop_resource_0"È
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2f
1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_38/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_38/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 

Í
-__inference_sequential_8_layer_call_fn_789068

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_7885722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ã
lstm_20_while_cond_788685,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_788685___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_788685___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_788685___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_788685___redundant_placeholder3
lstm_20_while_identity

lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: 2
lstm_20/while/Lessu
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_20/while/Identity"9
lstm_20_while_identitylstm_20/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
×[
ô
C__inference_lstm_20_layer_call_and_return_conditional_losses_789702
inputs_0/
+lstm_cell_38_matmul_readvariableop_resource1
-lstm_cell_38_matmul_1_readvariableop_resource0
,lstm_cell_38_biasadd_readvariableop_resource
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02$
"lstm_cell_38/MatMul/ReadVariableOp­
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul»
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02&
$lstm_cell_38/MatMul_1/ReadVariableOp©
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul_1 
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/add´
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02%
#lstm_cell_38/BiasAdd/ReadVariableOp­
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/BiasAddj
lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/Const~
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/split/split_dimó
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_cell_38/split
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_1
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_2
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_1
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/add_1
lstm_cell_38/Sigmoid_3Sigmoidlstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_3
lstm_cell_38/Sigmoid_4Sigmoidlstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_4
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_3:y:0lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_789617*
condR
while_cond_789616*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
IdentityIdentitytranspose_1:y:0$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


(__inference_lstm_20_layer_call_fn_789385

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7882102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
[
ò
C__inference_lstm_20_layer_call_and_return_conditional_losses_789374

inputs/
+lstm_cell_38_matmul_readvariableop_resource1
-lstm_cell_38_matmul_1_readvariableop_resource0
,lstm_cell_38_biasadd_readvariableop_resource
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02$
"lstm_cell_38/MatMul/ReadVariableOp­
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul»
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02&
$lstm_cell_38/MatMul_1/ReadVariableOp©
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul_1 
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/add´
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02%
#lstm_cell_38/BiasAdd/ReadVariableOp­
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/BiasAddj
lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/Const~
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/split/split_dimó
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_cell_38/split
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_1
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_2
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_1
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/add_1
lstm_cell_38/Sigmoid_3Sigmoidlstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_3
lstm_cell_38/Sigmoid_4Sigmoidlstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_4
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_3:y:0lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_789289*
condR
while_cond_789288*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý

!__inference__wrapped_model_787444
lstm_20_inputD
@sequential_8_lstm_20_lstm_cell_38_matmul_readvariableop_resourceF
Bsequential_8_lstm_20_lstm_cell_38_matmul_1_readvariableop_resourceE
Asequential_8_lstm_20_lstm_cell_38_biasadd_readvariableop_resource;
7sequential_8_dense_24_tensordot_readvariableop_resource9
5sequential_8_dense_24_biasadd_readvariableop_resource;
7sequential_8_dense_25_tensordot_readvariableop_resource9
5sequential_8_dense_25_biasadd_readvariableop_resource
identity¢,sequential_8/dense_24/BiasAdd/ReadVariableOp¢.sequential_8/dense_24/Tensordot/ReadVariableOp¢,sequential_8/dense_25/BiasAdd/ReadVariableOp¢.sequential_8/dense_25/Tensordot/ReadVariableOp¢8sequential_8/lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp¢7sequential_8/lstm_20/lstm_cell_38/MatMul/ReadVariableOp¢9sequential_8/lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp¢sequential_8/lstm_20/whileu
sequential_8/lstm_20/ShapeShapelstm_20_input*
T0*
_output_shapes
:2
sequential_8/lstm_20/Shape
(sequential_8/lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_8/lstm_20/strided_slice/stack¢
*sequential_8/lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_8/lstm_20/strided_slice/stack_1¢
*sequential_8/lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_8/lstm_20/strided_slice/stack_2à
"sequential_8/lstm_20/strided_sliceStridedSlice#sequential_8/lstm_20/Shape:output:01sequential_8/lstm_20/strided_slice/stack:output:03sequential_8/lstm_20/strided_slice/stack_1:output:03sequential_8/lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_8/lstm_20/strided_slice
 sequential_8/lstm_20/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22"
 sequential_8/lstm_20/zeros/mul/yÀ
sequential_8/lstm_20/zeros/mulMul+sequential_8/lstm_20/strided_slice:output:0)sequential_8/lstm_20/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_8/lstm_20/zeros/mul
!sequential_8/lstm_20/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_8/lstm_20/zeros/Less/y»
sequential_8/lstm_20/zeros/LessLess"sequential_8/lstm_20/zeros/mul:z:0*sequential_8/lstm_20/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_8/lstm_20/zeros/Less
#sequential_8/lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22%
#sequential_8/lstm_20/zeros/packed/1×
!sequential_8/lstm_20/zeros/packedPack+sequential_8/lstm_20/strided_slice:output:0,sequential_8/lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_8/lstm_20/zeros/packed
 sequential_8/lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_8/lstm_20/zeros/ConstÉ
sequential_8/lstm_20/zerosFill*sequential_8/lstm_20/zeros/packed:output:0)sequential_8/lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_8/lstm_20/zeros
"sequential_8/lstm_20/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22$
"sequential_8/lstm_20/zeros_1/mul/yÆ
 sequential_8/lstm_20/zeros_1/mulMul+sequential_8/lstm_20/strided_slice:output:0+sequential_8/lstm_20/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_8/lstm_20/zeros_1/mul
#sequential_8/lstm_20/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_8/lstm_20/zeros_1/Less/yÃ
!sequential_8/lstm_20/zeros_1/LessLess$sequential_8/lstm_20/zeros_1/mul:z:0,sequential_8/lstm_20/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_8/lstm_20/zeros_1/Less
%sequential_8/lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22'
%sequential_8/lstm_20/zeros_1/packed/1Ý
#sequential_8/lstm_20/zeros_1/packedPack+sequential_8/lstm_20/strided_slice:output:0.sequential_8/lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_8/lstm_20/zeros_1/packed
"sequential_8/lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_8/lstm_20/zeros_1/ConstÑ
sequential_8/lstm_20/zeros_1Fill,sequential_8/lstm_20/zeros_1/packed:output:0+sequential_8/lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_8/lstm_20/zeros_1
#sequential_8/lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_8/lstm_20/transpose/permÀ
sequential_8/lstm_20/transpose	Transposelstm_20_input,sequential_8/lstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_8/lstm_20/transpose
sequential_8/lstm_20/Shape_1Shape"sequential_8/lstm_20/transpose:y:0*
T0*
_output_shapes
:2
sequential_8/lstm_20/Shape_1¢
*sequential_8/lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_8/lstm_20/strided_slice_1/stack¦
,sequential_8/lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_20/strided_slice_1/stack_1¦
,sequential_8/lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_20/strided_slice_1/stack_2ì
$sequential_8/lstm_20/strided_slice_1StridedSlice%sequential_8/lstm_20/Shape_1:output:03sequential_8/lstm_20/strided_slice_1/stack:output:05sequential_8/lstm_20/strided_slice_1/stack_1:output:05sequential_8/lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_8/lstm_20/strided_slice_1¯
0sequential_8/lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_8/lstm_20/TensorArrayV2/element_shape
"sequential_8/lstm_20/TensorArrayV2TensorListReserve9sequential_8/lstm_20/TensorArrayV2/element_shape:output:0-sequential_8/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_8/lstm_20/TensorArrayV2é
Jsequential_8/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_8/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_8/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_8/lstm_20/transpose:y:0Ssequential_8/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_8/lstm_20/TensorArrayUnstack/TensorListFromTensor¢
*sequential_8/lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_8/lstm_20/strided_slice_2/stack¦
,sequential_8/lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_20/strided_slice_2/stack_1¦
,sequential_8/lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_20/strided_slice_2/stack_2ú
$sequential_8/lstm_20/strided_slice_2StridedSlice"sequential_8/lstm_20/transpose:y:03sequential_8/lstm_20/strided_slice_2/stack:output:05sequential_8/lstm_20/strided_slice_2/stack_1:output:05sequential_8/lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_8/lstm_20/strided_slice_2ô
7sequential_8/lstm_20/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp@sequential_8_lstm_20_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype029
7sequential_8/lstm_20/lstm_cell_38/MatMul/ReadVariableOp
(sequential_8/lstm_20/lstm_cell_38/MatMulMatMul-sequential_8/lstm_20/strided_slice_2:output:0?sequential_8/lstm_20/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_8/lstm_20/lstm_cell_38/MatMulú
9sequential_8/lstm_20/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpBsequential_8_lstm_20_lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02;
9sequential_8/lstm_20/lstm_cell_38/MatMul_1/ReadVariableOpý
*sequential_8/lstm_20/lstm_cell_38/MatMul_1MatMul#sequential_8/lstm_20/zeros:output:0Asequential_8/lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_8/lstm_20/lstm_cell_38/MatMul_1ô
%sequential_8/lstm_20/lstm_cell_38/addAddV22sequential_8/lstm_20/lstm_cell_38/MatMul:product:04sequential_8/lstm_20/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2'
%sequential_8/lstm_20/lstm_cell_38/addó
8sequential_8/lstm_20/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpAsequential_8_lstm_20_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02:
8sequential_8/lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp
)sequential_8/lstm_20/lstm_cell_38/BiasAddBiasAdd)sequential_8/lstm_20/lstm_cell_38/add:z:0@sequential_8/lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_8/lstm_20/lstm_cell_38/BiasAdd
'sequential_8/lstm_20/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_8/lstm_20/lstm_cell_38/Const¨
1sequential_8/lstm_20/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_8/lstm_20/lstm_cell_38/split/split_dimÇ
'sequential_8/lstm_20/lstm_cell_38/splitSplit:sequential_8/lstm_20/lstm_cell_38/split/split_dim:output:02sequential_8/lstm_20/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2)
'sequential_8/lstm_20/lstm_cell_38/splitÅ
)sequential_8/lstm_20/lstm_cell_38/SigmoidSigmoid0sequential_8/lstm_20/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_8/lstm_20/lstm_cell_38/SigmoidÉ
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_1Sigmoid0sequential_8/lstm_20/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_1ß
%sequential_8/lstm_20/lstm_cell_38/mulMul/sequential_8/lstm_20/lstm_cell_38/Sigmoid_1:y:0%sequential_8/lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_8/lstm_20/lstm_cell_38/mulÉ
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_2Sigmoid0sequential_8/lstm_20/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_2ë
'sequential_8/lstm_20/lstm_cell_38/mul_1Mul-sequential_8/lstm_20/lstm_cell_38/Sigmoid:y:0/sequential_8/lstm_20/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'sequential_8/lstm_20/lstm_cell_38/mul_1å
'sequential_8/lstm_20/lstm_cell_38/add_1AddV2)sequential_8/lstm_20/lstm_cell_38/mul:z:0+sequential_8/lstm_20/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'sequential_8/lstm_20/lstm_cell_38/add_1É
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_3Sigmoid0sequential_8/lstm_20/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_3Ä
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_4Sigmoid+sequential_8/lstm_20/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_8/lstm_20/lstm_cell_38/Sigmoid_4í
'sequential_8/lstm_20/lstm_cell_38/mul_2Mul/sequential_8/lstm_20/lstm_cell_38/Sigmoid_3:y:0/sequential_8/lstm_20/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'sequential_8/lstm_20/lstm_cell_38/mul_2¹
2sequential_8/lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   24
2sequential_8/lstm_20/TensorArrayV2_1/element_shape
$sequential_8/lstm_20/TensorArrayV2_1TensorListReserve;sequential_8/lstm_20/TensorArrayV2_1/element_shape:output:0-sequential_8/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_8/lstm_20/TensorArrayV2_1x
sequential_8/lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_8/lstm_20/time©
-sequential_8/lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_8/lstm_20/while/maximum_iterations
'sequential_8/lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_8/lstm_20/while/loop_counter©
sequential_8/lstm_20/whileWhile0sequential_8/lstm_20/while/loop_counter:output:06sequential_8/lstm_20/while/maximum_iterations:output:0"sequential_8/lstm_20/time:output:0-sequential_8/lstm_20/TensorArrayV2_1:handle:0#sequential_8/lstm_20/zeros:output:0%sequential_8/lstm_20/zeros_1:output:0-sequential_8/lstm_20/strided_slice_1:output:0Lsequential_8/lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_8_lstm_20_lstm_cell_38_matmul_readvariableop_resourceBsequential_8_lstm_20_lstm_cell_38_matmul_1_readvariableop_resourceAsequential_8_lstm_20_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_8_lstm_20_while_body_787306*2
cond*R(
&sequential_8_lstm_20_while_cond_787305*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
sequential_8/lstm_20/whileß
Esequential_8/lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2G
Esequential_8/lstm_20/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_8/lstm_20/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_8/lstm_20/while:output:3Nsequential_8/lstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype029
7sequential_8/lstm_20/TensorArrayV2Stack/TensorListStack«
*sequential_8/lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_8/lstm_20/strided_slice_3/stack¦
,sequential_8/lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_8/lstm_20/strided_slice_3/stack_1¦
,sequential_8/lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_8/lstm_20/strided_slice_3/stack_2
$sequential_8/lstm_20/strided_slice_3StridedSlice@sequential_8/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:03sequential_8/lstm_20/strided_slice_3/stack:output:05sequential_8/lstm_20/strided_slice_3/stack_1:output:05sequential_8/lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2&
$sequential_8/lstm_20/strided_slice_3£
%sequential_8/lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_8/lstm_20/transpose_1/permù
 sequential_8/lstm_20/transpose_1	Transpose@sequential_8/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_8/lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 sequential_8/lstm_20/transpose_1
sequential_8/lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_8/lstm_20/runtimeØ
.sequential_8/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_8_dense_24_tensordot_readvariableop_resource*
_output_shapes

:22*
dtype020
.sequential_8/dense_24/Tensordot/ReadVariableOp
$sequential_8/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_8/dense_24/Tensordot/axes
$sequential_8/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_8/dense_24/Tensordot/free¢
%sequential_8/dense_24/Tensordot/ShapeShape$sequential_8/lstm_20/transpose_1:y:0*
T0*
_output_shapes
:2'
%sequential_8/dense_24/Tensordot/Shape 
-sequential_8/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_8/dense_24/Tensordot/GatherV2/axis¿
(sequential_8/dense_24/Tensordot/GatherV2GatherV2.sequential_8/dense_24/Tensordot/Shape:output:0-sequential_8/dense_24/Tensordot/free:output:06sequential_8/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_8/dense_24/Tensordot/GatherV2¤
/sequential_8/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_8/dense_24/Tensordot/GatherV2_1/axisÅ
*sequential_8/dense_24/Tensordot/GatherV2_1GatherV2.sequential_8/dense_24/Tensordot/Shape:output:0-sequential_8/dense_24/Tensordot/axes:output:08sequential_8/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_8/dense_24/Tensordot/GatherV2_1
%sequential_8/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_8/dense_24/Tensordot/ConstØ
$sequential_8/dense_24/Tensordot/ProdProd1sequential_8/dense_24/Tensordot/GatherV2:output:0.sequential_8/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_8/dense_24/Tensordot/Prod
'sequential_8/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_8/dense_24/Tensordot/Const_1à
&sequential_8/dense_24/Tensordot/Prod_1Prod3sequential_8/dense_24/Tensordot/GatherV2_1:output:00sequential_8/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_8/dense_24/Tensordot/Prod_1
+sequential_8/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_8/dense_24/Tensordot/concat/axis
&sequential_8/dense_24/Tensordot/concatConcatV2-sequential_8/dense_24/Tensordot/free:output:0-sequential_8/dense_24/Tensordot/axes:output:04sequential_8/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_8/dense_24/Tensordot/concatä
%sequential_8/dense_24/Tensordot/stackPack-sequential_8/dense_24/Tensordot/Prod:output:0/sequential_8/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_8/dense_24/Tensordot/stackð
)sequential_8/dense_24/Tensordot/transpose	Transpose$sequential_8/lstm_20/transpose_1:y:0/sequential_8/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_8/dense_24/Tensordot/transpose÷
'sequential_8/dense_24/Tensordot/ReshapeReshape-sequential_8/dense_24/Tensordot/transpose:y:0.sequential_8/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2)
'sequential_8/dense_24/Tensordot/Reshapeö
&sequential_8/dense_24/Tensordot/MatMulMatMul0sequential_8/dense_24/Tensordot/Reshape:output:06sequential_8/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&sequential_8/dense_24/Tensordot/MatMul
'sequential_8/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22)
'sequential_8/dense_24/Tensordot/Const_2 
-sequential_8/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_8/dense_24/Tensordot/concat_1/axis«
(sequential_8/dense_24/Tensordot/concat_1ConcatV21sequential_8/dense_24/Tensordot/GatherV2:output:00sequential_8/dense_24/Tensordot/Const_2:output:06sequential_8/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_8/dense_24/Tensordot/concat_1è
sequential_8/dense_24/TensordotReshape0sequential_8/dense_24/Tensordot/MatMul:product:01sequential_8/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
sequential_8/dense_24/TensordotÎ
,sequential_8/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02.
,sequential_8/dense_24/BiasAdd/ReadVariableOpß
sequential_8/dense_24/BiasAddBiasAdd(sequential_8/dense_24/Tensordot:output:04sequential_8/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_8/dense_24/BiasAdd§
sequential_8/dense_24/SigmoidSigmoid&sequential_8/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_8/dense_24/SigmoidØ
.sequential_8/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_8_dense_25_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype020
.sequential_8/dense_25/Tensordot/ReadVariableOp
$sequential_8/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_8/dense_25/Tensordot/axes
$sequential_8/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_8/dense_25/Tensordot/free
%sequential_8/dense_25/Tensordot/ShapeShape!sequential_8/dense_24/Sigmoid:y:0*
T0*
_output_shapes
:2'
%sequential_8/dense_25/Tensordot/Shape 
-sequential_8/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_8/dense_25/Tensordot/GatherV2/axis¿
(sequential_8/dense_25/Tensordot/GatherV2GatherV2.sequential_8/dense_25/Tensordot/Shape:output:0-sequential_8/dense_25/Tensordot/free:output:06sequential_8/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_8/dense_25/Tensordot/GatherV2¤
/sequential_8/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_8/dense_25/Tensordot/GatherV2_1/axisÅ
*sequential_8/dense_25/Tensordot/GatherV2_1GatherV2.sequential_8/dense_25/Tensordot/Shape:output:0-sequential_8/dense_25/Tensordot/axes:output:08sequential_8/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_8/dense_25/Tensordot/GatherV2_1
%sequential_8/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_8/dense_25/Tensordot/ConstØ
$sequential_8/dense_25/Tensordot/ProdProd1sequential_8/dense_25/Tensordot/GatherV2:output:0.sequential_8/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_8/dense_25/Tensordot/Prod
'sequential_8/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_8/dense_25/Tensordot/Const_1à
&sequential_8/dense_25/Tensordot/Prod_1Prod3sequential_8/dense_25/Tensordot/GatherV2_1:output:00sequential_8/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_8/dense_25/Tensordot/Prod_1
+sequential_8/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_8/dense_25/Tensordot/concat/axis
&sequential_8/dense_25/Tensordot/concatConcatV2-sequential_8/dense_25/Tensordot/free:output:0-sequential_8/dense_25/Tensordot/axes:output:04sequential_8/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_8/dense_25/Tensordot/concatä
%sequential_8/dense_25/Tensordot/stackPack-sequential_8/dense_25/Tensordot/Prod:output:0/sequential_8/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_8/dense_25/Tensordot/stackí
)sequential_8/dense_25/Tensordot/transpose	Transpose!sequential_8/dense_24/Sigmoid:y:0/sequential_8/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_8/dense_25/Tensordot/transpose÷
'sequential_8/dense_25/Tensordot/ReshapeReshape-sequential_8/dense_25/Tensordot/transpose:y:0.sequential_8/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2)
'sequential_8/dense_25/Tensordot/Reshapeö
&sequential_8/dense_25/Tensordot/MatMulMatMul0sequential_8/dense_25/Tensordot/Reshape:output:06sequential_8/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_8/dense_25/Tensordot/MatMul
'sequential_8/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential_8/dense_25/Tensordot/Const_2 
-sequential_8/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_8/dense_25/Tensordot/concat_1/axis«
(sequential_8/dense_25/Tensordot/concat_1ConcatV21sequential_8/dense_25/Tensordot/GatherV2:output:00sequential_8/dense_25/Tensordot/Const_2:output:06sequential_8/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_8/dense_25/Tensordot/concat_1è
sequential_8/dense_25/TensordotReshape0sequential_8/dense_25/Tensordot/MatMul:product:01sequential_8/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_8/dense_25/TensordotÎ
,sequential_8/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_8/dense_25/BiasAdd/ReadVariableOpß
sequential_8/dense_25/BiasAddBiasAdd(sequential_8/dense_25/Tensordot:output:04sequential_8/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_8/dense_25/BiasAdd
IdentityIdentity&sequential_8/dense_25/BiasAdd:output:0-^sequential_8/dense_24/BiasAdd/ReadVariableOp/^sequential_8/dense_24/Tensordot/ReadVariableOp-^sequential_8/dense_25/BiasAdd/ReadVariableOp/^sequential_8/dense_25/Tensordot/ReadVariableOp9^sequential_8/lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp8^sequential_8/lstm_20/lstm_cell_38/MatMul/ReadVariableOp:^sequential_8/lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp^sequential_8/lstm_20/while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::2\
,sequential_8/dense_24/BiasAdd/ReadVariableOp,sequential_8/dense_24/BiasAdd/ReadVariableOp2`
.sequential_8/dense_24/Tensordot/ReadVariableOp.sequential_8/dense_24/Tensordot/ReadVariableOp2\
,sequential_8/dense_25/BiasAdd/ReadVariableOp,sequential_8/dense_25/BiasAdd/ReadVariableOp2`
.sequential_8/dense_25/Tensordot/ReadVariableOp.sequential_8/dense_25/Tensordot/ReadVariableOp2t
8sequential_8/lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp8sequential_8/lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp2r
7sequential_8/lstm_20/lstm_cell_38/MatMul/ReadVariableOp7sequential_8/lstm_20/lstm_cell_38/MatMul/ReadVariableOp2v
9sequential_8/lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp9sequential_8/lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp28
sequential_8/lstm_20/whilesequential_8/lstm_20/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_20_input
µ
Û
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_787550

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	È*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
ú±
÷
H__inference_sequential_8_layer_call_and_return_conditional_losses_789030

inputs7
3lstm_20_lstm_cell_38_matmul_readvariableop_resource9
5lstm_20_lstm_cell_38_matmul_1_readvariableop_resource8
4lstm_20_lstm_cell_38_biasadd_readvariableop_resource.
*dense_24_tensordot_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource.
*dense_25_tensordot_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource
identity¢dense_24/BiasAdd/ReadVariableOp¢!dense_24/Tensordot/ReadVariableOp¢dense_25/BiasAdd/ReadVariableOp¢!dense_25/Tensordot/ReadVariableOp¢+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp¢*lstm_20/lstm_cell_38/MatMul/ReadVariableOp¢,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp¢lstm_20/whileT
lstm_20/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_20/Shape
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice/stack
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_1
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_2
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slicel
lstm_20/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros/mul/y
lstm_20/zeros/mulMullstm_20/strided_slice:output:0lstm_20/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/mulo
lstm_20/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_20/zeros/Less/y
lstm_20/zeros/LessLesslstm_20/zeros/mul:z:0lstm_20/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/Lessr
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros/packed/1£
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros/packedo
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros/Const
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/zerosp
lstm_20/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros_1/mul/y
lstm_20/zeros_1/mulMullstm_20/strided_slice:output:0lstm_20/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/muls
lstm_20/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_20/zeros_1/Less/y
lstm_20/zeros_1/LessLesslstm_20/zeros_1/mul:z:0lstm_20/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/Lessv
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_20/zeros_1/packed/1©
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros_1/packeds
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros_1/Const
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/zeros_1
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose/perm
lstm_20/transpose	Transposeinputslstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_20/transposeg
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:2
lstm_20/Shape_1
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_1/stack
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_1
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_2
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slice_1
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_20/TensorArrayV2/element_shapeÒ
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2Ï
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_20/TensorArrayUnstack/TensorListFromTensor
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_2/stack
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_1
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_2¬
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_20/strided_slice_2Í
*lstm_20/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02,
*lstm_20/lstm_cell_38/MatMul/ReadVariableOpÍ
lstm_20/lstm_cell_38/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/MatMulÓ
,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02.
,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOpÉ
lstm_20/lstm_cell_38/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/MatMul_1À
lstm_20/lstm_cell_38/addAddV2%lstm_20/lstm_cell_38/MatMul:product:0'lstm_20/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/addÌ
+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02-
+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOpÍ
lstm_20/lstm_cell_38/BiasAddBiasAddlstm_20/lstm_cell_38/add:z:03lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_20/lstm_cell_38/BiasAddz
lstm_20/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/lstm_cell_38/Const
$lstm_20/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_20/lstm_cell_38/split/split_dim
lstm_20/lstm_cell_38/splitSplit-lstm_20/lstm_cell_38/split/split_dim:output:0%lstm_20/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_20/lstm_cell_38/split
lstm_20/lstm_cell_38/SigmoidSigmoid#lstm_20/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/Sigmoid¢
lstm_20/lstm_cell_38/Sigmoid_1Sigmoid#lstm_20/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_1«
lstm_20/lstm_cell_38/mulMul"lstm_20/lstm_cell_38/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/mul¢
lstm_20/lstm_cell_38/Sigmoid_2Sigmoid#lstm_20/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_2·
lstm_20/lstm_cell_38/mul_1Mul lstm_20/lstm_cell_38/Sigmoid:y:0"lstm_20/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/mul_1±
lstm_20/lstm_cell_38/add_1AddV2lstm_20/lstm_cell_38/mul:z:0lstm_20/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/add_1¢
lstm_20/lstm_cell_38/Sigmoid_3Sigmoid#lstm_20/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_3
lstm_20/lstm_cell_38/Sigmoid_4Sigmoidlstm_20/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_20/lstm_cell_38/Sigmoid_4¹
lstm_20/lstm_cell_38/mul_2Mul"lstm_20/lstm_cell_38/Sigmoid_3:y:0"lstm_20/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/lstm_cell_38/mul_2
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2'
%lstm_20/TensorArrayV2_1/element_shapeØ
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2_1^
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/time
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_20/while/maximum_iterationsz
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/while/loop_counteræ
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_38_matmul_readvariableop_resource5lstm_20_lstm_cell_38_matmul_1_readvariableop_resource4lstm_20_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_20_while_body_788892*%
condR
lstm_20_while_cond_788891*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
lstm_20/whileÅ
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2:
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02,
*lstm_20/TensorArrayV2Stack/TensorListStack
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_20/strided_slice_3/stack
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_20/strided_slice_3/stack_1
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_3/stack_2Ê
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
lstm_20/strided_slice_3
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose_1/permÅ
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_20/transpose_1v
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/runtime±
!dense_24/Tensordot/ReadVariableOpReadVariableOp*dense_24_tensordot_readvariableop_resource*
_output_shapes

:22*
dtype02#
!dense_24/Tensordot/ReadVariableOp|
dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_24/Tensordot/axes
dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_24/Tensordot/free{
dense_24/Tensordot/ShapeShapelstm_20/transpose_1:y:0*
T0*
_output_shapes
:2
dense_24/Tensordot/Shape
 dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_24/Tensordot/GatherV2/axisþ
dense_24/Tensordot/GatherV2GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/free:output:0)dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_24/Tensordot/GatherV2
"dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_24/Tensordot/GatherV2_1/axis
dense_24/Tensordot/GatherV2_1GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/axes:output:0+dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_24/Tensordot/GatherV2_1~
dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_24/Tensordot/Const¤
dense_24/Tensordot/ProdProd$dense_24/Tensordot/GatherV2:output:0!dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_24/Tensordot/Prod
dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_24/Tensordot/Const_1¬
dense_24/Tensordot/Prod_1Prod&dense_24/Tensordot/GatherV2_1:output:0#dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_24/Tensordot/Prod_1
dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_24/Tensordot/concat/axisÝ
dense_24/Tensordot/concatConcatV2 dense_24/Tensordot/free:output:0 dense_24/Tensordot/axes:output:0'dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_24/Tensordot/concat°
dense_24/Tensordot/stackPack dense_24/Tensordot/Prod:output:0"dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_24/Tensordot/stack¼
dense_24/Tensordot/transpose	Transposelstm_20/transpose_1:y:0"dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Tensordot/transposeÃ
dense_24/Tensordot/ReshapeReshape dense_24/Tensordot/transpose:y:0!dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_24/Tensordot/ReshapeÂ
dense_24/Tensordot/MatMulMatMul#dense_24/Tensordot/Reshape:output:0)dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Tensordot/MatMul
dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense_24/Tensordot/Const_2
 dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_24/Tensordot/concat_1/axisê
dense_24/Tensordot/concat_1ConcatV2$dense_24/Tensordot/GatherV2:output:0#dense_24/Tensordot/Const_2:output:0)dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_24/Tensordot/concat_1´
dense_24/TensordotReshape#dense_24/Tensordot/MatMul:product:0$dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Tensordot§
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_24/BiasAdd/ReadVariableOp«
dense_24/BiasAddBiasAdddense_24/Tensordot:output:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/BiasAdd
dense_24/SigmoidSigmoiddense_24/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_24/Sigmoid±
!dense_25/Tensordot/ReadVariableOpReadVariableOp*dense_25_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02#
!dense_25/Tensordot/ReadVariableOp|
dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_25/Tensordot/axes
dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_25/Tensordot/freex
dense_25/Tensordot/ShapeShapedense_24/Sigmoid:y:0*
T0*
_output_shapes
:2
dense_25/Tensordot/Shape
 dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_25/Tensordot/GatherV2/axisþ
dense_25/Tensordot/GatherV2GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/free:output:0)dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_25/Tensordot/GatherV2
"dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_25/Tensordot/GatherV2_1/axis
dense_25/Tensordot/GatherV2_1GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/axes:output:0+dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_25/Tensordot/GatherV2_1~
dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_25/Tensordot/Const¤
dense_25/Tensordot/ProdProd$dense_25/Tensordot/GatherV2:output:0!dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_25/Tensordot/Prod
dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_25/Tensordot/Const_1¬
dense_25/Tensordot/Prod_1Prod&dense_25/Tensordot/GatherV2_1:output:0#dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_25/Tensordot/Prod_1
dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_25/Tensordot/concat/axisÝ
dense_25/Tensordot/concatConcatV2 dense_25/Tensordot/free:output:0 dense_25/Tensordot/axes:output:0'dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_25/Tensordot/concat°
dense_25/Tensordot/stackPack dense_25/Tensordot/Prod:output:0"dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_25/Tensordot/stack¹
dense_25/Tensordot/transpose	Transposedense_24/Sigmoid:y:0"dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_25/Tensordot/transposeÃ
dense_25/Tensordot/ReshapeReshape dense_25/Tensordot/transpose:y:0!dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_25/Tensordot/ReshapeÂ
dense_25/Tensordot/MatMulMatMul#dense_25/Tensordot/Reshape:output:0)dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/Tensordot/MatMul
dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_25/Tensordot/Const_2
 dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_25/Tensordot/concat_1/axisê
dense_25/Tensordot/concat_1ConcatV2$dense_25/Tensordot/GatherV2:output:0#dense_25/Tensordot/Const_2:output:0)dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_25/Tensordot/concat_1´
dense_25/TensordotReshape#dense_25/Tensordot/MatMul:product:0$dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/Tensordot§
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOp«
dense_25/BiasAddBiasAdddense_25/Tensordot:output:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_25/BiasAdd
IdentityIdentitydense_25/BiasAdd:output:0 ^dense_24/BiasAdd/ReadVariableOp"^dense_24/Tensordot/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp"^dense_25/Tensordot/ReadVariableOp,^lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_38/MatMul/ReadVariableOp-^lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp^lstm_20/while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2F
!dense_24/Tensordot/ReadVariableOp!dense_24/Tensordot/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2F
!dense_25/Tensordot/ReadVariableOp!dense_25/Tensordot/ReadVariableOp2Z
+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_38/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_38/MatMul/ReadVariableOp*lstm_20/lstm_cell_38/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_38/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
[
ò
C__inference_lstm_20_layer_call_and_return_conditional_losses_788210

inputs/
+lstm_cell_38_matmul_readvariableop_resource1
-lstm_cell_38_matmul_1_readvariableop_resource0
,lstm_cell_38_biasadd_readvariableop_resource
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02$
"lstm_cell_38/MatMul/ReadVariableOp­
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul»
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02&
$lstm_cell_38/MatMul_1/ReadVariableOp©
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul_1 
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/add´
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02%
#lstm_cell_38/BiasAdd/ReadVariableOp­
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/BiasAddj
lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/Const~
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/split/split_dimó
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_cell_38/split
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_1
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_2
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_1
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/add_1
lstm_cell_38/Sigmoid_3Sigmoidlstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_3
lstm_cell_38/Sigmoid_4Sigmoidlstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_4
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_3:y:0lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_788125*
condR
while_cond_788124*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×[
ô
C__inference_lstm_20_layer_call_and_return_conditional_losses_789549
inputs_0/
+lstm_cell_38_matmul_readvariableop_resource1
-lstm_cell_38_matmul_1_readvariableop_resource0
,lstm_cell_38_biasadd_readvariableop_resource
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype02$
"lstm_cell_38/MatMul/ReadVariableOp­
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul»
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02&
$lstm_cell_38/MatMul_1/ReadVariableOp©
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/MatMul_1 
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/add´
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02%
#lstm_cell_38/BiasAdd/ReadVariableOp­
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_38/BiasAddj
lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/Const~
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_38/split/split_dimó
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
lstm_cell_38/split
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_1
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_2
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_1
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/add_1
lstm_cell_38/Sigmoid_3Sigmoidlstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_3
lstm_cell_38/Sigmoid_4Sigmoidlstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/Sigmoid_4
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_3:y:0lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_38/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_789464*
condR
while_cond_789463*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
IdentityIdentitytranspose_1:y:0$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
C
þ
while_body_789464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_38_matmul_readvariableop_resource_09
5while_lstm_cell_38_matmul_1_readvariableop_resource_08
4while_lstm_cell_38_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_38_matmul_readvariableop_resource7
3while_lstm_cell_38_matmul_1_readvariableop_resource6
2while_lstm_cell_38_biasadd_readvariableop_resource¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype02*
(while/lstm_cell_38/MatMul/ReadVariableOp×
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMulÏ
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02,
*while/lstm_cell_38/MatMul_1/ReadVariableOpÀ
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMul_1¸
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/addÈ
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype02+
)while/lstm_cell_38/BiasAdd/ReadVariableOpÅ
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/BiasAddv
while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_38/Const
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_38/split/split_dim
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
while/lstm_cell_38/split
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_1 
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_2¯
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0 while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_1©
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/add_1
while/lstm_cell_38/Sigmoid_3Sigmoid!while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_3
while/lstm_cell_38/Sigmoid_4Sigmoidwhile/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_4±
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_3:y:0 while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
µ
Û
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_787517

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	È*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
G

__inference__traced_save_790022
file_prefix.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_20_lstm_cell_38_kernel_read_readvariableopD
@savev2_lstm_20_lstm_cell_38_recurrent_kernel_read_readvariableop8
4savev2_lstm_20_lstm_cell_38_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_38_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_38_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_38_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_38_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_38_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_38_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¨
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*º
value°B­!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÊ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesð
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_20_lstm_cell_38_kernel_read_readvariableop@savev2_lstm_20_lstm_cell_38_recurrent_kernel_read_readvariableop4savev2_lstm_20_lstm_cell_38_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop=savev2_adam_lstm_20_lstm_cell_38_kernel_m_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_38_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_20_lstm_cell_38_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop=savev2_adam_lstm_20_lstm_cell_38_kernel_v_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_38_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_20_lstm_cell_38_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*æ
_input_shapesÔ
Ñ: :22:2:2:: : : : : :	È:	2È:È: : : : : : :22:2:2::	È:	2È:È:22:2:2::	È:	2È:È: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	È:%!

_output_shapes
:	2È:!

_output_shapes	
:È:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	È:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	È:%!

_output_shapes
:	2È:! 

_output_shapes	
:È:!

_output_shapes
: 
³ 
ã
D__inference_dense_24_layer_call_and_return_conditional_losses_788424

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:22*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAdde
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

æ
H__inference_sequential_8_layer_call_and_return_conditional_losses_788487
lstm_20_input
lstm_20_788386
lstm_20_788388
lstm_20_788390
dense_24_788435
dense_24_788437
dense_25_788481
dense_25_788483
identity¢ dense_24/StatefulPartitionedCall¢ dense_25/StatefulPartitionedCall¢lstm_20/StatefulPartitionedCall¬
lstm_20/StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputlstm_20_788386lstm_20_788388lstm_20_788390*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7882102!
lstm_20/StatefulPartitionedCallº
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0dense_24_788435dense_24_788437*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_7884242"
 dense_24/StatefulPartitionedCall»
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_788481dense_25_788483*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_7884702"
 dense_25/StatefulPartitionedCallé
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_20_input
%

while_body_787844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_38_787868_0
while_lstm_cell_38_787870_0
while_lstm_cell_38_787872_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_38_787868
while_lstm_cell_38_787870
while_lstm_cell_38_787872¢*while/lstm_cell_38/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_38_787868_0while_lstm_cell_38_787870_0while_lstm_cell_38_787872_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_7875172,
*while/lstm_cell_38/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_38/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_38/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ä
while/Identity_4Identity3while/lstm_cell_38/StatefulPartitionedCall:output:1+^while/lstm_cell_38/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4Ä
while/Identity_5Identity3while/lstm_cell_38/StatefulPartitionedCall:output:2+^while/lstm_cell_38/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_38_787868while_lstm_cell_38_787868_0"8
while_lstm_cell_38_787870while_lstm_cell_38_787870_0"8
while_lstm_cell_38_787872while_lstm_cell_38_787872_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2X
*while/lstm_cell_38/StatefulPartitionedCall*while/lstm_cell_38/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
µ

(__inference_lstm_20_layer_call_fn_789724
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_7880452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
«
Ã
while_cond_787843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_787843___redundant_placeholder04
0while_while_cond_787843___redundant_placeholder14
0while_while_cond_787843___redundant_placeholder24
0while_while_cond_787843___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
C
þ
while_body_789289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_38_matmul_readvariableop_resource_09
5while_lstm_cell_38_matmul_1_readvariableop_resource_08
4while_lstm_cell_38_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_38_matmul_readvariableop_resource7
3while_lstm_cell_38_matmul_1_readvariableop_resource6
2while_lstm_cell_38_biasadd_readvariableop_resource¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype02*
(while/lstm_cell_38/MatMul/ReadVariableOp×
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMulÏ
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02,
*while/lstm_cell_38/MatMul_1/ReadVariableOpÀ
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMul_1¸
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/addÈ
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype02+
)while/lstm_cell_38/BiasAdd/ReadVariableOpÅ
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/BiasAddv
while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_38/Const
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_38/split/split_dim
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
while/lstm_cell_38/split
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_1 
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_2¯
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0 while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_1©
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/add_1
while/lstm_cell_38/Sigmoid_3Sigmoid!while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_3
while/lstm_cell_38/Sigmoid_4Sigmoidwhile/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_4±
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_3:y:0 while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
«
Ã
while_cond_789135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_789135___redundant_placeholder04
0while_while_cond_789135___redundant_placeholder14
0while_while_cond_789135___redundant_placeholder24
0while_while_cond_789135___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:

Í
-__inference_sequential_8_layer_call_fn_789049

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_7885322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ:::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
þ
while_body_789617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_38_matmul_readvariableop_resource_09
5while_lstm_cell_38_matmul_1_readvariableop_resource_08
4while_lstm_cell_38_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_38_matmul_readvariableop_resource7
3while_lstm_cell_38_matmul_1_readvariableop_resource6
2while_lstm_cell_38_biasadd_readvariableop_resource¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	È*
dtype02*
(while/lstm_cell_38/MatMul/ReadVariableOp×
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMulÏ
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02,
*while/lstm_cell_38/MatMul_1/ReadVariableOpÀ
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/MatMul_1¸
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/addÈ
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype02+
)while/lstm_cell_38/BiasAdd/ReadVariableOpÅ
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_38/BiasAddv
while/lstm_cell_38/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_38/Const
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_38/split/split_dim
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split2
while/lstm_cell_38/split
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_1 
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_2¯
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0 while/lstm_cell_38/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_1©
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/add_1
while/lstm_cell_38/Sigmoid_3Sigmoid!while/lstm_cell_38/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_3
while/lstm_cell_38/Sigmoid_4Sigmoidwhile/lstm_cell_38/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/Sigmoid_4±
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_3:y:0 while/lstm_cell_38/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_38/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: "±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
K
lstm_20_input:
serving_default_lstm_20_input:0ÿÿÿÿÿÿÿÿÿ@
dense_254
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:À
¶*
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
a__call__
*b&call_and_return_all_conditional_losses
c_default_save_signature"ö'
_tf_keras_sequential×'{"class_name": "Sequential", "name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 17]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_20_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_20", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 17]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 17]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 17]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_20_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_20", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Á

cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
d__call__
*e&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerú	{"class_name": "LSTM", "name": "lstm_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_20", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 17]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 17]}}
ù

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"Ô
_tf_keras_layerº{"class_name": "Dense", "name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 50]}}
ø

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h__call__
*i&call_and_return_all_conditional_losses"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 50]}}
Ñ
iter

beta_1

beta_2
	decay
 learning_ratemSmTmUmV!mW"mX#mYvZv[v\v]!v^"v_#v`"
	optimizer
Q
!0
"1
#2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
!0
"1
#2
3
4
5
6"
trackable_list_wrapper
Ê
trainable_variables
$layer_metrics
%layer_regularization_losses
regularization_losses

&layers
	variables
'metrics
(non_trainable_variables
a__call__
c_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
jserving_default"
signature_map
­

!kernel
"recurrent_kernel
#bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
k__call__
*l&call_and_return_all_conditional_losses"ò
_tf_keras_layerØ{"class_name": "LSTMCell", "name": "lstm_cell_38", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_38", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
¹
trainable_variables
-layer_metrics

.states
/layer_regularization_losses
regularization_losses

0layers
	variables
1metrics
2non_trainable_variables
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
!:222dense_24/kernel
:22dense_24/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
trainable_variables
3layer_metrics
4non_trainable_variables
5layer_regularization_losses
regularization_losses
	variables
6metrics

7layers
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
!:22dense_25/kernel
:2dense_25/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
trainable_variables
8layer_metrics
9non_trainable_variables
:layer_regularization_losses
regularization_losses
	variables
;metrics

<layers
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	È2lstm_20/lstm_cell_38/kernel
8:6	2È2%lstm_20/lstm_cell_38/recurrent_kernel
(:&È2lstm_20/lstm_cell_38/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
­
)trainable_variables
@layer_metrics
Anon_trainable_variables
Blayer_regularization_losses
*regularization_losses
+	variables
Cmetrics

Dlayers
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
»
	Etotal
	Fcount
G	variables
H	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}

	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api"Ð
_tf_keras_metricµ{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}
ô
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api"­
_tf_keras_metric{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
E0
F1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
&:$222Adam/dense_24/kernel/m
 :22Adam/dense_24/bias/m
&:$22Adam/dense_25/kernel/m
 :2Adam/dense_25/bias/m
3:1	È2"Adam/lstm_20/lstm_cell_38/kernel/m
=:;	2È2,Adam/lstm_20/lstm_cell_38/recurrent_kernel/m
-:+È2 Adam/lstm_20/lstm_cell_38/bias/m
&:$222Adam/dense_24/kernel/v
 :22Adam/dense_24/bias/v
&:$22Adam/dense_25/kernel/v
 :2Adam/dense_25/bias/v
3:1	È2"Adam/lstm_20/lstm_cell_38/kernel/v
=:;	2È2,Adam/lstm_20/lstm_cell_38/recurrent_kernel/v
-:+È2 Adam/lstm_20/lstm_cell_38/bias/v
2ÿ
-__inference_sequential_8_layer_call_fn_789049
-__inference_sequential_8_layer_call_fn_788549
-__inference_sequential_8_layer_call_fn_788589
-__inference_sequential_8_layer_call_fn_789068À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_8_layer_call_and_return_conditional_losses_788508
H__inference_sequential_8_layer_call_and_return_conditional_losses_788487
H__inference_sequential_8_layer_call_and_return_conditional_losses_789030
H__inference_sequential_8_layer_call_and_return_conditional_losses_788824À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
é2æ
!__inference__wrapped_model_787444À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
lstm_20_inputÿÿÿÿÿÿÿÿÿ
2
(__inference_lstm_20_layer_call_fn_789713
(__inference_lstm_20_layer_call_fn_789385
(__inference_lstm_20_layer_call_fn_789724
(__inference_lstm_20_layer_call_fn_789396Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_20_layer_call_and_return_conditional_losses_789549
C__inference_lstm_20_layer_call_and_return_conditional_losses_789221
C__inference_lstm_20_layer_call_and_return_conditional_losses_789374
C__inference_lstm_20_layer_call_and_return_conditional_losses_789702Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_24_layer_call_fn_789764¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_24_layer_call_and_return_conditional_losses_789755¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_25_layer_call_fn_789803¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_25_layer_call_and_return_conditional_losses_789794¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÑBÎ
$__inference_signature_wrapper_788618lstm_20_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¢2
-__inference_lstm_cell_38_layer_call_fn_789886
-__inference_lstm_cell_38_layer_call_fn_789903¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_789869
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_789836¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 £
!__inference__wrapped_model_787444~!"#:¢7
0¢-
+(
lstm_20_inputÿÿÿÿÿÿÿÿÿ
ª "7ª4
2
dense_25&#
dense_25ÿÿÿÿÿÿÿÿÿ¬
D__inference_dense_24_layer_call_and_return_conditional_losses_789755d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 
)__inference_dense_24_layer_call_fn_789764W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ2¬
D__inference_dense_25_layer_call_and_return_conditional_losses_789794d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dense_25_layer_call_fn_789803W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ¸
C__inference_lstm_20_layer_call_and_return_conditional_losses_789221q!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ¸
C__inference_lstm_20_layer_call_and_return_conditional_losses_789374q!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 Ò
C__inference_lstm_20_layer_call_and_return_conditional_losses_789549!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 Ò
C__inference_lstm_20_layer_call_and_return_conditional_losses_789702!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
(__inference_lstm_20_layer_call_fn_789385d!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2
(__inference_lstm_20_layer_call_fn_789396d!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2©
(__inference_lstm_20_layer_call_fn_789713}!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2©
(__inference_lstm_20_layer_call_fn_789724}!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2Ê
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_789836ý!"#¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 Ê
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_789869ý!"#¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 
-__inference_lstm_cell_38_layer_call_fn_789886í!"#¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2
-__inference_lstm_cell_38_layer_call_fn_789903í!"#¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2Ä
H__inference_sequential_8_layer_call_and_return_conditional_losses_788487x!"#B¢?
8¢5
+(
lstm_20_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ä
H__inference_sequential_8_layer_call_and_return_conditional_losses_788508x!"#B¢?
8¢5
+(
lstm_20_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ½
H__inference_sequential_8_layer_call_and_return_conditional_losses_788824q!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ½
H__inference_sequential_8_layer_call_and_return_conditional_losses_789030q!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_8_layer_call_fn_788549k!"#B¢?
8¢5
+(
lstm_20_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_8_layer_call_fn_788589k!"#B¢?
8¢5
+(
lstm_20_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_8_layer_call_fn_789049d!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_8_layer_call_fn_789068d!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¸
$__inference_signature_wrapper_788618!"#K¢H
¢ 
Aª>
<
lstm_20_input+(
lstm_20_inputÿÿÿÿÿÿÿÿÿ"7ª4
2
dense_25&#
dense_25ÿÿÿÿÿÿÿÿÿ