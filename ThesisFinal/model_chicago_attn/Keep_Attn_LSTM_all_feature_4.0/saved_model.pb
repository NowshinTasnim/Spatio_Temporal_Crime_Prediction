??
?!?!
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
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
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
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
9
	IdentityN

input2T
output2T"
T
list(type)(0
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
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
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
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.6.02v2.6.0-0-g919f693420e8߂
?
Attention/Attention_Mul_WaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameAttention/Attention_Mul_Wa
?
.Attention/Attention_Mul_Wa/Read/ReadVariableOpReadVariableOpAttention/Attention_Mul_Wa* 
_output_shapes
:
??*
dtype0
?
Attention/Attention_Mul_baVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAttention/Attention_Mul_ba
?
.Attention/Attention_Mul_ba/Read/ReadVariableOpReadVariableOpAttention/Attention_Mul_ba*
_output_shapes
:*
dtype0
?
TimeDisDense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*%
shared_nameTimeDisDense1/kernel
~
(TimeDisDense1/kernel/Read/ReadVariableOpReadVariableOpTimeDisDense1/kernel*
_output_shapes
:	?@*
dtype0
|
TimeDisDense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameTimeDisDense1/bias
u
&TimeDisDense1/bias/Read/ReadVariableOpReadVariableOpTimeDisDense1/bias*
_output_shapes
:@*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
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
?
LSTM/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameLSTM/lstm_cell/kernel
?
)LSTM/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpLSTM/lstm_cell/kernel*
_output_shapes
:	?*
dtype0
?
LSTM/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*0
shared_name!LSTM/lstm_cell/recurrent_kernel
?
3LSTM/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpLSTM/lstm_cell/recurrent_kernel* 
_output_shapes
:
??*
dtype0

LSTM/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameLSTM/lstm_cell/bias
x
'LSTM/lstm_cell/bias/Read/ReadVariableOpReadVariableOpLSTM/lstm_cell/bias*
_output_shapes	
:?*
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
?
!Adam/Attention/Attention_Mul_Wa/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*2
shared_name#!Adam/Attention/Attention_Mul_Wa/m
?
5Adam/Attention/Attention_Mul_Wa/m/Read/ReadVariableOpReadVariableOp!Adam/Attention/Attention_Mul_Wa/m* 
_output_shapes
:
??*
dtype0
?
!Adam/Attention/Attention_Mul_ba/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/Attention/Attention_Mul_ba/m
?
5Adam/Attention/Attention_Mul_ba/m/Read/ReadVariableOpReadVariableOp!Adam/Attention/Attention_Mul_ba/m*
_output_shapes
:*
dtype0
?
Adam/TimeDisDense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*,
shared_nameAdam/TimeDisDense1/kernel/m
?
/Adam/TimeDisDense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/TimeDisDense1/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/TimeDisDense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/TimeDisDense1/bias/m
?
-Adam/TimeDisDense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/TimeDisDense1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/LSTM/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*-
shared_nameAdam/LSTM/lstm_cell/kernel/m
?
0Adam/LSTM/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/LSTM/lstm_cell/kernel/m*
_output_shapes
:	?*
dtype0
?
&Adam/LSTM/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/LSTM/lstm_cell/recurrent_kernel/m
?
:Adam/LSTM/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/LSTM/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/LSTM/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/LSTM/lstm_cell/bias/m
?
.Adam/LSTM/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/LSTM/lstm_cell/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/Attention/Attention_Mul_Wa/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*2
shared_name#!Adam/Attention/Attention_Mul_Wa/v
?
5Adam/Attention/Attention_Mul_Wa/v/Read/ReadVariableOpReadVariableOp!Adam/Attention/Attention_Mul_Wa/v* 
_output_shapes
:
??*
dtype0
?
!Adam/Attention/Attention_Mul_ba/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/Attention/Attention_Mul_ba/v
?
5Adam/Attention/Attention_Mul_ba/v/Read/ReadVariableOpReadVariableOp!Adam/Attention/Attention_Mul_ba/v*
_output_shapes
:*
dtype0
?
Adam/TimeDisDense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*,
shared_nameAdam/TimeDisDense1/kernel/v
?
/Adam/TimeDisDense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/TimeDisDense1/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/TimeDisDense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/TimeDisDense1/bias/v
?
-Adam/TimeDisDense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/TimeDisDense1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/LSTM/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*-
shared_nameAdam/LSTM/lstm_cell/kernel/v
?
0Adam/LSTM/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/LSTM/lstm_cell/kernel/v*
_output_shapes
:	?*
dtype0
?
&Adam/LSTM/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/LSTM/lstm_cell/recurrent_kernel/v
?
:Adam/LSTM/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/LSTM/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/LSTM/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/LSTM/lstm_cell/bias/v
?
.Adam/LSTM/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/LSTM/lstm_cell/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?7
value?7B?7 B?7
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
 
l
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
?
Attention_Mul_Wa
Wa
Attention_Mul_ba
ba
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemambmcmdmemf)mg*mh+mivjvkvlvmvnvo)vp*vq+vr
 
?
)0
*1
+2
3
4
5
6
7
8
?
)0
*1
+2
3
4
5
6
7
8
?
,non_trainable_variables
-layer_regularization_losses
.metrics
regularization_losses

/layers
	variables
0layer_metrics
	trainable_variables
 
?
1
state_size

)kernel
*recurrent_kernel
+bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
 
 

)0
*1
+2

)0
*1
+2
?
6non_trainable_variables

7states
8layer_regularization_losses
9metrics
regularization_losses

:layers
	variables
;layer_metrics
trainable_variables
pn
VARIABLE_VALUEAttention/Attention_Mul_Wa@layer_with_weights-1/Attention_Mul_Wa/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAttention/Attention_Mul_ba@layer_with_weights-1/Attention_Mul_ba/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
<non_trainable_variables
=layer_regularization_losses
>metrics
regularization_losses

?layers
	variables
@layer_metrics
trainable_variables
`^
VARIABLE_VALUETimeDisDense1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUETimeDisDense1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Anon_trainable_variables
Blayer_regularization_losses
Cmetrics
regularization_losses

Dlayers
	variables
Elayer_metrics
trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Fnon_trainable_variables
Glayer_regularization_losses
Hmetrics
 regularization_losses

Ilayers
!	variables
Jlayer_metrics
"trainable_variables
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
QO
VARIABLE_VALUELSTM/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUELSTM/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUELSTM/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 

K0
L1
M2
#
0
1
2
3
4
 
 
 

)0
*1
+2

)0
*1
+2
?
Nnon_trainable_variables
Olayer_regularization_losses
Pmetrics
2regularization_losses

Qlayers
3	variables
Rlayer_metrics
4trainable_variables
 
 
 
 

0
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
 
 
 
 
4
	Stotal
	Tcount
U	variables
V	keras_api
D
	Wtotal
	Xcount
Y
_fn_kwargs
Z	variables
[	keras_api
D
	\total
	]count
^
_fn_kwargs
_	variables
`	keras_api
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
S0
T1

U	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

W0
X1

Z	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

\0
]1

_	variables
??
VARIABLE_VALUE!Adam/Attention/Attention_Mul_Wa/m\layer_with_weights-1/Attention_Mul_Wa/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Attention/Attention_Mul_ba/m\layer_with_weights-1/Attention_Mul_ba/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/TimeDisDense1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/TimeDisDense1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/LSTM/lstm_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/LSTM/lstm_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/LSTM/lstm_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Attention/Attention_Mul_Wa/v\layer_with_weights-1/Attention_Mul_Wa/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Attention/Attention_Mul_ba/v\layer_with_weights-1/Attention_Mul_ba/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/TimeDisDense1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/TimeDisDense1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/LSTM/lstm_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/LSTM/lstm_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/LSTM/lstm_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_attnPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_attnLSTM/lstm_cell/kernelLSTM/lstm_cell/recurrent_kernelLSTM/lstm_cell/biasAttention/Attention_Mul_WaAttention/Attention_Mul_baTimeDisDense1/kernelTimeDisDense1/biasdense/kernel
dense/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_295892
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.Attention/Attention_Mul_Wa/Read/ReadVariableOp.Attention/Attention_Mul_ba/Read/ReadVariableOp(TimeDisDense1/kernel/Read/ReadVariableOp&TimeDisDense1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)LSTM/lstm_cell/kernel/Read/ReadVariableOp3LSTM/lstm_cell/recurrent_kernel/Read/ReadVariableOp'LSTM/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp5Adam/Attention/Attention_Mul_Wa/m/Read/ReadVariableOp5Adam/Attention/Attention_Mul_ba/m/Read/ReadVariableOp/Adam/TimeDisDense1/kernel/m/Read/ReadVariableOp-Adam/TimeDisDense1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/LSTM/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/LSTM/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/LSTM/lstm_cell/bias/m/Read/ReadVariableOp5Adam/Attention/Attention_Mul_Wa/v/Read/ReadVariableOp5Adam/Attention/Attention_Mul_ba/v/Read/ReadVariableOp/Adam/TimeDisDense1/kernel/v/Read/ReadVariableOp-Adam/TimeDisDense1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/LSTM/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/LSTM/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/LSTM/lstm_cell/bias/v/Read/ReadVariableOpConst*3
Tin,
*2(	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_297697
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameAttention/Attention_Mul_WaAttention/Attention_Mul_baTimeDisDense1/kernelTimeDisDense1/biasdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateLSTM/lstm_cell/kernelLSTM/lstm_cell/recurrent_kernelLSTM/lstm_cell/biastotalcounttotal_1count_1total_2count_2!Adam/Attention/Attention_Mul_Wa/m!Adam/Attention/Attention_Mul_ba/mAdam/TimeDisDense1/kernel/mAdam/TimeDisDense1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/LSTM/lstm_cell/kernel/m&Adam/LSTM/lstm_cell/recurrent_kernel/mAdam/LSTM/lstm_cell/bias/m!Adam/Attention/Attention_Mul_Wa/v!Adam/Attention/Attention_Mul_ba/vAdam/TimeDisDense1/kernel/vAdam/TimeDisDense1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/LSTM/lstm_cell/kernel/v&Adam/LSTM/lstm_cell/recurrent_kernel/vAdam/LSTM/lstm_cell/bias/v*2
Tin+
)2'*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_297821??
?	
?
LSTM_while_cond_295968&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_295968___redundant_placeholder0>
:lstm_while_lstm_while_cond_295968___redundant_placeholder1>
:lstm_while_lstm_while_cond_295968___redundant_placeholder2>
:lstm_while_lstm_while_cond_295968___redundant_placeholder3
lstm_while_identity
?
LSTM/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
LSTM/while/Lessl
LSTM/while/IdentityIdentityLSTM/while/Less:z:0*
T0
*
_output_shapes
: 2
LSTM/while/Identity"3
lstm_while_identityLSTM/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
&__inference_model_layer_call_fn_296477

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
	unknown_4:	?@
	unknown_5:@
	unknown_6:@
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2954052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_model_layer_call_and_return_conditional_losses_295765

inputs
lstm_295742:	?
lstm_295744:
??
lstm_295746:	?$
attention_295749:
??
attention_295751:'
timedisdense1_295754:	?@"
timedisdense1_295756:@
dense_295759:@
dense_295761:
identity??!Attention/StatefulPartitionedCall?LSTM/StatefulPartitionedCall?%TimeDisDense1/StatefulPartitionedCall?dense/StatefulPartitionedCall?
LSTM/StatefulPartitionedCallStatefulPartitionedCallinputslstm_295742lstm_295744lstm_295746*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2957052
LSTM/StatefulPartitionedCall?
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_295749attention_295751*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_2955142#
!Attention/StatefulPartitionedCall?
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_295754timedisdense1_295756*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_2953622'
%TimeDisDense1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_295759dense_295761*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2953982
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_LSTM_layer_call_fn_297206
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2948172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?R
?
__inference__traced_save_297697
file_prefix9
5savev2_attention_attention_mul_wa_read_readvariableop9
5savev2_attention_attention_mul_ba_read_readvariableop3
/savev2_timedisdense1_kernel_read_readvariableop1
-savev2_timedisdense1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop@
<savev2_adam_attention_attention_mul_wa_m_read_readvariableop@
<savev2_adam_attention_attention_mul_ba_m_read_readvariableop:
6savev2_adam_timedisdense1_kernel_m_read_readvariableop8
4savev2_adam_timedisdense1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop@
<savev2_adam_attention_attention_mul_wa_v_read_readvariableop@
<savev2_adam_attention_attention_mul_ba_v_read_readvariableop:
6savev2_adam_timedisdense1_kernel_v_read_readvariableop8
4savev2_adam_timedisdense1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B@layer_with_weights-1/Attention_Mul_Wa/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/Attention_Mul_ba/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_Wa/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_ba/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_Wa/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_ba/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_attention_attention_mul_wa_read_readvariableop5savev2_attention_attention_mul_ba_read_readvariableop/savev2_timedisdense1_kernel_read_readvariableop-savev2_timedisdense1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop<savev2_adam_attention_attention_mul_wa_m_read_readvariableop<savev2_adam_attention_attention_mul_ba_m_read_readvariableop6savev2_adam_timedisdense1_kernel_m_read_readvariableop4savev2_adam_timedisdense1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop<savev2_adam_attention_attention_mul_wa_v_read_readvariableop<savev2_adam_attention_attention_mul_ba_v_read_readvariableop6savev2_adam_timedisdense1_kernel_v_read_readvariableop4savev2_adam_timedisdense1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??::	?@:@:@:: : : : : :	?:
??:?: : : : : : :
??::	?@:@:@::	?:
??:?:
??::	?@:@:@::	?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??: 

_output_shapes
::%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:
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
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??: 

_output_shapes
::%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??: 

_output_shapes
::% !

_output_shapes
:	?@: !

_output_shapes
:@:$" 

_output_shapes

:@: #

_output_shapes
::%$!

_output_shapes
:	?:&%"
 
_output_shapes
:
??:!&

_output_shapes	
:?:'

_output_shapes
: 
?

?
&__inference_model_layer_call_fn_295426

input_attn
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
	unknown_4:	?@
	unknown_5:@
	unknown_6:@
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall
input_attnunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2954052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
input_attn
??
?
!__inference__wrapped_model_294429

input_attnF
3model_lstm_lstm_cell_matmul_readvariableop_resource:	?I
5model_lstm_lstm_cell_matmul_1_readvariableop_resource:
??C
4model_lstm_lstm_cell_biasadd_readvariableop_resource:	?C
/model_attention_shape_2_readvariableop_resource:
??5
'model_attention_readvariableop_resource:H
5model_timedisdense1_tensordot_readvariableop_resource:	?@A
3model_timedisdense1_biasadd_readvariableop_resource:@?
-model_dense_tensordot_readvariableop_resource:@9
+model_dense_biasadd_readvariableop_resource:
identity??model/Attention/ReadVariableOp?(model/Attention/transpose/ReadVariableOp?+model/LSTM/lstm_cell/BiasAdd/ReadVariableOp?*model/LSTM/lstm_cell/MatMul/ReadVariableOp?,model/LSTM/lstm_cell/MatMul_1/ReadVariableOp?model/LSTM/while?*model/TimeDisDense1/BiasAdd/ReadVariableOp?,model/TimeDisDense1/Tensordot/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?$model/dense/Tensordot/ReadVariableOp^
model/LSTM/ShapeShape
input_attn*
T0*
_output_shapes
:2
model/LSTM/Shape?
model/LSTM/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
model/LSTM/strided_slice/stack?
 model/LSTM/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 model/LSTM/strided_slice/stack_1?
 model/LSTM/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 model/LSTM/strided_slice/stack_2?
model/LSTM/strided_sliceStridedSlicemodel/LSTM/Shape:output:0'model/LSTM/strided_slice/stack:output:0)model/LSTM/strided_slice/stack_1:output:0)model/LSTM/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/LSTM/strided_slices
model/LSTM/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
model/LSTM/zeros/mul/y?
model/LSTM/zeros/mulMul!model/LSTM/strided_slice:output:0model/LSTM/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
model/LSTM/zeros/mulu
model/LSTM/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
model/LSTM/zeros/Less/y?
model/LSTM/zeros/LessLessmodel/LSTM/zeros/mul:z:0 model/LSTM/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
model/LSTM/zeros/Lessy
model/LSTM/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
model/LSTM/zeros/packed/1?
model/LSTM/zeros/packedPack!model/LSTM/strided_slice:output:0"model/LSTM/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
model/LSTM/zeros/packedu
model/LSTM/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model/LSTM/zeros/Const?
model/LSTM/zerosFill model/LSTM/zeros/packed:output:0model/LSTM/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
model/LSTM/zerosw
model/LSTM/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
model/LSTM/zeros_1/mul/y?
model/LSTM/zeros_1/mulMul!model/LSTM/strided_slice:output:0!model/LSTM/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
model/LSTM/zeros_1/muly
model/LSTM/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
model/LSTM/zeros_1/Less/y?
model/LSTM/zeros_1/LessLessmodel/LSTM/zeros_1/mul:z:0"model/LSTM/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
model/LSTM/zeros_1/Less}
model/LSTM/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
model/LSTM/zeros_1/packed/1?
model/LSTM/zeros_1/packedPack!model/LSTM/strided_slice:output:0$model/LSTM/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
model/LSTM/zeros_1/packedy
model/LSTM/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model/LSTM/zeros_1/Const?
model/LSTM/zeros_1Fill"model/LSTM/zeros_1/packed:output:0!model/LSTM/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
model/LSTM/zeros_1?
model/LSTM/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model/LSTM/transpose/perm?
model/LSTM/transpose	Transpose
input_attn"model/LSTM/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
model/LSTM/transposep
model/LSTM/Shape_1Shapemodel/LSTM/transpose:y:0*
T0*
_output_shapes
:2
model/LSTM/Shape_1?
 model/LSTM/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 model/LSTM/strided_slice_1/stack?
"model/LSTM/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_1/stack_1?
"model/LSTM/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_1/stack_2?
model/LSTM/strided_slice_1StridedSlicemodel/LSTM/Shape_1:output:0)model/LSTM/strided_slice_1/stack:output:0+model/LSTM/strided_slice_1/stack_1:output:0+model/LSTM/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/LSTM/strided_slice_1?
&model/LSTM/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model/LSTM/TensorArrayV2/element_shape?
model/LSTM/TensorArrayV2TensorListReserve/model/LSTM/TensorArrayV2/element_shape:output:0#model/LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model/LSTM/TensorArrayV2?
@model/LSTM/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@model/LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape?
2model/LSTM/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/LSTM/transpose:y:0Imodel/LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2model/LSTM/TensorArrayUnstack/TensorListFromTensor?
 model/LSTM/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 model/LSTM/strided_slice_2/stack?
"model/LSTM/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_2/stack_1?
"model/LSTM/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_2/stack_2?
model/LSTM/strided_slice_2StridedSlicemodel/LSTM/transpose:y:0)model/LSTM/strided_slice_2/stack:output:0+model/LSTM/strided_slice_2/stack_1:output:0+model/LSTM/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
model/LSTM/strided_slice_2?
*model/LSTM/lstm_cell/MatMul/ReadVariableOpReadVariableOp3model_lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*model/LSTM/lstm_cell/MatMul/ReadVariableOp?
model/LSTM/lstm_cell/MatMulMatMul#model/LSTM/strided_slice_2:output:02model/LSTM/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/MatMul?
,model/LSTM/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp5model_lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,model/LSTM/lstm_cell/MatMul_1/ReadVariableOp?
model/LSTM/lstm_cell/MatMul_1MatMulmodel/LSTM/zeros:output:04model/LSTM/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/MatMul_1?
model/LSTM/lstm_cell/addAddV2%model/LSTM/lstm_cell/MatMul:product:0'model/LSTM/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/add?
+model/LSTM/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4model_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model/LSTM/lstm_cell/BiasAdd/ReadVariableOp?
model/LSTM/lstm_cell/BiasAddBiasAddmodel/LSTM/lstm_cell/add:z:03model/LSTM/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/BiasAdd?
$model/LSTM/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model/LSTM/lstm_cell/split/split_dim?
model/LSTM/lstm_cell/splitSplit-model/LSTM/lstm_cell/split/split_dim:output:0%model/LSTM/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
model/LSTM/lstm_cell/split?
model/LSTM/lstm_cell/SigmoidSigmoid#model/LSTM/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/Sigmoid?
model/LSTM/lstm_cell/Sigmoid_1Sigmoid#model/LSTM/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2 
model/LSTM/lstm_cell/Sigmoid_1?
model/LSTM/lstm_cell/mulMul"model/LSTM/lstm_cell/Sigmoid_1:y:0model/LSTM/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/mul?
model/LSTM/lstm_cell/Sigmoid_2Sigmoid#model/LSTM/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2 
model/LSTM/lstm_cell/Sigmoid_2?
model/LSTM/lstm_cell/mul_1Mul#model/LSTM/lstm_cell/split:output:2"model/LSTM/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/mul_1?
model/LSTM/lstm_cell/IdentityIdentitymodel/LSTM/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/Identity?
model/LSTM/lstm_cell/IdentityN	IdentityNmodel/LSTM/lstm_cell/mul_1:z:0#model/LSTM/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-294205*<
_output_shapes*
(:??????????:??????????2 
model/LSTM/lstm_cell/IdentityN?
model/LSTM/lstm_cell/mul_2Mul model/LSTM/lstm_cell/Sigmoid:y:0'model/LSTM/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/mul_2?
model/LSTM/lstm_cell/add_1AddV2model/LSTM/lstm_cell/mul:z:0model/LSTM/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/add_1?
model/LSTM/lstm_cell/Sigmoid_3Sigmoid#model/LSTM/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2 
model/LSTM/lstm_cell/Sigmoid_3?
model/LSTM/lstm_cell/Sigmoid_4Sigmoidmodel/LSTM/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2 
model/LSTM/lstm_cell/Sigmoid_4?
model/LSTM/lstm_cell/mul_3Mulmodel/LSTM/lstm_cell/add_1:z:0"model/LSTM/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/mul_3?
model/LSTM/lstm_cell/Identity_1Identitymodel/LSTM/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2!
model/LSTM/lstm_cell/Identity_1?
 model/LSTM/lstm_cell/IdentityN_1	IdentityNmodel/LSTM/lstm_cell/mul_3:z:0model/LSTM/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-294214*<
_output_shapes*
(:??????????:??????????2"
 model/LSTM/lstm_cell/IdentityN_1?
model/LSTM/lstm_cell/mul_4Mul"model/LSTM/lstm_cell/Sigmoid_3:y:0)model/LSTM/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
model/LSTM/lstm_cell/mul_4?
(model/LSTM/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2*
(model/LSTM/TensorArrayV2_1/element_shape?
model/LSTM/TensorArrayV2_1TensorListReserve1model/LSTM/TensorArrayV2_1/element_shape:output:0#model/LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model/LSTM/TensorArrayV2_1d
model/LSTM/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model/LSTM/time?
#model/LSTM/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#model/LSTM/while/maximum_iterations?
model/LSTM/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
model/LSTM/while/loop_counter?
model/LSTM/whileWhile&model/LSTM/while/loop_counter:output:0,model/LSTM/while/maximum_iterations:output:0model/LSTM/time:output:0#model/LSTM/TensorArrayV2_1:handle:0model/LSTM/zeros:output:0model/LSTM/zeros_1:output:0#model/LSTM/strided_slice_1:output:0Bmodel/LSTM/TensorArrayUnstack/TensorListFromTensor:output_handle:03model_lstm_lstm_cell_matmul_readvariableop_resource5model_lstm_lstm_cell_matmul_1_readvariableop_resource4model_lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *(
body R
model_LSTM_while_body_294225*(
cond R
model_LSTM_while_cond_294224*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
model/LSTM/while?
;model/LSTM/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2=
;model/LSTM/TensorArrayV2Stack/TensorListStack/element_shape?
-model/LSTM/TensorArrayV2Stack/TensorListStackTensorListStackmodel/LSTM/while:output:3Dmodel/LSTM/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02/
-model/LSTM/TensorArrayV2Stack/TensorListStack?
 model/LSTM/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 model/LSTM/strided_slice_3/stack?
"model/LSTM/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"model/LSTM/strided_slice_3/stack_1?
"model/LSTM/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_3/stack_2?
model/LSTM/strided_slice_3StridedSlice6model/LSTM/TensorArrayV2Stack/TensorListStack:tensor:0)model/LSTM/strided_slice_3/stack:output:0+model/LSTM/strided_slice_3/stack_1:output:0+model/LSTM/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
model/LSTM/strided_slice_3?
model/LSTM/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model/LSTM/transpose_1/perm?
model/LSTM/transpose_1	Transpose6model/LSTM/TensorArrayV2Stack/TensorListStack:tensor:0$model/LSTM/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
model/LSTM/transpose_1|
model/LSTM/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model/LSTM/runtimex
model/Attention/ShapeShapemodel/LSTM/transpose_1:y:0*
T0*
_output_shapes
:2
model/Attention/Shape?
#model/Attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#model/Attention/strided_slice/stack?
%model/Attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/Attention/strided_slice/stack_1?
%model/Attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/Attention/strided_slice/stack_2?
model/Attention/strided_sliceStridedSlicemodel/Attention/Shape:output:0,model/Attention/strided_slice/stack:output:0.model/Attention/strided_slice/stack_1:output:0.model/Attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/Attention/strided_slice|
model/Attention/Shape_1Shapemodel/LSTM/transpose_1:y:0*
T0*
_output_shapes
:2
model/Attention/Shape_1?
model/Attention/unstackUnpack model/Attention/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
model/Attention/unstack?
&model/Attention/Shape_2/ReadVariableOpReadVariableOp/model_attention_shape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&model/Attention/Shape_2/ReadVariableOp?
model/Attention/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"?   ?   2
model/Attention/Shape_2?
model/Attention/unstack_1Unpack model/Attention/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
model/Attention/unstack_1?
model/Attention/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
model/Attention/Reshape/shape?
model/Attention/ReshapeReshapemodel/LSTM/transpose_1:y:0&model/Attention/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
model/Attention/Reshape?
(model/Attention/transpose/ReadVariableOpReadVariableOp/model_attention_shape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(model/Attention/transpose/ReadVariableOp?
model/Attention/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2 
model/Attention/transpose/perm?
model/Attention/transpose	Transpose0model/Attention/transpose/ReadVariableOp:value:0'model/Attention/transpose/perm:output:0*
T0* 
_output_shapes
:
??2
model/Attention/transpose?
model/Attention/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????2!
model/Attention/Reshape_1/shape?
model/Attention/Reshape_1Reshapemodel/Attention/transpose:y:0(model/Attention/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
??2
model/Attention/Reshape_1?
model/Attention/MatMulMatMul model/Attention/Reshape:output:0"model/Attention/Reshape_1:output:0*
T0*(
_output_shapes
:??????????2
model/Attention/MatMul?
!model/Attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!model/Attention/Reshape_2/shape/1?
!model/Attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2#
!model/Attention/Reshape_2/shape/2?
model/Attention/Reshape_2/shapePack model/Attention/unstack:output:0*model/Attention/Reshape_2/shape/1:output:0*model/Attention/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
model/Attention/Reshape_2/shape?
model/Attention/Reshape_2Reshape model/Attention/MatMul:product:0(model/Attention/Reshape_2/shape:output:0*
T0*,
_output_shapes
:??????????2
model/Attention/Reshape_2?
 model/Attention/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 model/Attention/transpose_1/perm?
model/Attention/transpose_1	Transposemodel/LSTM/transpose_1:y:0)model/Attention/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
model/Attention/transpose_1?
model/Attention/MatMul_1BatchMatMulV2"model/Attention/Reshape_2:output:0model/Attention/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
model/Attention/MatMul_1?
model/Attention/Shape_3Shape!model/Attention/MatMul_1:output:0*
T0*
_output_shapes
:2
model/Attention/Shape_3?
model/Attention/ReadVariableOpReadVariableOp'model_attention_readvariableop_resource*
_output_shapes
:*
dtype02 
model/Attention/ReadVariableOp?
%model/Attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model/Attention/strided_slice_1/stack?
'model/Attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model/Attention/strided_slice_1/stack_1?
'model/Attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model/Attention/strided_slice_1/stack_2?
model/Attention/strided_slice_1StridedSlice&model/Attention/ReadVariableOp:value:0.model/Attention/strided_slice_1/stack:output:00model/Attention/strided_slice_1/stack_1:output:00model/Attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model/Attention/strided_slice_1?
model/Attention/addAddV2!model/Attention/MatMul_1:output:0(model/Attention/strided_slice_1:output:0*
T0*+
_output_shapes
:?????????2
model/Attention/add?
model/Attention/SigmoidSigmoidmodel/Attention/add:z:0*
T0*+
_output_shapes
:?????????2
model/Attention/Sigmoid?
model/Attention/mulMulmodel/Attention/add:z:0model/Attention/Sigmoid:y:0*
T0*+
_output_shapes
:?????????2
model/Attention/mul?
model/Attention/IdentityIdentitymodel/Attention/mul:z:0*
T0*+
_output_shapes
:?????????2
model/Attention/Identity?
model/Attention/IdentityN	IdentityNmodel/Attention/mul:z:0model/Attention/add:z:0*
T
2*,
_gradient_op_typeCustomGradient-294355*B
_output_shapes0
.:?????????:?????????2
model/Attention/IdentityN?
%model/Attention/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%model/Attention/Max/reduction_indices?
model/Attention/MaxMax"model/Attention/IdentityN:output:0.model/Attention/Max/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
model/Attention/Max?
model/Attention/subSub"model/Attention/IdentityN:output:0model/Attention/Max:output:0*
T0*+
_output_shapes
:?????????2
model/Attention/sub?
model/Attention/ExpExpmodel/Attention/sub:z:0*
T0*+
_output_shapes
:?????????2
model/Attention/Exp?
%model/Attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%model/Attention/Sum/reduction_indices?
model/Attention/SumSummodel/Attention/Exp:y:0.model/Attention/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
model/Attention/Sum?
model/Attention/truedivRealDivmodel/Attention/Exp:y:0model/Attention/Sum:output:0*
T0*+
_output_shapes
:?????????2
model/Attention/truediv?
model/Attention/MatMul_2BatchMatMulV2model/Attention/truediv:z:0model/LSTM/transpose_1:y:0*
T0*,
_output_shapes
:??????????2
model/Attention/MatMul_2?
model/Attention/Shape_4Shape!model/Attention/MatMul_2:output:0*
T0*
_output_shapes
:2
model/Attention/Shape_4?
,model/TimeDisDense1/Tensordot/ReadVariableOpReadVariableOp5model_timedisdense1_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,model/TimeDisDense1/Tensordot/ReadVariableOp?
"model/TimeDisDense1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2$
"model/TimeDisDense1/Tensordot/axes?
"model/TimeDisDense1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2$
"model/TimeDisDense1/Tensordot/free?
#model/TimeDisDense1/Tensordot/ShapeShape!model/Attention/MatMul_2:output:0*
T0*
_output_shapes
:2%
#model/TimeDisDense1/Tensordot/Shape?
+model/TimeDisDense1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model/TimeDisDense1/Tensordot/GatherV2/axis?
&model/TimeDisDense1/Tensordot/GatherV2GatherV2,model/TimeDisDense1/Tensordot/Shape:output:0+model/TimeDisDense1/Tensordot/free:output:04model/TimeDisDense1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2(
&model/TimeDisDense1/Tensordot/GatherV2?
-model/TimeDisDense1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-model/TimeDisDense1/Tensordot/GatherV2_1/axis?
(model/TimeDisDense1/Tensordot/GatherV2_1GatherV2,model/TimeDisDense1/Tensordot/Shape:output:0+model/TimeDisDense1/Tensordot/axes:output:06model/TimeDisDense1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(model/TimeDisDense1/Tensordot/GatherV2_1?
#model/TimeDisDense1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model/TimeDisDense1/Tensordot/Const?
"model/TimeDisDense1/Tensordot/ProdProd/model/TimeDisDense1/Tensordot/GatherV2:output:0,model/TimeDisDense1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2$
"model/TimeDisDense1/Tensordot/Prod?
%model/TimeDisDense1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%model/TimeDisDense1/Tensordot/Const_1?
$model/TimeDisDense1/Tensordot/Prod_1Prod1model/TimeDisDense1/Tensordot/GatherV2_1:output:0.model/TimeDisDense1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2&
$model/TimeDisDense1/Tensordot/Prod_1?
)model/TimeDisDense1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model/TimeDisDense1/Tensordot/concat/axis?
$model/TimeDisDense1/Tensordot/concatConcatV2+model/TimeDisDense1/Tensordot/free:output:0+model/TimeDisDense1/Tensordot/axes:output:02model/TimeDisDense1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$model/TimeDisDense1/Tensordot/concat?
#model/TimeDisDense1/Tensordot/stackPack+model/TimeDisDense1/Tensordot/Prod:output:0-model/TimeDisDense1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2%
#model/TimeDisDense1/Tensordot/stack?
'model/TimeDisDense1/Tensordot/transpose	Transpose!model/Attention/MatMul_2:output:0-model/TimeDisDense1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2)
'model/TimeDisDense1/Tensordot/transpose?
%model/TimeDisDense1/Tensordot/ReshapeReshape+model/TimeDisDense1/Tensordot/transpose:y:0,model/TimeDisDense1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2'
%model/TimeDisDense1/Tensordot/Reshape?
$model/TimeDisDense1/Tensordot/MatMulMatMul.model/TimeDisDense1/Tensordot/Reshape:output:04model/TimeDisDense1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2&
$model/TimeDisDense1/Tensordot/MatMul?
%model/TimeDisDense1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2'
%model/TimeDisDense1/Tensordot/Const_2?
+model/TimeDisDense1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model/TimeDisDense1/Tensordot/concat_1/axis?
&model/TimeDisDense1/Tensordot/concat_1ConcatV2/model/TimeDisDense1/Tensordot/GatherV2:output:0.model/TimeDisDense1/Tensordot/Const_2:output:04model/TimeDisDense1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2(
&model/TimeDisDense1/Tensordot/concat_1?
model/TimeDisDense1/TensordotReshape.model/TimeDisDense1/Tensordot/MatMul:product:0/model/TimeDisDense1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
model/TimeDisDense1/Tensordot?
*model/TimeDisDense1/BiasAdd/ReadVariableOpReadVariableOp3model_timedisdense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/TimeDisDense1/BiasAdd/ReadVariableOp?
model/TimeDisDense1/BiasAddBiasAdd&model/TimeDisDense1/Tensordot:output:02model/TimeDisDense1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
model/TimeDisDense1/BiasAdd?
model/TimeDisDense1/SigmoidSigmoid$model/TimeDisDense1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
model/TimeDisDense1/Sigmoid?
model/TimeDisDense1/mulMul$model/TimeDisDense1/BiasAdd:output:0model/TimeDisDense1/Sigmoid:y:0*
T0*+
_output_shapes
:?????????@2
model/TimeDisDense1/mul?
model/TimeDisDense1/IdentityIdentitymodel/TimeDisDense1/mul:z:0*
T0*+
_output_shapes
:?????????@2
model/TimeDisDense1/Identity?
model/TimeDisDense1/IdentityN	IdentityNmodel/TimeDisDense1/mul:z:0$model/TimeDisDense1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-294396*B
_output_shapes0
.:?????????@:?????????@2
model/TimeDisDense1/IdentityN?
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02&
$model/dense/Tensordot/ReadVariableOp?
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model/dense/Tensordot/axes?
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
model/dense/Tensordot/free?
model/dense/Tensordot/ShapeShape&model/TimeDisDense1/IdentityN:output:0*
T0*
_output_shapes
:2
model/dense/Tensordot/Shape?
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model/dense/Tensordot/GatherV2/axis?
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
model/dense/Tensordot/GatherV2?
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model/dense/Tensordot/GatherV2_1/axis?
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 model/dense/Tensordot/GatherV2_1?
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model/dense/Tensordot/Const?
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model/dense/Tensordot/Prod?
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
model/dense/Tensordot/Const_1?
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
model/dense/Tensordot/Prod_1?
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!model/dense/Tensordot/concat/axis?
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
model/dense/Tensordot/concat?
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model/dense/Tensordot/stack?
model/dense/Tensordot/transpose	Transpose&model/TimeDisDense1/IdentityN:output:0%model/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2!
model/dense/Tensordot/transpose?
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
model/dense/Tensordot/Reshape?
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense/Tensordot/MatMul?
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
model/dense/Tensordot/Const_2?
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model/dense/Tensordot/concat_1/axis?
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2 
model/dense/Tensordot/concat_1?
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
model/dense/Tensordot?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"model/dense/BiasAdd/ReadVariableOp?
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
model/dense/BiasAdd{
IdentityIdentitymodel/dense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^model/Attention/ReadVariableOp)^model/Attention/transpose/ReadVariableOp,^model/LSTM/lstm_cell/BiasAdd/ReadVariableOp+^model/LSTM/lstm_cell/MatMul/ReadVariableOp-^model/LSTM/lstm_cell/MatMul_1/ReadVariableOp^model/LSTM/while+^model/TimeDisDense1/BiasAdd/ReadVariableOp-^model/TimeDisDense1/Tensordot/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2@
model/Attention/ReadVariableOpmodel/Attention/ReadVariableOp2T
(model/Attention/transpose/ReadVariableOp(model/Attention/transpose/ReadVariableOp2Z
+model/LSTM/lstm_cell/BiasAdd/ReadVariableOp+model/LSTM/lstm_cell/BiasAdd/ReadVariableOp2X
*model/LSTM/lstm_cell/MatMul/ReadVariableOp*model/LSTM/lstm_cell/MatMul/ReadVariableOp2\
,model/LSTM/lstm_cell/MatMul_1/ReadVariableOp,model/LSTM/lstm_cell/MatMul_1/ReadVariableOp2$
model/LSTM/whilemodel/LSTM/while2X
*model/TimeDisDense1/BiasAdd/ReadVariableOp*model/TimeDisDense1/BiasAdd/ReadVariableOp2\
,model/TimeDisDense1/Tensordot/ReadVariableOp,model/TimeDisDense1/Tensordot/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp:W S
+
_output_shapes
:?????????
$
_user_specified_name
input_attn
?
?
while_cond_294527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_294527___redundant_placeholder04
0while_while_cond_294527___redundant_placeholder14
0while_while_cond_294527___redundant_placeholder24
0while_while_cond_294527___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_Attention_layer_call_fn_297358

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_2955142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_296918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_296918___redundant_placeholder04
0while_while_cond_296918___redundant_placeholder14
0while_while_cond_296918___redundant_placeholder24
0while_while_cond_296918___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
%__inference_LSTM_layer_call_fn_297228

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2957052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
model_LSTM_while_cond_2942242
.model_lstm_while_model_lstm_while_loop_counter8
4model_lstm_while_model_lstm_while_maximum_iterations 
model_lstm_while_placeholder"
model_lstm_while_placeholder_1"
model_lstm_while_placeholder_2"
model_lstm_while_placeholder_34
0model_lstm_while_less_model_lstm_strided_slice_1J
Fmodel_lstm_while_model_lstm_while_cond_294224___redundant_placeholder0J
Fmodel_lstm_while_model_lstm_while_cond_294224___redundant_placeholder1J
Fmodel_lstm_while_model_lstm_while_cond_294224___redundant_placeholder2J
Fmodel_lstm_while_model_lstm_while_cond_294224___redundant_placeholder3
model_lstm_while_identity
?
model/LSTM/while/LessLessmodel_lstm_while_placeholder0model_lstm_while_less_model_lstm_strided_slice_1*
T0*
_output_shapes
: 2
model/LSTM/while/Less~
model/LSTM/while/IdentityIdentitymodel/LSTM/while/Less:z:0*
T0
*
_output_shapes
: 2
model/LSTM/while/Identity"?
model_lstm_while_identity"model/LSTM/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?$
?
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_297394

inputs4
!tensordot_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@

identity_1??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
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
Tensordot/GatherV2/axis?
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
Tensordot/GatherV2_1/axis?
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
Tensordot/Const?
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
Tensordot/Const_1?
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
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAdde
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:?????????@2	
Sigmoidf
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*+
_output_shapes
:?????????@2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-297387*B
_output_shapes0
.:?????????@:?????????@2
	IdentityNu

Identity_1IdentityIdentityN:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
A__inference_dense_layer_call_and_return_conditional_losses_297433

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
Tensordot/GatherV2/axis?
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
Tensordot/GatherV2_1/axis?
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
Tensordot/Const?
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
Tensordot/Const_1?
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
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
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
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
A__inference_model_layer_call_and_return_conditional_losses_295861

input_attn
lstm_295838:	?
lstm_295840:
??
lstm_295842:	?$
attention_295845:
??
attention_295847:'
timedisdense1_295850:	?@"
timedisdense1_295852:@
dense_295855:@
dense_295857:
identity??!Attention/StatefulPartitionedCall?LSTM/StatefulPartitionedCall?%TimeDisDense1/StatefulPartitionedCall?dense/StatefulPartitionedCall?
LSTM/StatefulPartitionedCallStatefulPartitionedCall
input_attnlstm_295838lstm_295840lstm_295842*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2957052
LSTM/StatefulPartitionedCall?
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_295845attention_295847*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_2955142#
!Attention/StatefulPartitionedCall?
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_295850timedisdense1_295852*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_2953622'
%TimeDisDense1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_295855dense_295857*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2953982
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
input_attn
??
?
A__inference_model_layer_call_and_return_conditional_losses_296454

inputs@
-lstm_lstm_cell_matmul_readvariableop_resource:	?C
/lstm_lstm_cell_matmul_1_readvariableop_resource:
??=
.lstm_lstm_cell_biasadd_readvariableop_resource:	?=
)attention_shape_2_readvariableop_resource:
??/
!attention_readvariableop_resource:B
/timedisdense1_tensordot_readvariableop_resource:	?@;
-timedisdense1_biasadd_readvariableop_resource:@9
'dense_tensordot_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??Attention/ReadVariableOp?"Attention/transpose/ReadVariableOp?%LSTM/lstm_cell/BiasAdd/ReadVariableOp?$LSTM/lstm_cell/MatMul/ReadVariableOp?&LSTM/lstm_cell/MatMul_1/ReadVariableOp?
LSTM/while?$TimeDisDense1/BiasAdd/ReadVariableOp?&TimeDisDense1/Tensordot/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOpN

LSTM/ShapeShapeinputs*
T0*
_output_shapes
:2

LSTM/Shape~
LSTM/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice/stack?
LSTM/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_1?
LSTM/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_2?
LSTM/strided_sliceStridedSliceLSTM/Shape:output:0!LSTM/strided_slice/stack:output:0#LSTM/strided_slice/stack_1:output:0#LSTM/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
LSTM/strided_sliceg
LSTM/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros/mul/y?
LSTM/zeros/mulMulLSTM/strided_slice:output:0LSTM/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros/muli
LSTM/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros/Less/y{
LSTM/zeros/LessLessLSTM/zeros/mul:z:0LSTM/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros/Lessm
LSTM/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros/packed/1?
LSTM/zeros/packedPackLSTM/strided_slice:output:0LSTM/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
LSTM/zeros/packedi
LSTM/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LSTM/zeros/Const?

LSTM/zerosFillLSTM/zeros/packed:output:0LSTM/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2

LSTM/zerosk
LSTM/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros_1/mul/y?
LSTM/zeros_1/mulMulLSTM/strided_slice:output:0LSTM/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros_1/mulm
LSTM/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros_1/Less/y?
LSTM/zeros_1/LessLessLSTM/zeros_1/mul:z:0LSTM/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros_1/Lessq
LSTM/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros_1/packed/1?
LSTM/zeros_1/packedPackLSTM/strided_slice:output:0LSTM/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
LSTM/zeros_1/packedm
LSTM/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LSTM/zeros_1/Const?
LSTM/zeros_1FillLSTM/zeros_1/packed:output:0LSTM/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
LSTM/zeros_1
LSTM/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose/perm?
LSTM/transpose	TransposeinputsLSTM/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
LSTM/transpose^
LSTM/Shape_1ShapeLSTM/transpose:y:0*
T0*
_output_shapes
:2
LSTM/Shape_1?
LSTM/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_1/stack?
LSTM/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_1?
LSTM/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_2?
LSTM/strided_slice_1StridedSliceLSTM/Shape_1:output:0#LSTM/strided_slice_1/stack:output:0%LSTM/strided_slice_1/stack_1:output:0%LSTM/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
LSTM/strided_slice_1?
 LSTM/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 LSTM/TensorArrayV2/element_shape?
LSTM/TensorArrayV2TensorListReserve)LSTM/TensorArrayV2/element_shape:output:0LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
LSTM/TensorArrayV2?
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2<
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape?
,LSTM/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorLSTM/transpose:y:0CLSTM/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,LSTM/TensorArrayUnstack/TensorListFromTensor?
LSTM/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_2/stack?
LSTM/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_1?
LSTM/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_2?
LSTM/strided_slice_2StridedSliceLSTM/transpose:y:0#LSTM/strided_slice_2/stack:output:0%LSTM/strided_slice_2/stack_1:output:0%LSTM/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
LSTM/strided_slice_2?
$LSTM/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02&
$LSTM/lstm_cell/MatMul/ReadVariableOp?
LSTM/lstm_cell/MatMulMatMulLSTM/strided_slice_2:output:0,LSTM/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/MatMul?
&LSTM/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&LSTM/lstm_cell/MatMul_1/ReadVariableOp?
LSTM/lstm_cell/MatMul_1MatMulLSTM/zeros:output:0.LSTM/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/MatMul_1?
LSTM/lstm_cell/addAddV2LSTM/lstm_cell/MatMul:product:0!LSTM/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/add?
%LSTM/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%LSTM/lstm_cell/BiasAdd/ReadVariableOp?
LSTM/lstm_cell/BiasAddBiasAddLSTM/lstm_cell/add:z:0-LSTM/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/BiasAdd?
LSTM/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
LSTM/lstm_cell/split/split_dim?
LSTM/lstm_cell/splitSplit'LSTM/lstm_cell/split/split_dim:output:0LSTM/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
LSTM/lstm_cell/split?
LSTM/lstm_cell/SigmoidSigmoidLSTM/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid?
LSTM/lstm_cell/Sigmoid_1SigmoidLSTM/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_1?
LSTM/lstm_cell/mulMulLSTM/lstm_cell/Sigmoid_1:y:0LSTM/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul?
LSTM/lstm_cell/Sigmoid_2SigmoidLSTM/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_2?
LSTM/lstm_cell/mul_1MulLSTM/lstm_cell/split:output:2LSTM/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_1?
LSTM/lstm_cell/IdentityIdentityLSTM/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Identity?
LSTM/lstm_cell/IdentityN	IdentityNLSTM/lstm_cell/mul_1:z:0LSTM/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296230*<
_output_shapes*
(:??????????:??????????2
LSTM/lstm_cell/IdentityN?
LSTM/lstm_cell/mul_2MulLSTM/lstm_cell/Sigmoid:y:0!LSTM/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_2?
LSTM/lstm_cell/add_1AddV2LSTM/lstm_cell/mul:z:0LSTM/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/add_1?
LSTM/lstm_cell/Sigmoid_3SigmoidLSTM/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_3?
LSTM/lstm_cell/Sigmoid_4SigmoidLSTM/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_4?
LSTM/lstm_cell/mul_3MulLSTM/lstm_cell/add_1:z:0LSTM/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_3?
LSTM/lstm_cell/Identity_1IdentityLSTM/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Identity_1?
LSTM/lstm_cell/IdentityN_1	IdentityNLSTM/lstm_cell/mul_3:z:0LSTM/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296239*<
_output_shapes*
(:??????????:??????????2
LSTM/lstm_cell/IdentityN_1?
LSTM/lstm_cell/mul_4MulLSTM/lstm_cell/Sigmoid_3:y:0#LSTM/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_4?
"LSTM/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"LSTM/TensorArrayV2_1/element_shape?
LSTM/TensorArrayV2_1TensorListReserve+LSTM/TensorArrayV2_1/element_shape:output:0LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
LSTM/TensorArrayV2_1X
	LSTM/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	LSTM/time?
LSTM/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
LSTM/while/maximum_iterationst
LSTM/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
LSTM/while/loop_counter?

LSTM/whileWhile LSTM/while/loop_counter:output:0&LSTM/while/maximum_iterations:output:0LSTM/time:output:0LSTM/TensorArrayV2_1:handle:0LSTM/zeros:output:0LSTM/zeros_1:output:0LSTM/strided_slice_1:output:0<LSTM/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
LSTM_while_body_296250*"
condR
LSTM_while_cond_296249*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2

LSTM/while?
5LSTM/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5LSTM/TensorArrayV2Stack/TensorListStack/element_shape?
'LSTM/TensorArrayV2Stack/TensorListStackTensorListStackLSTM/while:output:3>LSTM/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02)
'LSTM/TensorArrayV2Stack/TensorListStack?
LSTM/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
LSTM/strided_slice_3/stack?
LSTM/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_3/stack_1?
LSTM/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_3/stack_2?
LSTM/strided_slice_3StridedSlice0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0#LSTM/strided_slice_3/stack:output:0%LSTM/strided_slice_3/stack_1:output:0%LSTM/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
LSTM/strided_slice_3?
LSTM/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose_1/perm?
LSTM/transpose_1	Transpose0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0LSTM/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
LSTM/transpose_1p
LSTM/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
LSTM/runtimef
Attention/ShapeShapeLSTM/transpose_1:y:0*
T0*
_output_shapes
:2
Attention/Shape?
Attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Attention/strided_slice/stack?
Attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_1?
Attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_2?
Attention/strided_sliceStridedSliceAttention/Shape:output:0&Attention/strided_slice/stack:output:0(Attention/strided_slice/stack_1:output:0(Attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Attention/strided_slicej
Attention/Shape_1ShapeLSTM/transpose_1:y:0*
T0*
_output_shapes
:2
Attention/Shape_1|
Attention/unstackUnpackAttention/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
Attention/unstack?
 Attention/Shape_2/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 Attention/Shape_2/ReadVariableOpw
Attention/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"?   ?   2
Attention/Shape_2~
Attention/unstack_1UnpackAttention/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
Attention/unstack_1?
Attention/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Attention/Reshape/shape?
Attention/ReshapeReshapeLSTM/transpose_1:y:0 Attention/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
Attention/Reshape?
"Attention/transpose/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"Attention/transpose/ReadVariableOp?
Attention/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
Attention/transpose/perm?
Attention/transpose	Transpose*Attention/transpose/ReadVariableOp:value:0!Attention/transpose/perm:output:0*
T0* 
_output_shapes
:
??2
Attention/transpose?
Attention/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????2
Attention/Reshape_1/shape?
Attention/Reshape_1ReshapeAttention/transpose:y:0"Attention/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
??2
Attention/Reshape_1?
Attention/MatMulMatMulAttention/Reshape:output:0Attention/Reshape_1:output:0*
T0*(
_output_shapes
:??????????2
Attention/MatMul|
Attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Attention/Reshape_2/shape/1}
Attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Attention/Reshape_2/shape/2?
Attention/Reshape_2/shapePackAttention/unstack:output:0$Attention/Reshape_2/shape/1:output:0$Attention/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Attention/Reshape_2/shape?
Attention/Reshape_2ReshapeAttention/MatMul:product:0"Attention/Reshape_2/shape:output:0*
T0*,
_output_shapes
:??????????2
Attention/Reshape_2?
Attention/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
Attention/transpose_1/perm?
Attention/transpose_1	TransposeLSTM/transpose_1:y:0#Attention/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
Attention/transpose_1?
Attention/MatMul_1BatchMatMulV2Attention/Reshape_2:output:0Attention/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
Attention/MatMul_1q
Attention/Shape_3ShapeAttention/MatMul_1:output:0*
T0*
_output_shapes
:2
Attention/Shape_3?
Attention/ReadVariableOpReadVariableOp!attention_readvariableop_resource*
_output_shapes
:*
dtype02
Attention/ReadVariableOp?
Attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
Attention/strided_slice_1/stack?
!Attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_1?
!Attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_2?
Attention/strided_slice_1StridedSlice Attention/ReadVariableOp:value:0(Attention/strided_slice_1/stack:output:0*Attention/strided_slice_1/stack_1:output:0*Attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Attention/strided_slice_1?
Attention/addAddV2Attention/MatMul_1:output:0"Attention/strided_slice_1:output:0*
T0*+
_output_shapes
:?????????2
Attention/addz
Attention/SigmoidSigmoidAttention/add:z:0*
T0*+
_output_shapes
:?????????2
Attention/Sigmoid?
Attention/mulMulAttention/add:z:0Attention/Sigmoid:y:0*
T0*+
_output_shapes
:?????????2
Attention/mul}
Attention/IdentityIdentityAttention/mul:z:0*
T0*+
_output_shapes
:?????????2
Attention/Identity?
Attention/IdentityN	IdentityNAttention/mul:z:0Attention/add:z:0*
T
2*,
_gradient_op_typeCustomGradient-296380*B
_output_shapes0
.:?????????:?????????2
Attention/IdentityN?
Attention/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
Attention/Max/reduction_indices?
Attention/MaxMaxAttention/IdentityN:output:0(Attention/Max/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Attention/Max?
Attention/subSubAttention/IdentityN:output:0Attention/Max:output:0*
T0*+
_output_shapes
:?????????2
Attention/subn
Attention/ExpExpAttention/sub:z:0*
T0*+
_output_shapes
:?????????2
Attention/Exp?
Attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
Attention/Sum/reduction_indices?
Attention/SumSumAttention/Exp:y:0(Attention/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Attention/Sum?
Attention/truedivRealDivAttention/Exp:y:0Attention/Sum:output:0*
T0*+
_output_shapes
:?????????2
Attention/truediv?
Attention/MatMul_2BatchMatMulV2Attention/truediv:z:0LSTM/transpose_1:y:0*
T0*,
_output_shapes
:??????????2
Attention/MatMul_2q
Attention/Shape_4ShapeAttention/MatMul_2:output:0*
T0*
_output_shapes
:2
Attention/Shape_4?
&TimeDisDense1/Tensordot/ReadVariableOpReadVariableOp/timedisdense1_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02(
&TimeDisDense1/Tensordot/ReadVariableOp?
TimeDisDense1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
TimeDisDense1/Tensordot/axes?
TimeDisDense1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
TimeDisDense1/Tensordot/free?
TimeDisDense1/Tensordot/ShapeShapeAttention/MatMul_2:output:0*
T0*
_output_shapes
:2
TimeDisDense1/Tensordot/Shape?
%TimeDisDense1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%TimeDisDense1/Tensordot/GatherV2/axis?
 TimeDisDense1/Tensordot/GatherV2GatherV2&TimeDisDense1/Tensordot/Shape:output:0%TimeDisDense1/Tensordot/free:output:0.TimeDisDense1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 TimeDisDense1/Tensordot/GatherV2?
'TimeDisDense1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'TimeDisDense1/Tensordot/GatherV2_1/axis?
"TimeDisDense1/Tensordot/GatherV2_1GatherV2&TimeDisDense1/Tensordot/Shape:output:0%TimeDisDense1/Tensordot/axes:output:00TimeDisDense1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"TimeDisDense1/Tensordot/GatherV2_1?
TimeDisDense1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
TimeDisDense1/Tensordot/Const?
TimeDisDense1/Tensordot/ProdProd)TimeDisDense1/Tensordot/GatherV2:output:0&TimeDisDense1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
TimeDisDense1/Tensordot/Prod?
TimeDisDense1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
TimeDisDense1/Tensordot/Const_1?
TimeDisDense1/Tensordot/Prod_1Prod+TimeDisDense1/Tensordot/GatherV2_1:output:0(TimeDisDense1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
TimeDisDense1/Tensordot/Prod_1?
#TimeDisDense1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#TimeDisDense1/Tensordot/concat/axis?
TimeDisDense1/Tensordot/concatConcatV2%TimeDisDense1/Tensordot/free:output:0%TimeDisDense1/Tensordot/axes:output:0,TimeDisDense1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
TimeDisDense1/Tensordot/concat?
TimeDisDense1/Tensordot/stackPack%TimeDisDense1/Tensordot/Prod:output:0'TimeDisDense1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
TimeDisDense1/Tensordot/stack?
!TimeDisDense1/Tensordot/transpose	TransposeAttention/MatMul_2:output:0'TimeDisDense1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2#
!TimeDisDense1/Tensordot/transpose?
TimeDisDense1/Tensordot/ReshapeReshape%TimeDisDense1/Tensordot/transpose:y:0&TimeDisDense1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2!
TimeDisDense1/Tensordot/Reshape?
TimeDisDense1/Tensordot/MatMulMatMul(TimeDisDense1/Tensordot/Reshape:output:0.TimeDisDense1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
TimeDisDense1/Tensordot/MatMul?
TimeDisDense1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
TimeDisDense1/Tensordot/Const_2?
%TimeDisDense1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%TimeDisDense1/Tensordot/concat_1/axis?
 TimeDisDense1/Tensordot/concat_1ConcatV2)TimeDisDense1/Tensordot/GatherV2:output:0(TimeDisDense1/Tensordot/Const_2:output:0.TimeDisDense1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 TimeDisDense1/Tensordot/concat_1?
TimeDisDense1/TensordotReshape(TimeDisDense1/Tensordot/MatMul:product:0)TimeDisDense1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/Tensordot?
$TimeDisDense1/BiasAdd/ReadVariableOpReadVariableOp-timedisdense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$TimeDisDense1/BiasAdd/ReadVariableOp?
TimeDisDense1/BiasAddBiasAdd TimeDisDense1/Tensordot:output:0,TimeDisDense1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/BiasAdd?
TimeDisDense1/SigmoidSigmoidTimeDisDense1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/Sigmoid?
TimeDisDense1/mulMulTimeDisDense1/BiasAdd:output:0TimeDisDense1/Sigmoid:y:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/mul?
TimeDisDense1/IdentityIdentityTimeDisDense1/mul:z:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/Identity?
TimeDisDense1/IdentityN	IdentityNTimeDisDense1/mul:z:0TimeDisDense1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-296421*B
_output_shapes0
.:?????????@:?????????@2
TimeDisDense1/IdentityN?
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/free~
dense/Tensordot/ShapeShape TimeDisDense1/IdentityN:output:0*
T0*
_output_shapes
:2
dense/Tensordot/Shape?
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2?
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack?
dense/Tensordot/transpose	Transpose TimeDisDense1/IdentityN:output:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
dense/Tensordot/transpose?
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense/Tensordot/Reshape?
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/Const_2?
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense/Tensordot?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense/BiasAddu
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^Attention/ReadVariableOp#^Attention/transpose/ReadVariableOp&^LSTM/lstm_cell/BiasAdd/ReadVariableOp%^LSTM/lstm_cell/MatMul/ReadVariableOp'^LSTM/lstm_cell/MatMul_1/ReadVariableOp^LSTM/while%^TimeDisDense1/BiasAdd/ReadVariableOp'^TimeDisDense1/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 24
Attention/ReadVariableOpAttention/ReadVariableOp2H
"Attention/transpose/ReadVariableOp"Attention/transpose/ReadVariableOp2N
%LSTM/lstm_cell/BiasAdd/ReadVariableOp%LSTM/lstm_cell/BiasAdd/ReadVariableOp2L
$LSTM/lstm_cell/MatMul/ReadVariableOp$LSTM/lstm_cell/MatMul/ReadVariableOp2P
&LSTM/lstm_cell/MatMul_1/ReadVariableOp&LSTM/lstm_cell/MatMul_1/ReadVariableOp2

LSTM/while
LSTM/while2L
$TimeDisDense1/BiasAdd/ReadVariableOp$TimeDisDense1/BiasAdd/ReadVariableOp2P
&TimeDisDense1/Tensordot/ReadVariableOp&TimeDisDense1/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?E
?
@__inference_LSTM_layer_call_and_return_conditional_losses_294597

inputs#
lstm_cell_294515:	?$
lstm_cell_294517:
??
lstm_cell_294519:	?
identity??!lstm_cell/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_294515lstm_cell_294517lstm_cell_294519*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_2945142#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_294515lstm_cell_294517lstm_cell_294519*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_294528*
condR
while_cond_294527*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimex
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityz
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?1
?
E__inference_Attention_layer_call_and_return_conditional_losses_295514

inputs3
shape_2_readvariableop_resource:
??%
readvariableop_resource:

identity_1??ReadVariableOp?transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceH
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack?
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"?   ?   2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
??2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
??2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:??????????2
MatMulh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_2/shape/1i
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_2/shape/2?
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape?
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2

MatMul_1S
Shape_3ShapeMatMul_1:output:0*
T0*
_output_shapes
:2	
Shape_3t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpx
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1v
addAddV2MatMul_1:output:0strided_slice_1:output:0*
T0*+
_output_shapes
:?????????2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:?????????2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:?????????2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????2

Identity?
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-295498*B
_output_shapes0
.:?????????:?????????2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Max/reduction_indices?
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:?????????2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:?????????2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indices?
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:?????????2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:??????????2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4u

Identity_1IdentityMatMul_2:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1z
NoOpNoOp^ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
E__inference_lstm_cell_layer_call_and_return_conditional_losses_297526

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-297507*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-297516*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4i

Identity_2Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2i

Identity_3Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_3i

Identity_4Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_4?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
while_cond_296747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_296747___redundant_placeholder04
0while_while_cond_296747___redundant_placeholder14
0while_while_cond_296747___redundant_placeholder24
0while_while_cond_296747___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?$
?
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_295362

inputs4
!tensordot_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@

identity_1??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
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
Tensordot/GatherV2/axis?
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
Tensordot/GatherV2_1/axis?
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
Tensordot/Const?
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
Tensordot/Const_1?
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
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAdde
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:?????????@2	
Sigmoidf
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*+
_output_shapes
:?????????@2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-295355*B
_output_shapes0
.:?????????@:?????????@2
	IdentityNu

Identity_1IdentityIdentityN:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?b
?
@__inference_LSTM_layer_call_and_return_conditional_losses_297184

inputs;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2?
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity?
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-297070*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN?
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1?
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_4?
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3?
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity_1?
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-297079*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN_1?
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_297090*
condR
while_cond_297089*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
while_body_294748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_294772_0:	?,
while_lstm_cell_294774_0:
??'
while_lstm_cell_294776_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_294772:	?*
while_lstm_cell_294774:
??%
while_lstm_cell_294776:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_294772_0while_lstm_cell_294774_0while_lstm_cell_294776_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_2946702)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_294772while_lstm_cell_294772_0"2
while_lstm_cell_294774while_lstm_cell_294774_0"2
while_lstm_cell_294776while_lstm_cell_294776_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?F
?
while_body_296577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity?
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296619*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_3?
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_4?
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity_1?
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296628*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN_1?
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_4:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?N
?	
LSTM_while_body_296250&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
5lstm_while_lstm_cell_matmul_readvariableop_resource_0:	?K
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
??E
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
3lstm_while_lstm_cell_matmul_readvariableop_resource:	?I
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:
??C
4lstm_while_lstm_cell_biasadd_readvariableop_resource:	???+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp?*LSTM/while/lstm_cell/MatMul/ReadVariableOp?,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp?
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.LSTM/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderELSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype020
.LSTM/while/TensorArrayV2Read/TensorListGetItem?
*LSTM/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02,
*LSTM/while/lstm_cell/MatMul/ReadVariableOp?
LSTM/while/lstm_cell/MatMulMatMul5LSTM/while/TensorArrayV2Read/TensorListGetItem:item:02LSTM/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/MatMul?
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp?
LSTM/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24LSTM/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/MatMul_1?
LSTM/while/lstm_cell/addAddV2%LSTM/while/lstm_cell/MatMul:product:0'LSTM/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/add?
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02-
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp?
LSTM/while/lstm_cell/BiasAddBiasAddLSTM/while/lstm_cell/add:z:03LSTM/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/BiasAdd?
$LSTM/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$LSTM/while/lstm_cell/split/split_dim?
LSTM/while/lstm_cell/splitSplit-LSTM/while/lstm_cell/split/split_dim:output:0%LSTM/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
LSTM/while/lstm_cell/split?
LSTM/while/lstm_cell/SigmoidSigmoid#LSTM/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/Sigmoid?
LSTM/while/lstm_cell/Sigmoid_1Sigmoid#LSTM/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_1?
LSTM/while/lstm_cell/mulMul"LSTM/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul?
LSTM/while/lstm_cell/Sigmoid_2Sigmoid#LSTM/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_2?
LSTM/while/lstm_cell/mul_1Mul#LSTM/while/lstm_cell/split:output:2"LSTM/while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_1?
LSTM/while/lstm_cell/IdentityIdentityLSTM/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/Identity?
LSTM/while/lstm_cell/IdentityN	IdentityNLSTM/while/lstm_cell/mul_1:z:0#LSTM/while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296292*<
_output_shapes*
(:??????????:??????????2 
LSTM/while/lstm_cell/IdentityN?
LSTM/while/lstm_cell/mul_2Mul LSTM/while/lstm_cell/Sigmoid:y:0'LSTM/while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_2?
LSTM/while/lstm_cell/add_1AddV2LSTM/while/lstm_cell/mul:z:0LSTM/while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/add_1?
LSTM/while/lstm_cell/Sigmoid_3Sigmoid#LSTM/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_3?
LSTM/while/lstm_cell/Sigmoid_4SigmoidLSTM/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_4?
LSTM/while/lstm_cell/mul_3MulLSTM/while/lstm_cell/add_1:z:0"LSTM/while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_3?
LSTM/while/lstm_cell/Identity_1IdentityLSTM/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2!
LSTM/while/lstm_cell/Identity_1?
 LSTM/while/lstm_cell/IdentityN_1	IdentityNLSTM/while/lstm_cell/mul_3:z:0LSTM/while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296301*<
_output_shapes*
(:??????????:??????????2"
 LSTM/while/lstm_cell/IdentityN_1?
LSTM/while/lstm_cell/mul_4Mul"LSTM/while/lstm_cell/Sigmoid_3:y:0)LSTM/while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_4?
/LSTM/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderLSTM/while/lstm_cell/mul_4:z:0*
_output_shapes
: *
element_dtype021
/LSTM/while/TensorArrayV2Write/TensorListSetItemf
LSTM/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/while/add/y}
LSTM/while/addAddV2lstm_while_placeholderLSTM/while/add/y:output:0*
T0*
_output_shapes
: 2
LSTM/while/addj
LSTM/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/while/add_1/y?
LSTM/while/add_1AddV2"lstm_while_lstm_while_loop_counterLSTM/while/add_1/y:output:0*
T0*
_output_shapes
: 2
LSTM/while/add_1
LSTM/while/IdentityIdentityLSTM/while/add_1:z:0^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity?
LSTM/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_1?
LSTM/while/Identity_2IdentityLSTM/while/add:z:0^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_2?
LSTM/while/Identity_3Identity?LSTM/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_3?
LSTM/while/Identity_4IdentityLSTM/while/lstm_cell/mul_4:z:0^LSTM/while/NoOp*
T0*(
_output_shapes
:??????????2
LSTM/while/Identity_4?
LSTM/while/Identity_5IdentityLSTM/while/lstm_cell/add_1:z:0^LSTM/while/NoOp*
T0*(
_output_shapes
:??????????2
LSTM/while/Identity_5?
LSTM/while/NoOpNoOp,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
LSTM/while/NoOp"3
lstm_while_identityLSTM/while/Identity:output:0"7
lstm_while_identity_1LSTM/while/Identity_1:output:0"7
lstm_while_identity_2LSTM/while/Identity_2:output:0"7
lstm_while_identity_3LSTM/while/Identity_3:output:0"7
lstm_while_identity_4LSTM/while/Identity_4:output:0"7
lstm_while_identity_5LSTM/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2Z
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp2X
*LSTM/while/lstm_cell/MatMul/ReadVariableOp*LSTM/while/lstm_cell/MatMul/ReadVariableOp2\
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_LSTM_layer_call_fn_297195
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2945972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?b
?
@__inference_LSTM_layer_call_and_return_conditional_losses_296842
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2?
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity?
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296728*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN?
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1?
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_4?
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3?
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity_1?
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296737*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN_1?
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_296748*
condR
while_cond_296747*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimex
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
LSTM_while_cond_296249&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_296249___redundant_placeholder0>
:lstm_while_lstm_while_cond_296249___redundant_placeholder1>
:lstm_while_lstm_while_cond_296249___redundant_placeholder2>
:lstm_while_lstm_while_cond_296249___redundant_placeholder3
lstm_while_identity
?
LSTM/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
LSTM/while/Lessl
LSTM/while/IdentityIdentityLSTM/while/Less:z:0*
T0
*
_output_shapes
: 2
LSTM/while/Identity"3
lstm_while_identityLSTM/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
&__inference_model_layer_call_fn_295809

input_attn
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
	unknown_4:	?@
	unknown_5:@
	unknown_6:@
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall
input_attnunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2957652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
input_attn
?b
?
@__inference_LSTM_layer_call_and_return_conditional_losses_296671
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2?
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity?
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296557*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN?
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1?
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_4?
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3?
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity_1?
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296566*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN_1?
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_296577*
condR
while_cond_296576*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimex
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?F
?
while_body_297090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity?
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-297132*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_3?
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_4?
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity_1?
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-297141*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN_1?
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_4:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?1
?
E__inference_Attention_layer_call_and_return_conditional_losses_297284

inputs3
shape_2_readvariableop_resource:
??%
readvariableop_resource:

identity_1??ReadVariableOp?transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceH
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack?
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"?   ?   2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
??2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
??2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:??????????2
MatMulh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_2/shape/1i
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_2/shape/2?
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape?
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2

MatMul_1S
Shape_3ShapeMatMul_1:output:0*
T0*
_output_shapes
:2	
Shape_3t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpx
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1v
addAddV2MatMul_1:output:0strided_slice_1:output:0*
T0*+
_output_shapes
:?????????2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:?????????2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:?????????2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????2

Identity?
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-297268*B
_output_shapes0
.:?????????:?????????2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Max/reduction_indices?
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:?????????2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:?????????2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indices?
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:?????????2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:??????????2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4u

Identity_1IdentityMatMul_2:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1z
NoOpNoOp^ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?1
?
E__inference_Attention_layer_call_and_return_conditional_losses_297340

inputs3
shape_2_readvariableop_resource:
??%
readvariableop_resource:

identity_1??ReadVariableOp?transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceH
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack?
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"?   ?   2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
??2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
??2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:??????????2
MatMulh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_2/shape/1i
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_2/shape/2?
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape?
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2

MatMul_1S
Shape_3ShapeMatMul_1:output:0*
T0*
_output_shapes
:2	
Shape_3t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpx
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1v
addAddV2MatMul_1:output:0strided_slice_1:output:0*
T0*+
_output_shapes
:?????????2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:?????????2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:?????????2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????2

Identity?
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-297324*B
_output_shapes0
.:?????????:?????????2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Max/reduction_indices?
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:?????????2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:?????????2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indices?
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:?????????2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:??????????2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4u

Identity_1IdentityMatMul_2:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1z
NoOpNoOp^ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?E
?
@__inference_LSTM_layer_call_and_return_conditional_losses_294817

inputs#
lstm_cell_294735:	?$
lstm_cell_294737:
??
lstm_cell_294739:	?
identity??!lstm_cell/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_294735lstm_cell_294737lstm_cell_294739*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_2946702#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_294735lstm_cell_294737lstm_cell_294739*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_294748*
condR
while_cond_294747*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimex
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityz
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
&__inference_dense_layer_call_fn_297442

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2953982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?%
?
while_body_294528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_294552_0:	?,
while_lstm_cell_294554_0:
??'
while_lstm_cell_294556_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_294552:	?*
while_lstm_cell_294554:
??%
while_lstm_cell_294556:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_294552_0while_lstm_cell_294554_0while_lstm_cell_294556_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_2945142)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_294552while_lstm_cell_294552_0"2
while_lstm_cell_294554while_lstm_cell_294554_0"2
while_lstm_cell_294556while_lstm_cell_294556_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?"
?
E__inference_lstm_cell_layer_call_and_return_conditional_losses_294514

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-294495*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-294504*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4i

Identity_2Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2i

Identity_3Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_3i

Identity_4Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_4?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
.__inference_TimeDisDense1_layer_call_fn_297403

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_2953622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_294747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_294747___redundant_placeholder04
0while_while_cond_294747___redundant_placeholder14
0while_while_cond_294747___redundant_placeholder24
0while_while_cond_294747___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_297089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_297089___redundant_placeholder04
0while_while_cond_297089___redundant_placeholder14
0while_while_cond_297089___redundant_placeholder24
0while_while_cond_297089___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_Attention_layer_call_fn_297349

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_2953202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_cell_layer_call_fn_297560

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_2946702
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
while_cond_296576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_296576___redundant_placeholder04
0while_while_cond_296576___redundant_placeholder14
0while_while_cond_296576___redundant_placeholder24
0while_while_cond_296576___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?F
?
while_body_296919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity?
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296961*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_3?
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_4?
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity_1?
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296970*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN_1?
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_4:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
$__inference_signature_wrapper_295892

input_attn
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
	unknown_4:	?@
	unknown_5:@
	unknown_6:@
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall
input_attnunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2944292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
input_attn
?W
?
model_LSTM_while_body_2942252
.model_lstm_while_model_lstm_while_loop_counter8
4model_lstm_while_model_lstm_while_maximum_iterations 
model_lstm_while_placeholder"
model_lstm_while_placeholder_1"
model_lstm_while_placeholder_2"
model_lstm_while_placeholder_31
-model_lstm_while_model_lstm_strided_slice_1_0m
imodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensor_0N
;model_lstm_while_lstm_cell_matmul_readvariableop_resource_0:	?Q
=model_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
??K
<model_lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	?
model_lstm_while_identity
model_lstm_while_identity_1
model_lstm_while_identity_2
model_lstm_while_identity_3
model_lstm_while_identity_4
model_lstm_while_identity_5/
+model_lstm_while_model_lstm_strided_slice_1k
gmodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensorL
9model_lstm_while_lstm_cell_matmul_readvariableop_resource:	?O
;model_lstm_while_lstm_cell_matmul_1_readvariableop_resource:
??I
:model_lstm_while_lstm_cell_biasadd_readvariableop_resource:	???1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp?0model/LSTM/while/lstm_cell/MatMul/ReadVariableOp?2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp?
Bmodel/LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2D
Bmodel/LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape?
4model/LSTM/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemimodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensor_0model_lstm_while_placeholderKmodel/LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype026
4model/LSTM/while/TensorArrayV2Read/TensorListGetItem?
0model/LSTM/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp;model_lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0model/LSTM/while/lstm_cell/MatMul/ReadVariableOp?
!model/LSTM/while/lstm_cell/MatMulMatMul;model/LSTM/while/TensorArrayV2Read/TensorListGetItem:item:08model/LSTM/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!model/LSTM/while/lstm_cell/MatMul?
2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp=model_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp?
#model/LSTM/while/lstm_cell/MatMul_1MatMulmodel_lstm_while_placeholder_2:model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#model/LSTM/while/lstm_cell/MatMul_1?
model/LSTM/while/lstm_cell/addAddV2+model/LSTM/while/lstm_cell/MatMul:product:0-model/LSTM/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
model/LSTM/while/lstm_cell/add?
1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp<model_lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp?
"model/LSTM/while/lstm_cell/BiasAddBiasAdd"model/LSTM/while/lstm_cell/add:z:09model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"model/LSTM/while/lstm_cell/BiasAdd?
*model/LSTM/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model/LSTM/while/lstm_cell/split/split_dim?
 model/LSTM/while/lstm_cell/splitSplit3model/LSTM/while/lstm_cell/split/split_dim:output:0+model/LSTM/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 model/LSTM/while/lstm_cell/split?
"model/LSTM/while/lstm_cell/SigmoidSigmoid)model/LSTM/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2$
"model/LSTM/while/lstm_cell/Sigmoid?
$model/LSTM/while/lstm_cell/Sigmoid_1Sigmoid)model/LSTM/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2&
$model/LSTM/while/lstm_cell/Sigmoid_1?
model/LSTM/while/lstm_cell/mulMul(model/LSTM/while/lstm_cell/Sigmoid_1:y:0model_lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
model/LSTM/while/lstm_cell/mul?
$model/LSTM/while/lstm_cell/Sigmoid_2Sigmoid)model/LSTM/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2&
$model/LSTM/while/lstm_cell/Sigmoid_2?
 model/LSTM/while/lstm_cell/mul_1Mul)model/LSTM/while/lstm_cell/split:output:2(model/LSTM/while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2"
 model/LSTM/while/lstm_cell/mul_1?
#model/LSTM/while/lstm_cell/IdentityIdentity$model/LSTM/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2%
#model/LSTM/while/lstm_cell/Identity?
$model/LSTM/while/lstm_cell/IdentityN	IdentityN$model/LSTM/while/lstm_cell/mul_1:z:0)model/LSTM/while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-294267*<
_output_shapes*
(:??????????:??????????2&
$model/LSTM/while/lstm_cell/IdentityN?
 model/LSTM/while/lstm_cell/mul_2Mul&model/LSTM/while/lstm_cell/Sigmoid:y:0-model/LSTM/while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2"
 model/LSTM/while/lstm_cell/mul_2?
 model/LSTM/while/lstm_cell/add_1AddV2"model/LSTM/while/lstm_cell/mul:z:0$model/LSTM/while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2"
 model/LSTM/while/lstm_cell/add_1?
$model/LSTM/while/lstm_cell/Sigmoid_3Sigmoid)model/LSTM/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2&
$model/LSTM/while/lstm_cell/Sigmoid_3?
$model/LSTM/while/lstm_cell/Sigmoid_4Sigmoid$model/LSTM/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$model/LSTM/while/lstm_cell/Sigmoid_4?
 model/LSTM/while/lstm_cell/mul_3Mul$model/LSTM/while/lstm_cell/add_1:z:0(model/LSTM/while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2"
 model/LSTM/while/lstm_cell/mul_3?
%model/LSTM/while/lstm_cell/Identity_1Identity$model/LSTM/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2'
%model/LSTM/while/lstm_cell/Identity_1?
&model/LSTM/while/lstm_cell/IdentityN_1	IdentityN$model/LSTM/while/lstm_cell/mul_3:z:0$model/LSTM/while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-294276*<
_output_shapes*
(:??????????:??????????2(
&model/LSTM/while/lstm_cell/IdentityN_1?
 model/LSTM/while/lstm_cell/mul_4Mul(model/LSTM/while/lstm_cell/Sigmoid_3:y:0/model/LSTM/while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2"
 model/LSTM/while/lstm_cell/mul_4?
5model/LSTM/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_lstm_while_placeholder_1model_lstm_while_placeholder$model/LSTM/while/lstm_cell/mul_4:z:0*
_output_shapes
: *
element_dtype027
5model/LSTM/while/TensorArrayV2Write/TensorListSetItemr
model/LSTM/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
model/LSTM/while/add/y?
model/LSTM/while/addAddV2model_lstm_while_placeholdermodel/LSTM/while/add/y:output:0*
T0*
_output_shapes
: 2
model/LSTM/while/addv
model/LSTM/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
model/LSTM/while/add_1/y?
model/LSTM/while/add_1AddV2.model_lstm_while_model_lstm_while_loop_counter!model/LSTM/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model/LSTM/while/add_1?
model/LSTM/while/IdentityIdentitymodel/LSTM/while/add_1:z:0^model/LSTM/while/NoOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity?
model/LSTM/while/Identity_1Identity4model_lstm_while_model_lstm_while_maximum_iterations^model/LSTM/while/NoOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity_1?
model/LSTM/while/Identity_2Identitymodel/LSTM/while/add:z:0^model/LSTM/while/NoOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity_2?
model/LSTM/while/Identity_3IdentityEmodel/LSTM/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model/LSTM/while/NoOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity_3?
model/LSTM/while/Identity_4Identity$model/LSTM/while/lstm_cell/mul_4:z:0^model/LSTM/while/NoOp*
T0*(
_output_shapes
:??????????2
model/LSTM/while/Identity_4?
model/LSTM/while/Identity_5Identity$model/LSTM/while/lstm_cell/add_1:z:0^model/LSTM/while/NoOp*
T0*(
_output_shapes
:??????????2
model/LSTM/while/Identity_5?
model/LSTM/while/NoOpNoOp2^model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1^model/LSTM/while/lstm_cell/MatMul/ReadVariableOp3^model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
model/LSTM/while/NoOp"?
model_lstm_while_identity"model/LSTM/while/Identity:output:0"C
model_lstm_while_identity_1$model/LSTM/while/Identity_1:output:0"C
model_lstm_while_identity_2$model/LSTM/while/Identity_2:output:0"C
model_lstm_while_identity_3$model/LSTM/while/Identity_3:output:0"C
model_lstm_while_identity_4$model/LSTM/while/Identity_4:output:0"C
model_lstm_while_identity_5$model/LSTM/while/Identity_5:output:0"z
:model_lstm_while_lstm_cell_biasadd_readvariableop_resource<model_lstm_while_lstm_cell_biasadd_readvariableop_resource_0"|
;model_lstm_while_lstm_cell_matmul_1_readvariableop_resource=model_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"x
9model_lstm_while_lstm_cell_matmul_readvariableop_resource;model_lstm_while_lstm_cell_matmul_readvariableop_resource_0"\
+model_lstm_while_model_lstm_strided_slice_1-model_lstm_while_model_lstm_strided_slice_1_0"?
gmodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensorimodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2f
1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp2d
0model/LSTM/while/lstm_cell/MatMul/ReadVariableOp0model/LSTM/while/lstm_cell/MatMul/ReadVariableOp2h
2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?1
?
E__inference_Attention_layer_call_and_return_conditional_losses_295320

inputs3
shape_2_readvariableop_resource:
??%
readvariableop_resource:

identity_1??ReadVariableOp?transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceH
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack?
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"?   ?   2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm?
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
??2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
??2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:??????????2
MatMulh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_2/shape/1i
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_2/shape/2?
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape?
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1?
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:?????????2

MatMul_1S
Shape_3ShapeMatMul_1:output:0*
T0*
_output_shapes
:2	
Shape_3t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpx
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1v
addAddV2MatMul_1:output:0strided_slice_1:output:0*
T0*+
_output_shapes
:?????????2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:?????????2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:?????????2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????2

Identity?
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-295304*B
_output_shapes0
.:?????????:?????????2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Max/reduction_indices?
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:?????????2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:?????????2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indices?
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:?????????2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:??????????2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4u

Identity_1IdentityMatMul_2:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1z
NoOpNoOp^ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?b
?
@__inference_LSTM_layer_call_and_return_conditional_losses_295256

inputs;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2?
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity?
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-295142*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN?
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1?
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_4?
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3?
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity_1?
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-295151*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN_1?
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_295162*
condR
while_cond_295161*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
E__inference_lstm_cell_layer_call_and_return_conditional_losses_297484

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-297465*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-297474*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4i

Identity_2Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2i

Identity_3Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_3i

Identity_4Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_4?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
? 
?
A__inference_dense_layer_call_and_return_conditional_losses_295398

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
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
Tensordot/GatherV2/axis?
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
Tensordot/GatherV2_1/axis?
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
Tensordot/Const?
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
Tensordot/Const_1?
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
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
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
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
A__inference_model_layer_call_and_return_conditional_losses_296173

inputs@
-lstm_lstm_cell_matmul_readvariableop_resource:	?C
/lstm_lstm_cell_matmul_1_readvariableop_resource:
??=
.lstm_lstm_cell_biasadd_readvariableop_resource:	?=
)attention_shape_2_readvariableop_resource:
??/
!attention_readvariableop_resource:B
/timedisdense1_tensordot_readvariableop_resource:	?@;
-timedisdense1_biasadd_readvariableop_resource:@9
'dense_tensordot_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??Attention/ReadVariableOp?"Attention/transpose/ReadVariableOp?%LSTM/lstm_cell/BiasAdd/ReadVariableOp?$LSTM/lstm_cell/MatMul/ReadVariableOp?&LSTM/lstm_cell/MatMul_1/ReadVariableOp?
LSTM/while?$TimeDisDense1/BiasAdd/ReadVariableOp?&TimeDisDense1/Tensordot/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOpN

LSTM/ShapeShapeinputs*
T0*
_output_shapes
:2

LSTM/Shape~
LSTM/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice/stack?
LSTM/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_1?
LSTM/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_2?
LSTM/strided_sliceStridedSliceLSTM/Shape:output:0!LSTM/strided_slice/stack:output:0#LSTM/strided_slice/stack_1:output:0#LSTM/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
LSTM/strided_sliceg
LSTM/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros/mul/y?
LSTM/zeros/mulMulLSTM/strided_slice:output:0LSTM/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros/muli
LSTM/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros/Less/y{
LSTM/zeros/LessLessLSTM/zeros/mul:z:0LSTM/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros/Lessm
LSTM/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros/packed/1?
LSTM/zeros/packedPackLSTM/strided_slice:output:0LSTM/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
LSTM/zeros/packedi
LSTM/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LSTM/zeros/Const?

LSTM/zerosFillLSTM/zeros/packed:output:0LSTM/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2

LSTM/zerosk
LSTM/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros_1/mul/y?
LSTM/zeros_1/mulMulLSTM/strided_slice:output:0LSTM/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros_1/mulm
LSTM/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros_1/Less/y?
LSTM/zeros_1/LessLessLSTM/zeros_1/mul:z:0LSTM/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
LSTM/zeros_1/Lessq
LSTM/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
LSTM/zeros_1/packed/1?
LSTM/zeros_1/packedPackLSTM/strided_slice:output:0LSTM/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
LSTM/zeros_1/packedm
LSTM/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
LSTM/zeros_1/Const?
LSTM/zeros_1FillLSTM/zeros_1/packed:output:0LSTM/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
LSTM/zeros_1
LSTM/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose/perm?
LSTM/transpose	TransposeinputsLSTM/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
LSTM/transpose^
LSTM/Shape_1ShapeLSTM/transpose:y:0*
T0*
_output_shapes
:2
LSTM/Shape_1?
LSTM/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_1/stack?
LSTM/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_1?
LSTM/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_2?
LSTM/strided_slice_1StridedSliceLSTM/Shape_1:output:0#LSTM/strided_slice_1/stack:output:0%LSTM/strided_slice_1/stack_1:output:0%LSTM/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
LSTM/strided_slice_1?
 LSTM/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 LSTM/TensorArrayV2/element_shape?
LSTM/TensorArrayV2TensorListReserve)LSTM/TensorArrayV2/element_shape:output:0LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
LSTM/TensorArrayV2?
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2<
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape?
,LSTM/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorLSTM/transpose:y:0CLSTM/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,LSTM/TensorArrayUnstack/TensorListFromTensor?
LSTM/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_2/stack?
LSTM/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_1?
LSTM/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_2?
LSTM/strided_slice_2StridedSliceLSTM/transpose:y:0#LSTM/strided_slice_2/stack:output:0%LSTM/strided_slice_2/stack_1:output:0%LSTM/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
LSTM/strided_slice_2?
$LSTM/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02&
$LSTM/lstm_cell/MatMul/ReadVariableOp?
LSTM/lstm_cell/MatMulMatMulLSTM/strided_slice_2:output:0,LSTM/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/MatMul?
&LSTM/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&LSTM/lstm_cell/MatMul_1/ReadVariableOp?
LSTM/lstm_cell/MatMul_1MatMulLSTM/zeros:output:0.LSTM/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/MatMul_1?
LSTM/lstm_cell/addAddV2LSTM/lstm_cell/MatMul:product:0!LSTM/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/add?
%LSTM/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%LSTM/lstm_cell/BiasAdd/ReadVariableOp?
LSTM/lstm_cell/BiasAddBiasAddLSTM/lstm_cell/add:z:0-LSTM/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/BiasAdd?
LSTM/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
LSTM/lstm_cell/split/split_dim?
LSTM/lstm_cell/splitSplit'LSTM/lstm_cell/split/split_dim:output:0LSTM/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
LSTM/lstm_cell/split?
LSTM/lstm_cell/SigmoidSigmoidLSTM/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid?
LSTM/lstm_cell/Sigmoid_1SigmoidLSTM/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_1?
LSTM/lstm_cell/mulMulLSTM/lstm_cell/Sigmoid_1:y:0LSTM/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul?
LSTM/lstm_cell/Sigmoid_2SigmoidLSTM/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_2?
LSTM/lstm_cell/mul_1MulLSTM/lstm_cell/split:output:2LSTM/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_1?
LSTM/lstm_cell/IdentityIdentityLSTM/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Identity?
LSTM/lstm_cell/IdentityN	IdentityNLSTM/lstm_cell/mul_1:z:0LSTM/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-295949*<
_output_shapes*
(:??????????:??????????2
LSTM/lstm_cell/IdentityN?
LSTM/lstm_cell/mul_2MulLSTM/lstm_cell/Sigmoid:y:0!LSTM/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_2?
LSTM/lstm_cell/add_1AddV2LSTM/lstm_cell/mul:z:0LSTM/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/add_1?
LSTM/lstm_cell/Sigmoid_3SigmoidLSTM/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_3?
LSTM/lstm_cell/Sigmoid_4SigmoidLSTM/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Sigmoid_4?
LSTM/lstm_cell/mul_3MulLSTM/lstm_cell/add_1:z:0LSTM/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_3?
LSTM/lstm_cell/Identity_1IdentityLSTM/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/Identity_1?
LSTM/lstm_cell/IdentityN_1	IdentityNLSTM/lstm_cell/mul_3:z:0LSTM/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-295958*<
_output_shapes*
(:??????????:??????????2
LSTM/lstm_cell/IdentityN_1?
LSTM/lstm_cell/mul_4MulLSTM/lstm_cell/Sigmoid_3:y:0#LSTM/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
LSTM/lstm_cell/mul_4?
"LSTM/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"LSTM/TensorArrayV2_1/element_shape?
LSTM/TensorArrayV2_1TensorListReserve+LSTM/TensorArrayV2_1/element_shape:output:0LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
LSTM/TensorArrayV2_1X
	LSTM/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	LSTM/time?
LSTM/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
LSTM/while/maximum_iterationst
LSTM/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
LSTM/while/loop_counter?

LSTM/whileWhile LSTM/while/loop_counter:output:0&LSTM/while/maximum_iterations:output:0LSTM/time:output:0LSTM/TensorArrayV2_1:handle:0LSTM/zeros:output:0LSTM/zeros_1:output:0LSTM/strided_slice_1:output:0<LSTM/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
LSTM_while_body_295969*"
condR
LSTM_while_cond_295968*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2

LSTM/while?
5LSTM/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5LSTM/TensorArrayV2Stack/TensorListStack/element_shape?
'LSTM/TensorArrayV2Stack/TensorListStackTensorListStackLSTM/while:output:3>LSTM/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02)
'LSTM/TensorArrayV2Stack/TensorListStack?
LSTM/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
LSTM/strided_slice_3/stack?
LSTM/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_3/stack_1?
LSTM/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_3/stack_2?
LSTM/strided_slice_3StridedSlice0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0#LSTM/strided_slice_3/stack:output:0%LSTM/strided_slice_3/stack_1:output:0%LSTM/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
LSTM/strided_slice_3?
LSTM/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose_1/perm?
LSTM/transpose_1	Transpose0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0LSTM/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
LSTM/transpose_1p
LSTM/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
LSTM/runtimef
Attention/ShapeShapeLSTM/transpose_1:y:0*
T0*
_output_shapes
:2
Attention/Shape?
Attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Attention/strided_slice/stack?
Attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_1?
Attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_2?
Attention/strided_sliceStridedSliceAttention/Shape:output:0&Attention/strided_slice/stack:output:0(Attention/strided_slice/stack_1:output:0(Attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Attention/strided_slicej
Attention/Shape_1ShapeLSTM/transpose_1:y:0*
T0*
_output_shapes
:2
Attention/Shape_1|
Attention/unstackUnpackAttention/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
Attention/unstack?
 Attention/Shape_2/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 Attention/Shape_2/ReadVariableOpw
Attention/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"?   ?   2
Attention/Shape_2~
Attention/unstack_1UnpackAttention/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
Attention/unstack_1?
Attention/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Attention/Reshape/shape?
Attention/ReshapeReshapeLSTM/transpose_1:y:0 Attention/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
Attention/Reshape?
"Attention/transpose/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"Attention/transpose/ReadVariableOp?
Attention/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
Attention/transpose/perm?
Attention/transpose	Transpose*Attention/transpose/ReadVariableOp:value:0!Attention/transpose/perm:output:0*
T0* 
_output_shapes
:
??2
Attention/transpose?
Attention/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????2
Attention/Reshape_1/shape?
Attention/Reshape_1ReshapeAttention/transpose:y:0"Attention/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
??2
Attention/Reshape_1?
Attention/MatMulMatMulAttention/Reshape:output:0Attention/Reshape_1:output:0*
T0*(
_output_shapes
:??????????2
Attention/MatMul|
Attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Attention/Reshape_2/shape/1}
Attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Attention/Reshape_2/shape/2?
Attention/Reshape_2/shapePackAttention/unstack:output:0$Attention/Reshape_2/shape/1:output:0$Attention/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Attention/Reshape_2/shape?
Attention/Reshape_2ReshapeAttention/MatMul:product:0"Attention/Reshape_2/shape:output:0*
T0*,
_output_shapes
:??????????2
Attention/Reshape_2?
Attention/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
Attention/transpose_1/perm?
Attention/transpose_1	TransposeLSTM/transpose_1:y:0#Attention/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
Attention/transpose_1?
Attention/MatMul_1BatchMatMulV2Attention/Reshape_2:output:0Attention/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
Attention/MatMul_1q
Attention/Shape_3ShapeAttention/MatMul_1:output:0*
T0*
_output_shapes
:2
Attention/Shape_3?
Attention/ReadVariableOpReadVariableOp!attention_readvariableop_resource*
_output_shapes
:*
dtype02
Attention/ReadVariableOp?
Attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
Attention/strided_slice_1/stack?
!Attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_1?
!Attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_2?
Attention/strided_slice_1StridedSlice Attention/ReadVariableOp:value:0(Attention/strided_slice_1/stack:output:0*Attention/strided_slice_1/stack_1:output:0*Attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Attention/strided_slice_1?
Attention/addAddV2Attention/MatMul_1:output:0"Attention/strided_slice_1:output:0*
T0*+
_output_shapes
:?????????2
Attention/addz
Attention/SigmoidSigmoidAttention/add:z:0*
T0*+
_output_shapes
:?????????2
Attention/Sigmoid?
Attention/mulMulAttention/add:z:0Attention/Sigmoid:y:0*
T0*+
_output_shapes
:?????????2
Attention/mul}
Attention/IdentityIdentityAttention/mul:z:0*
T0*+
_output_shapes
:?????????2
Attention/Identity?
Attention/IdentityN	IdentityNAttention/mul:z:0Attention/add:z:0*
T
2*,
_gradient_op_typeCustomGradient-296099*B
_output_shapes0
.:?????????:?????????2
Attention/IdentityN?
Attention/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
Attention/Max/reduction_indices?
Attention/MaxMaxAttention/IdentityN:output:0(Attention/Max/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Attention/Max?
Attention/subSubAttention/IdentityN:output:0Attention/Max:output:0*
T0*+
_output_shapes
:?????????2
Attention/subn
Attention/ExpExpAttention/sub:z:0*
T0*+
_output_shapes
:?????????2
Attention/Exp?
Attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
Attention/Sum/reduction_indices?
Attention/SumSumAttention/Exp:y:0(Attention/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2
Attention/Sum?
Attention/truedivRealDivAttention/Exp:y:0Attention/Sum:output:0*
T0*+
_output_shapes
:?????????2
Attention/truediv?
Attention/MatMul_2BatchMatMulV2Attention/truediv:z:0LSTM/transpose_1:y:0*
T0*,
_output_shapes
:??????????2
Attention/MatMul_2q
Attention/Shape_4ShapeAttention/MatMul_2:output:0*
T0*
_output_shapes
:2
Attention/Shape_4?
&TimeDisDense1/Tensordot/ReadVariableOpReadVariableOp/timedisdense1_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02(
&TimeDisDense1/Tensordot/ReadVariableOp?
TimeDisDense1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
TimeDisDense1/Tensordot/axes?
TimeDisDense1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
TimeDisDense1/Tensordot/free?
TimeDisDense1/Tensordot/ShapeShapeAttention/MatMul_2:output:0*
T0*
_output_shapes
:2
TimeDisDense1/Tensordot/Shape?
%TimeDisDense1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%TimeDisDense1/Tensordot/GatherV2/axis?
 TimeDisDense1/Tensordot/GatherV2GatherV2&TimeDisDense1/Tensordot/Shape:output:0%TimeDisDense1/Tensordot/free:output:0.TimeDisDense1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 TimeDisDense1/Tensordot/GatherV2?
'TimeDisDense1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'TimeDisDense1/Tensordot/GatherV2_1/axis?
"TimeDisDense1/Tensordot/GatherV2_1GatherV2&TimeDisDense1/Tensordot/Shape:output:0%TimeDisDense1/Tensordot/axes:output:00TimeDisDense1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"TimeDisDense1/Tensordot/GatherV2_1?
TimeDisDense1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
TimeDisDense1/Tensordot/Const?
TimeDisDense1/Tensordot/ProdProd)TimeDisDense1/Tensordot/GatherV2:output:0&TimeDisDense1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
TimeDisDense1/Tensordot/Prod?
TimeDisDense1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
TimeDisDense1/Tensordot/Const_1?
TimeDisDense1/Tensordot/Prod_1Prod+TimeDisDense1/Tensordot/GatherV2_1:output:0(TimeDisDense1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
TimeDisDense1/Tensordot/Prod_1?
#TimeDisDense1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#TimeDisDense1/Tensordot/concat/axis?
TimeDisDense1/Tensordot/concatConcatV2%TimeDisDense1/Tensordot/free:output:0%TimeDisDense1/Tensordot/axes:output:0,TimeDisDense1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
TimeDisDense1/Tensordot/concat?
TimeDisDense1/Tensordot/stackPack%TimeDisDense1/Tensordot/Prod:output:0'TimeDisDense1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
TimeDisDense1/Tensordot/stack?
!TimeDisDense1/Tensordot/transpose	TransposeAttention/MatMul_2:output:0'TimeDisDense1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2#
!TimeDisDense1/Tensordot/transpose?
TimeDisDense1/Tensordot/ReshapeReshape%TimeDisDense1/Tensordot/transpose:y:0&TimeDisDense1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2!
TimeDisDense1/Tensordot/Reshape?
TimeDisDense1/Tensordot/MatMulMatMul(TimeDisDense1/Tensordot/Reshape:output:0.TimeDisDense1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
TimeDisDense1/Tensordot/MatMul?
TimeDisDense1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
TimeDisDense1/Tensordot/Const_2?
%TimeDisDense1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%TimeDisDense1/Tensordot/concat_1/axis?
 TimeDisDense1/Tensordot/concat_1ConcatV2)TimeDisDense1/Tensordot/GatherV2:output:0(TimeDisDense1/Tensordot/Const_2:output:0.TimeDisDense1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 TimeDisDense1/Tensordot/concat_1?
TimeDisDense1/TensordotReshape(TimeDisDense1/Tensordot/MatMul:product:0)TimeDisDense1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/Tensordot?
$TimeDisDense1/BiasAdd/ReadVariableOpReadVariableOp-timedisdense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$TimeDisDense1/BiasAdd/ReadVariableOp?
TimeDisDense1/BiasAddBiasAdd TimeDisDense1/Tensordot:output:0,TimeDisDense1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/BiasAdd?
TimeDisDense1/SigmoidSigmoidTimeDisDense1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/Sigmoid?
TimeDisDense1/mulMulTimeDisDense1/BiasAdd:output:0TimeDisDense1/Sigmoid:y:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/mul?
TimeDisDense1/IdentityIdentityTimeDisDense1/mul:z:0*
T0*+
_output_shapes
:?????????@2
TimeDisDense1/Identity?
TimeDisDense1/IdentityN	IdentityNTimeDisDense1/mul:z:0TimeDisDense1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-296140*B
_output_shapes0
.:?????????@:?????????@2
TimeDisDense1/IdentityN?
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/free~
dense/Tensordot/ShapeShape TimeDisDense1/IdentityN:output:0*
T0*
_output_shapes
:2
dense/Tensordot/Shape?
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2?
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack?
dense/Tensordot/transpose	Transpose TimeDisDense1/IdentityN:output:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
dense/Tensordot/transpose?
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense/Tensordot/Reshape?
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/Const_2?
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense/Tensordot?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense/BiasAddu
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^Attention/ReadVariableOp#^Attention/transpose/ReadVariableOp&^LSTM/lstm_cell/BiasAdd/ReadVariableOp%^LSTM/lstm_cell/MatMul/ReadVariableOp'^LSTM/lstm_cell/MatMul_1/ReadVariableOp^LSTM/while%^TimeDisDense1/BiasAdd/ReadVariableOp'^TimeDisDense1/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 24
Attention/ReadVariableOpAttention/ReadVariableOp2H
"Attention/transpose/ReadVariableOp"Attention/transpose/ReadVariableOp2N
%LSTM/lstm_cell/BiasAdd/ReadVariableOp%LSTM/lstm_cell/BiasAdd/ReadVariableOp2L
$LSTM/lstm_cell/MatMul/ReadVariableOp$LSTM/lstm_cell/MatMul/ReadVariableOp2P
&LSTM/lstm_cell/MatMul_1/ReadVariableOp&LSTM/lstm_cell/MatMul_1/ReadVariableOp2

LSTM/while
LSTM/while2L
$TimeDisDense1/BiasAdd/ReadVariableOp$TimeDisDense1/BiasAdd/ReadVariableOp2P
&TimeDisDense1/Tensordot/ReadVariableOp&TimeDisDense1/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_295610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_295610___redundant_placeholder04
0while_while_cond_295610___redundant_placeholder14
0while_while_cond_295610___redundant_placeholder24
0while_while_cond_295610___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?F
?
while_body_295162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity?
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-295204*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_3?
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_4?
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity_1?
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-295213*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN_1?
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_4:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?F
?
while_body_295611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity?
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-295653*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_3?
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_4?
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity_1?
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-295662*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN_1?
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_4:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?F
?
while_body_296748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOp?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell/split?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity?
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296790*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_3?
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_4?
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Identity_1?
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296799*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell/IdentityN_1?
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_4:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?N
?	
LSTM_while_body_295969&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
5lstm_while_lstm_cell_matmul_readvariableop_resource_0:	?K
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
??E
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
3lstm_while_lstm_cell_matmul_readvariableop_resource:	?I
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:
??C
4lstm_while_lstm_cell_biasadd_readvariableop_resource:	???+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp?*LSTM/while/lstm_cell/MatMul/ReadVariableOp?,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp?
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.LSTM/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderELSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype020
.LSTM/while/TensorArrayV2Read/TensorListGetItem?
*LSTM/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02,
*LSTM/while/lstm_cell/MatMul/ReadVariableOp?
LSTM/while/lstm_cell/MatMulMatMul5LSTM/while/TensorArrayV2Read/TensorListGetItem:item:02LSTM/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/MatMul?
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp?
LSTM/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24LSTM/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/MatMul_1?
LSTM/while/lstm_cell/addAddV2%LSTM/while/lstm_cell/MatMul:product:0'LSTM/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/add?
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02-
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp?
LSTM/while/lstm_cell/BiasAddBiasAddLSTM/while/lstm_cell/add:z:03LSTM/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/BiasAdd?
$LSTM/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$LSTM/while/lstm_cell/split/split_dim?
LSTM/while/lstm_cell/splitSplit-LSTM/while/lstm_cell/split/split_dim:output:0%LSTM/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
LSTM/while/lstm_cell/split?
LSTM/while/lstm_cell/SigmoidSigmoid#LSTM/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/Sigmoid?
LSTM/while/lstm_cell/Sigmoid_1Sigmoid#LSTM/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_1?
LSTM/while/lstm_cell/mulMul"LSTM/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul?
LSTM/while/lstm_cell/Sigmoid_2Sigmoid#LSTM/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_2?
LSTM/while/lstm_cell/mul_1Mul#LSTM/while/lstm_cell/split:output:2"LSTM/while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_1?
LSTM/while/lstm_cell/IdentityIdentityLSTM/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/Identity?
LSTM/while/lstm_cell/IdentityN	IdentityNLSTM/while/lstm_cell/mul_1:z:0#LSTM/while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296011*<
_output_shapes*
(:??????????:??????????2 
LSTM/while/lstm_cell/IdentityN?
LSTM/while/lstm_cell/mul_2Mul LSTM/while/lstm_cell/Sigmoid:y:0'LSTM/while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_2?
LSTM/while/lstm_cell/add_1AddV2LSTM/while/lstm_cell/mul:z:0LSTM/while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/add_1?
LSTM/while/lstm_cell/Sigmoid_3Sigmoid#LSTM/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_3?
LSTM/while/lstm_cell/Sigmoid_4SigmoidLSTM/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2 
LSTM/while/lstm_cell/Sigmoid_4?
LSTM/while/lstm_cell/mul_3MulLSTM/while/lstm_cell/add_1:z:0"LSTM/while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_3?
LSTM/while/lstm_cell/Identity_1IdentityLSTM/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2!
LSTM/while/lstm_cell/Identity_1?
 LSTM/while/lstm_cell/IdentityN_1	IdentityNLSTM/while/lstm_cell/mul_3:z:0LSTM/while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296020*<
_output_shapes*
(:??????????:??????????2"
 LSTM/while/lstm_cell/IdentityN_1?
LSTM/while/lstm_cell/mul_4Mul"LSTM/while/lstm_cell/Sigmoid_3:y:0)LSTM/while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
LSTM/while/lstm_cell/mul_4?
/LSTM/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderLSTM/while/lstm_cell/mul_4:z:0*
_output_shapes
: *
element_dtype021
/LSTM/while/TensorArrayV2Write/TensorListSetItemf
LSTM/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/while/add/y}
LSTM/while/addAddV2lstm_while_placeholderLSTM/while/add/y:output:0*
T0*
_output_shapes
: 2
LSTM/while/addj
LSTM/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/while/add_1/y?
LSTM/while/add_1AddV2"lstm_while_lstm_while_loop_counterLSTM/while/add_1/y:output:0*
T0*
_output_shapes
: 2
LSTM/while/add_1
LSTM/while/IdentityIdentityLSTM/while/add_1:z:0^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity?
LSTM/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_1?
LSTM/while/Identity_2IdentityLSTM/while/add:z:0^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_2?
LSTM/while/Identity_3Identity?LSTM/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^LSTM/while/NoOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_3?
LSTM/while/Identity_4IdentityLSTM/while/lstm_cell/mul_4:z:0^LSTM/while/NoOp*
T0*(
_output_shapes
:??????????2
LSTM/while/Identity_4?
LSTM/while/Identity_5IdentityLSTM/while/lstm_cell/add_1:z:0^LSTM/while/NoOp*
T0*(
_output_shapes
:??????????2
LSTM/while/Identity_5?
LSTM/while/NoOpNoOp,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
LSTM/while/NoOp"3
lstm_while_identityLSTM/while/Identity:output:0"7
lstm_while_identity_1LSTM/while/Identity_1:output:0"7
lstm_while_identity_2LSTM/while/Identity_2:output:0"7
lstm_while_identity_3LSTM/while/Identity_3:output:0"7
lstm_while_identity_4LSTM/while/Identity_4:output:0"7
lstm_while_identity_5LSTM/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2Z
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp2X
*LSTM/while/lstm_cell/MatMul/ReadVariableOp*LSTM/while/lstm_cell/MatMul/ReadVariableOp2\
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp,LSTM/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?b
?
@__inference_LSTM_layer_call_and_return_conditional_losses_297013

inputs;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2?
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity?
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-296899*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN?
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1?
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_4?
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3?
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity_1?
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-296908*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN_1?
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_296919*
condR
while_cond_296918*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_297821
file_prefix?
+assignvariableop_attention_attention_mul_wa:
??;
-assignvariableop_1_attention_attention_mul_ba::
'assignvariableop_2_timedisdense1_kernel:	?@3
%assignvariableop_3_timedisdense1_bias:@1
assignvariableop_4_dense_kernel:@+
assignvariableop_5_dense_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: <
)assignvariableop_11_lstm_lstm_cell_kernel:	?G
3assignvariableop_12_lstm_lstm_cell_recurrent_kernel:
??6
'assignvariableop_13_lstm_lstm_cell_bias:	?#
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: %
assignvariableop_18_total_2: %
assignvariableop_19_count_2: I
5assignvariableop_20_adam_attention_attention_mul_wa_m:
??C
5assignvariableop_21_adam_attention_attention_mul_ba_m:B
/assignvariableop_22_adam_timedisdense1_kernel_m:	?@;
-assignvariableop_23_adam_timedisdense1_bias_m:@9
'assignvariableop_24_adam_dense_kernel_m:@3
%assignvariableop_25_adam_dense_bias_m:C
0assignvariableop_26_adam_lstm_lstm_cell_kernel_m:	?N
:assignvariableop_27_adam_lstm_lstm_cell_recurrent_kernel_m:
??=
.assignvariableop_28_adam_lstm_lstm_cell_bias_m:	?I
5assignvariableop_29_adam_attention_attention_mul_wa_v:
??C
5assignvariableop_30_adam_attention_attention_mul_ba_v:B
/assignvariableop_31_adam_timedisdense1_kernel_v:	?@;
-assignvariableop_32_adam_timedisdense1_bias_v:@9
'assignvariableop_33_adam_dense_kernel_v:@3
%assignvariableop_34_adam_dense_bias_v:C
0assignvariableop_35_adam_lstm_lstm_cell_kernel_v:	?N
:assignvariableop_36_adam_lstm_lstm_cell_recurrent_kernel_v:
??=
.assignvariableop_37_adam_lstm_lstm_cell_bias_v:	?
identity_39??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B@layer_with_weights-1/Attention_Mul_Wa/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/Attention_Mul_ba/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_Wa/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_ba/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_Wa/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/Attention_Mul_ba/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp+assignvariableop_attention_attention_mul_waIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp-assignvariableop_1_attention_attention_mul_baIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_timedisdense1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp%assignvariableop_3_timedisdense1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_lstm_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp3assignvariableop_12_lstm_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_lstm_lstm_cell_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp5assignvariableop_20_adam_attention_attention_mul_wa_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_attention_attention_mul_ba_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp/assignvariableop_22_adam_timedisdense1_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adam_timedisdense1_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp%assignvariableop_25_adam_dense_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_lstm_lstm_cell_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp:assignvariableop_27_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp.assignvariableop_28_adam_lstm_lstm_cell_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_attention_attention_mul_wa_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp5assignvariableop_30_adam_attention_attention_mul_ba_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp/assignvariableop_31_adam_timedisdense1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp-assignvariableop_32_adam_timedisdense1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_dense_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp0assignvariableop_35_adam_lstm_lstm_cell_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp:assignvariableop_36_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp.assignvariableop_37_adam_lstm_lstm_cell_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_379
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_38f
Identity_39IdentityIdentity_38:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_39?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_39Identity_39:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372(
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
?
?
A__inference_model_layer_call_and_return_conditional_losses_295835

input_attn
lstm_295812:	?
lstm_295814:
??
lstm_295816:	?$
attention_295819:
??
attention_295821:'
timedisdense1_295824:	?@"
timedisdense1_295826:@
dense_295829:@
dense_295831:
identity??!Attention/StatefulPartitionedCall?LSTM/StatefulPartitionedCall?%TimeDisDense1/StatefulPartitionedCall?dense/StatefulPartitionedCall?
LSTM/StatefulPartitionedCallStatefulPartitionedCall
input_attnlstm_295812lstm_295814lstm_295816*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2952562
LSTM/StatefulPartitionedCall?
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_295819attention_295821*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_2953202#
!Attention/StatefulPartitionedCall?
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_295824timedisdense1_295826*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_2953622'
%TimeDisDense1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_295829dense_295831*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2953982
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
input_attn
?b
?
@__inference_LSTM_layer_call_and_return_conditional_losses_295705

inputs;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
lstm_cell/MatMul/ReadVariableOp?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add?
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAddx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2?
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity?
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-295591*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN?
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1?
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_4?
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3?
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Identity_1?
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-295600*<
_output_shapes*
(:??????????:??????????2
lstm_cell/IdentityN_1?
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_295611*
condR
while_cond_295610*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_model_layer_call_and_return_conditional_losses_295405

inputs
lstm_295257:	?
lstm_295259:
??
lstm_295261:	?$
attention_295321:
??
attention_295323:'
timedisdense1_295363:	?@"
timedisdense1_295365:@
dense_295399:@
dense_295401:
identity??!Attention/StatefulPartitionedCall?LSTM/StatefulPartitionedCall?%TimeDisDense1/StatefulPartitionedCall?dense/StatefulPartitionedCall?
LSTM/StatefulPartitionedCallStatefulPartitionedCallinputslstm_295257lstm_295259lstm_295261*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2952562
LSTM/StatefulPartitionedCall?
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_295321attention_295323*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_2953202#
!Attention/StatefulPartitionedCall?
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_295363timedisdense1_295365*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_2953622'
%TimeDisDense1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_295399dense_295401*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2953982
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_cell_layer_call_fn_297543

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_2945142
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?

?
&__inference_model_layer_call_fn_296500

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
	unknown_4:	?@
	unknown_5:@
	unknown_6:@
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2957652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_LSTM_layer_call_fn_297217

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_2952562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_295161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_295161___redundant_placeholder04
0while_while_cond_295161___redundant_placeholder14
0while_while_cond_295161___redundant_placeholder24
0while_while_cond_295161___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?"
?
E__inference_lstm_cell_layer_call_and_return_conditional_losses_294670

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-294651*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-294660*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4i

Identity_2Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2i

Identity_3Identity	mul_4:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_3i

Identity_4Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_4?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E

input_attn7
serving_default_input_attn:0?????????=
dense4
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ي
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
*s&call_and_return_all_conditional_losses
t__call__
u_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
*v&call_and_return_all_conditional_losses
w__call__"
_tf_keras_rnn_layer
?
Attention_Mul_Wa
Wa
Attention_Mul_ba
ba
regularization_losses
	variables
trainable_variables
	keras_api
*x&call_and_return_all_conditional_losses
y__call__"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*z&call_and_return_all_conditional_losses
{__call__"
_tf_keras_layer
?

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
*|&call_and_return_all_conditional_losses
}__call__"
_tf_keras_layer
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemambmcmdmemf)mg*mh+mivjvkvlvmvnvo)vp*vq+vr"
	optimizer
 "
trackable_list_wrapper
_
)0
*1
+2
3
4
5
6
7
8"
trackable_list_wrapper
_
)0
*1
+2
3
4
5
6
7
8"
trackable_list_wrapper
?
,non_trainable_variables
-layer_regularization_losses
.metrics
regularization_losses

/layers
	variables
0layer_metrics
	trainable_variables
t__call__
u_default_save_signature
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
,
~serving_default"
signature_map
?
1
state_size

)kernel
*recurrent_kernel
+bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
*&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
?
6non_trainable_variables

7states
8layer_regularization_losses
9metrics
regularization_losses

:layers
	variables
;layer_metrics
trainable_variables
w__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
.:,
??2Attention/Attention_Mul_Wa
(:&2Attention/Attention_Mul_ba
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
<non_trainable_variables
=layer_regularization_losses
>metrics
regularization_losses

?layers
	variables
@layer_metrics
trainable_variables
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
':%	?@2TimeDisDense1/kernel
 :@2TimeDisDense1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Anon_trainable_variables
Blayer_regularization_losses
Cmetrics
regularization_losses

Dlayers
	variables
Elayer_metrics
trainable_variables
{__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
:@2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Fnon_trainable_variables
Glayer_regularization_losses
Hmetrics
 regularization_losses

Ilayers
!	variables
Jlayer_metrics
"trainable_variables
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	?2LSTM/lstm_cell/kernel
3:1
??2LSTM/lstm_cell/recurrent_kernel
": ?2LSTM/lstm_cell/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
?
Nnon_trainable_variables
Olayer_regularization_losses
Pmetrics
2regularization_losses

Qlayers
3	variables
Rlayer_metrics
4trainable_variables
?__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Stotal
	Tcount
U	variables
V	keras_api"
_tf_keras_metric
^
	Wtotal
	Xcount
Y
_fn_kwargs
Z	variables
[	keras_api"
_tf_keras_metric
^
	\total
	]count
^
_fn_kwargs
_	variables
`	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
S0
T1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
W0
X1"
trackable_list_wrapper
-
Z	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
\0
]1"
trackable_list_wrapper
-
_	variables"
_generic_user_object
3:1
??2!Adam/Attention/Attention_Mul_Wa/m
-:+2!Adam/Attention/Attention_Mul_ba/m
,:*	?@2Adam/TimeDisDense1/kernel/m
%:#@2Adam/TimeDisDense1/bias/m
#:!@2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	?2Adam/LSTM/lstm_cell/kernel/m
8:6
??2&Adam/LSTM/lstm_cell/recurrent_kernel/m
':%?2Adam/LSTM/lstm_cell/bias/m
3:1
??2!Adam/Attention/Attention_Mul_Wa/v
-:+2!Adam/Attention/Attention_Mul_ba/v
,:*	?@2Adam/TimeDisDense1/kernel/v
%:#@2Adam/TimeDisDense1/bias/v
#:!@2Adam/dense/kernel/v
:2Adam/dense/bias/v
-:+	?2Adam/LSTM/lstm_cell/kernel/v
8:6
??2&Adam/LSTM/lstm_cell/recurrent_kernel/v
':%?2Adam/LSTM/lstm_cell/bias/v
?2?
A__inference_model_layer_call_and_return_conditional_losses_296173
A__inference_model_layer_call_and_return_conditional_losses_296454
A__inference_model_layer_call_and_return_conditional_losses_295835
A__inference_model_layer_call_and_return_conditional_losses_295861?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_model_layer_call_fn_295426
&__inference_model_layer_call_fn_296477
&__inference_model_layer_call_fn_296500
&__inference_model_layer_call_fn_295809?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_294429
input_attn"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_LSTM_layer_call_and_return_conditional_losses_296671
@__inference_LSTM_layer_call_and_return_conditional_losses_296842
@__inference_LSTM_layer_call_and_return_conditional_losses_297013
@__inference_LSTM_layer_call_and_return_conditional_losses_297184?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_LSTM_layer_call_fn_297195
%__inference_LSTM_layer_call_fn_297206
%__inference_LSTM_layer_call_fn_297217
%__inference_LSTM_layer_call_fn_297228?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_Attention_layer_call_and_return_conditional_losses_297284
E__inference_Attention_layer_call_and_return_conditional_losses_297340?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkwjkwargs
defaults?

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
*__inference_Attention_layer_call_fn_297349
*__inference_Attention_layer_call_fn_297358?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkwjkwargs
defaults?

 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_297394?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_TimeDisDense1_layer_call_fn_297403?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_layer_call_and_return_conditional_losses_297433?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_layer_call_fn_297442?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_295892
input_attn"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_lstm_cell_layer_call_and_return_conditional_losses_297484
E__inference_lstm_cell_layer_call_and_return_conditional_losses_297526?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_cell_layer_call_fn_297543
*__inference_lstm_cell_layer_call_fn_297560?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
E__inference_Attention_layer_call_and_return_conditional_losses_297284zH?E
.?+
%?"
inputs??????????

 
?

trainingp "*?'
 ?
0??????????
? ?
E__inference_Attention_layer_call_and_return_conditional_losses_297340zH?E
.?+
%?"
inputs??????????

 
?

trainingp"*?'
 ?
0??????????
? ?
*__inference_Attention_layer_call_fn_297349mH?E
.?+
%?"
inputs??????????

 
?

trainingp "????????????
*__inference_Attention_layer_call_fn_297358mH?E
.?+
%?"
inputs??????????

 
?

trainingp"????????????
@__inference_LSTM_layer_call_and_return_conditional_losses_296671?)*+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
@__inference_LSTM_layer_call_and_return_conditional_losses_296842?)*+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
@__inference_LSTM_layer_call_and_return_conditional_losses_297013r)*+??<
5?2
$?!
inputs?????????

 
p 

 
? "*?'
 ?
0??????????
? ?
@__inference_LSTM_layer_call_and_return_conditional_losses_297184r)*+??<
5?2
$?!
inputs?????????

 
p

 
? "*?'
 ?
0??????????
? ?
%__inference_LSTM_layer_call_fn_297195~)*+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#????????????????????
%__inference_LSTM_layer_call_fn_297206~)*+O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#????????????????????
%__inference_LSTM_layer_call_fn_297217e)*+??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
%__inference_LSTM_layer_call_fn_297228e)*+??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_297394e4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????@
? ?
.__inference_TimeDisDense1_layer_call_fn_297403X4?1
*?'
%?"
inputs??????????
? "??????????@?
!__inference__wrapped_model_294429w	)*+7?4
-?*
(?%

input_attn?????????
? "1?.
,
dense#? 
dense??????????
A__inference_dense_layer_call_and_return_conditional_losses_297433d3?0
)?&
$?!
inputs?????????@
? ")?&
?
0?????????
? ?
&__inference_dense_layer_call_fn_297442W3?0
)?&
$?!
inputs?????????@
? "???????????
E__inference_lstm_cell_layer_call_and_return_conditional_losses_297484?)*+??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
E__inference_lstm_cell_layer_call_and_return_conditional_losses_297526?)*+??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
*__inference_lstm_cell_layer_call_fn_297543?)*+??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
*__inference_lstm_cell_layer_call_fn_297560?)*+??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
A__inference_model_layer_call_and_return_conditional_losses_295835w	)*+??<
5?2
(?%

input_attn?????????
p 

 
? ")?&
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_295861w	)*+??<
5?2
(?%

input_attn?????????
p

 
? ")?&
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_296173s	)*+;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_296454s	)*+;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
&__inference_model_layer_call_fn_295426j	)*+??<
5?2
(?%

input_attn?????????
p 

 
? "???????????
&__inference_model_layer_call_fn_295809j	)*+??<
5?2
(?%

input_attn?????????
p

 
? "???????????
&__inference_model_layer_call_fn_296477f	)*+;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
&__inference_model_layer_call_fn_296500f	)*+;?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_295892?	)*+E?B
? 
;?8
6

input_attn(?%

input_attn?????????"1?.
,
dense#? 
dense?????????