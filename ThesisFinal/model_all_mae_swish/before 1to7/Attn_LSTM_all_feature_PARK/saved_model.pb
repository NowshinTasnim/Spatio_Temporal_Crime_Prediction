ì
·!!
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

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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
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
"serve*2.4.12v2.4.1-0-g85c8b2a817f8Á

Attention/Attention_Mul_WaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAttention/Attention_Mul_Wa

.Attention/Attention_Mul_Wa/Read/ReadVariableOpReadVariableOpAttention/Attention_Mul_Wa* 
_output_shapes
:
*
dtype0

Attention/Attention_Mul_baVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAttention/Attention_Mul_ba

.Attention/Attention_Mul_ba/Read/ReadVariableOpReadVariableOpAttention/Attention_Mul_ba*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
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

LSTM/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameLSTM/lstm_cell/kernel

)LSTM/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpLSTM/lstm_cell/kernel*
_output_shapes
:	*
dtype0

LSTM/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!LSTM/lstm_cell/recurrent_kernel

3LSTM/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpLSTM/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0

LSTM/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameLSTM/lstm_cell/bias
x
'LSTM/lstm_cell/bias/Read/ReadVariableOpReadVariableOpLSTM/lstm_cell/bias*
_output_shapes	
:*
dtype0

TimeDisDense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*%
shared_nameTimeDisDense1/kernel
~
(TimeDisDense1/kernel/Read/ReadVariableOpReadVariableOpTimeDisDense1/kernel*
_output_shapes
:	@*
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

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
¾*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ù)
valueï)Bì) Bå)

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
trainable_variables
regularization_losses
		variables

	keras_api

signatures
 
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api

Attention_Mul_Wa
Wa
Attention_Mul_ba
ba
trainable_variables
	variables
regularization_losses
	keras_api
]
	layer
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
d
#iter

$beta_1

%beta_2
	&decay
'learning_ratemjmkvlvm

0
1
 
?
(0
)1
*2
3
4
+5
,6
7
8
­
-non_trainable_variables
.layer_regularization_losses

/layers
0metrics
trainable_variables
regularization_losses
		variables
1layer_metrics
 
~

(kernel
)recurrent_kernel
*bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
 
 
 

(0
)1
*2
¹
6non_trainable_variables
7layer_regularization_losses

8layers
9metrics

:states
trainable_variables
regularization_losses
	variables
;layer_metrics
pn
VARIABLE_VALUEAttention/Attention_Mul_Wa@layer_with_weights-1/Attention_Mul_Wa/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAttention/Attention_Mul_ba@layer_with_weights-1/Attention_Mul_ba/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 
­
<non_trainable_variables
=layer_regularization_losses
trainable_variables

>layers
?metrics
	variables
regularization_losses
@layer_metrics
h

+kernel
,bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
 

+0
,1
 
­
Enon_trainable_variables
Flayer_regularization_losses
trainable_variables

Glayers
Hmetrics
	variables
regularization_losses
Ilayer_metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Jnon_trainable_variables
Klayer_regularization_losses
trainable_variables

Llayers
Mmetrics
 	variables
!regularization_losses
Nlayer_metrics
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
PN
VARIABLE_VALUETimeDisDense1/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUETimeDisDense1/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
1
(0
)1
*2
3
4
+5
,6
 
#
0
1
2
3
4

O0
P1
Q2
 
 

(0
)1
*2
 
­
Rnon_trainable_variables
Slayer_regularization_losses
2trainable_variables

Tlayers
Umetrics
3	variables
4regularization_losses
Vlayer_metrics

(0
)1
*2
 

0
 
 
 

0
1
 
 
 
 
 

+0
,1
 
­
Wnon_trainable_variables
Xlayer_regularization_losses
Atrainable_variables

Ylayers
Zmetrics
B	variables
Cregularization_losses
[layer_metrics

+0
,1
 

0
 
 
 
 
 
 
 
4
	\total
	]count
^	variables
_	keras_api
D
	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api
D
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api

(0
)1
*2
 
 
 
 

+0
,1
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

\0
]1

^	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

`0
a1

c	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

h	variables
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_attnPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_attnLSTM/lstm_cell/kernelLSTM/lstm_cell/recurrent_kernelLSTM/lstm_cell/biasAttention/Attention_Mul_WaAttention/Attention_Mul_baTimeDisDense1/kernelTimeDisDense1/biasdense_1/kerneldense_1/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_978583
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¯	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.Attention/Attention_Mul_Wa/Read/ReadVariableOp.Attention/Attention_Mul_ba/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)LSTM/lstm_cell/kernel/Read/ReadVariableOp3LSTM/lstm_cell/recurrent_kernel/Read/ReadVariableOp'LSTM/lstm_cell/bias/Read/ReadVariableOp(TimeDisDense1/kernel/Read/ReadVariableOp&TimeDisDense1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
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
__inference__traced_save_980442
Ê
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameAttention/Attention_Mul_WaAttention/Attention_Mul_badense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateLSTM/lstm_cell/kernelLSTM/lstm_cell/recurrent_kernelLSTM/lstm_cell/biasTimeDisDense1/kernelTimeDisDense1/biastotalcounttotal_1count_1total_2count_2Adam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/v*$
Tin
2*
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
"__inference__traced_restore_980524ØÕ
ú


model_LSTM_while_cond_9768422
.model_lstm_while_model_lstm_while_loop_counter8
4model_lstm_while_model_lstm_while_maximum_iterations 
model_lstm_while_placeholder"
model_lstm_while_placeholder_1"
model_lstm_while_placeholder_2"
model_lstm_while_placeholder_34
0model_lstm_while_less_model_lstm_strided_slice_1J
Fmodel_lstm_while_model_lstm_while_cond_976842___redundant_placeholder0J
Fmodel_lstm_while_model_lstm_while_cond_976842___redundant_placeholder1J
Fmodel_lstm_while_model_lstm_while_cond_976842___redundant_placeholder2J
Fmodel_lstm_while_model_lstm_while_cond_976842___redundant_placeholder3
model_lstm_while_identity
§
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
model_lstm_while_identity"model/LSTM/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Æ	
§
LSTM_while_cond_978660&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_978660___redundant_placeholder0>
:lstm_while_lstm_while_cond_978660___redundant_placeholder1>
:lstm_while_lstm_while_cond_978660___redundant_placeholder2>
:lstm_while_lstm_while_cond_978660___redundant_placeholder3
lstm_while_identity

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
lstm_while_identityLSTM/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ø
¬
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_977755

inputs
dense_977745
dense_977747
identity¢dense/StatefulPartitionedCallD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_977745dense_977747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_9776912
dense/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¢
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1
IdentityIdentityReshape_1:output:0^dense/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á"
Ú
E__inference_lstm_cell_layer_call_and_return_conditional_losses_977117

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-977098*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-977107*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
±

%__inference_LSTM_layer_call_fn_979903
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9776552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ø
{
&__inference_dense_layer_call_fn_980347

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_9776912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½D
Í
@__inference_LSTM_layer_call_and_return_conditional_losses_977655

inputs
lstm_cell_977573
lstm_cell_977575
lstm_cell_977577
identity¢!lstm_cell/StatefulPartitionedCall¢whileD
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_977573lstm_cell_977575lstm_cell_977577*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_9771602#
!lstm_cell/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_977573lstm_cell_977575lstm_cell_977577*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_977586*
condR
while_cond_977585*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0"^lstm_cell/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
ä
&__inference_model_layer_call_fn_979144

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_9784782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

.__inference_TimeDisDense1_layer_call_fn_980082

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9783262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò

*__inference_Attention_layer_call_fn_980024

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_9782262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ã
while_cond_979785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_979785___redundant_placeholder04
0while_while_cond_979785___redundant_placeholder14
0while_while_cond_979785___redundant_placeholder24
0while_while_cond_979785___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¯
Ã
while_cond_978044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_978044___redundant_placeholder04
0while_while_cond_978044___redundant_placeholder14
0while_while_cond_978044___redundant_placeholder24
0while_while_cond_978044___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¯
Ã
while_cond_979612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_979612___redundant_placeholder04
0while_while_cond_979612___redundant_placeholder14
0while_while_cond_979612___redundant_placeholder24
0while_while_cond_979612___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
±a
Ý
@__inference_LSTM_layer_call_and_return_conditional_losses_979340

inputs,
(lstm_cell_matmul_readvariableop_resource.
*lstm_cell_matmul_1_readvariableop_resource-
)lstm_cell_biasadd_readvariableop_resource
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢whileD
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¬
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
lstm_cell/MatMul/ReadVariableOp¤
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul³
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp 
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul_1
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add«
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp¡
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/BiasAddd
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/Constx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dimë
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_1
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_2
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identityß
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979225*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_2
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add_1
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_4
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_3
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identity_1Þ
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979234*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN_1
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counteré
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_979245*
condR
while_cond_979244*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÙ
IdentityIdentitytranspose_1:y:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
Ü
A__inference_dense_layer_call_and_return_conditional_losses_977691

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-977684*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityN

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
è
&__inference_model_layer_call_fn_978499

input_attn
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity¢StatefulPartitionedCallÔ
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
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_9784782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
input_attn


%__inference_LSTM_layer_call_fn_979524

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9779672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ãI
ã
while_body_979418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
0while_lstm_cell_matmul_readvariableop_resource_06
2while_lstm_cell_matmul_1_readvariableop_resource_05
1while_lstm_cell_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
.while_lstm_cell_matmul_readvariableop_resource4
0while_lstm_cell_matmul_1_readvariableop_resource3
/while_lstm_cell_biasadd_readvariableop_resource¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÀ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOpÎ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMulÇ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp·
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMul_1¬
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add¿
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp¹
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/BiasAddp
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell/Const
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell/split
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_1
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_2§
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_1
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity÷
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979461*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN©
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_2
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add_1
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_3
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_4¢
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_3
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity_1ö
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979470*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN_1­
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_4Ý
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
while/add_1Ù
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityì
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Û
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ù
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4ù
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2P
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ða
ß
@__inference_LSTM_layer_call_and_return_conditional_losses_979708
inputs_0,
(lstm_cell_matmul_readvariableop_resource.
*lstm_cell_matmul_1_readvariableop_resource-
)lstm_cell_biasadd_readvariableop_resource
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢whileF
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¬
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
lstm_cell/MatMul/ReadVariableOp¤
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul³
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp 
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul_1
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add«
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp¡
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/BiasAddd
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/Constx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dimë
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_1
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_2
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identityß
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979593*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_2
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add_1
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_4
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_3
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identity_1Þ
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979602*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN_1
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counteré
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_979613*
condR
while_cond_979612*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeâ
IdentityIdentitytranspose_1:y:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¯
Ã
while_cond_979417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_979417___redundant_placeholder04
0while_while_cond_979417___redundant_placeholder14
0while_while_cond_979417___redundant_placeholder24
0while_while_cond_979417___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
±a
Ý
@__inference_LSTM_layer_call_and_return_conditional_losses_978140

inputs,
(lstm_cell_matmul_readvariableop_resource.
*lstm_cell_matmul_1_readvariableop_resource-
)lstm_cell_biasadd_readvariableop_resource
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢whileD
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¬
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
lstm_cell/MatMul/ReadVariableOp¤
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul³
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp 
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul_1
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add«
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp¡
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/BiasAddd
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/Constx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dimë
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_1
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_2
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identityß
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-978025*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_2
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add_1
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_4
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_3
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identity_1Þ
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-978034*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN_1
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counteré
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_978045*
condR
while_cond_978044*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÙ
IdentityIdentitytranspose_1:y:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
ú
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_978326

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/Sigmoidz
	dense/mulMuldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	dense/mulm
dense/IdentityIdentitydense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityÍ
dense/IdentityN	IdentityNdense/mul:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-978317*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1§
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
}
(__inference_dense_1_layer_call_fn_980202

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall÷
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
GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_9784022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¿
Ê
*__inference_lstm_cell_layer_call_fn_980305

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
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_9771172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ó
è
&__inference_model_layer_call_fn_978550

input_attn
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity¢StatefulPartitionedCallÔ
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
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_9785292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
input_attn
Ê$
ü
while_body_977454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_977478_0
while_lstm_cell_977480_0
while_lstm_cell_977482_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_977478
while_lstm_cell_977480
while_lstm_cell_977482¢'while/lstm_cell/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÒ
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_977478_0while_lstm_cell_977480_0while_lstm_cell_977482_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_9771172)
'while/lstm_cell/StatefulPartitionedCallô
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2·
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3¿
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¿
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_977478while_lstm_cell_977478_0"2
while_lstm_cell_977480while_lstm_cell_977480_0"2
while_lstm_cell_977482while_lstm_cell_977482_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2R
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×
ú
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980053

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/Sigmoidz
	dense/mulMuldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	dense/mulm
dense/IdentityIdentitydense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityÍ
dense/IdentityN	IdentityNdense/mul:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-980044*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1§
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


.__inference_TimeDisDense1_layer_call_fn_980163

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9777842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á"
Ú
E__inference_lstm_cell_layer_call_and_return_conditional_losses_977160

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-977141*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-977150*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¯
Ã
while_cond_977871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_977871___redundant_placeholder04
0while_while_cond_977871___redundant_placeholder14
0while_while_cond_977871___redundant_placeholder24
0while_while_cond_977871___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
é"
Ü
E__inference_lstm_cell_layer_call_and_return_conditional_losses_980245

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-980226*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-980235*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
á
¬
A__inference_model_layer_call_and_return_conditional_losses_978447

input_attn
lstm_978422
lstm_978424
lstm_978426
attention_978429
attention_978431
timedisdense1_978434
timedisdense1_978436
dense_1_978441
dense_1_978443
identity¢!Attention/StatefulPartitionedCall¢LSTM/StatefulPartitionedCall¢%TimeDisDense1/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
LSTM/StatefulPartitionedCallStatefulPartitionedCall
input_attnlstm_978422lstm_978424lstm_978426*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9781402
LSTM/StatefulPartitionedCall½
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_978429attention_978431*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_9782822#
!Attention/StatefulPartitionedCallÕ
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_978434timedisdense1_978436*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9783462'
%TimeDisDense1/StatefulPartitionedCall
TimeDisDense1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape/shape¾
TimeDisDense1/ReshapeReshape*Attention/StatefulPartitionedCall:output:0$TimeDisDense1/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/Reshape»
dense_1/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_1_978441dense_1_978443*
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
GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_9784022!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
input_attn
½D
Í
@__inference_LSTM_layer_call_and_return_conditional_losses_977523

inputs
lstm_cell_977441
lstm_cell_977443
lstm_cell_977445
identity¢!lstm_cell/StatefulPartitionedCall¢whileD
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_977441lstm_cell_977443lstm_cell_977445*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_9771172#
!lstm_cell/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_977441lstm_cell_977443lstm_cell_977445*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_977454*
condR
while_cond_977453*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0"^lstm_cell/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
Ü
A__inference_dense_layer_call_and_return_conditional_losses_980338

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-980331*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityN

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\
Ã

model_LSTM_while_body_9768432
.model_lstm_while_model_lstm_while_loop_counter8
4model_lstm_while_model_lstm_while_maximum_iterations 
model_lstm_while_placeholder"
model_lstm_while_placeholder_1"
model_lstm_while_placeholder_2"
model_lstm_while_placeholder_31
-model_lstm_while_model_lstm_strided_slice_1_0m
imodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensor_0?
;model_lstm_while_lstm_cell_matmul_readvariableop_resource_0A
=model_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0@
<model_lstm_while_lstm_cell_biasadd_readvariableop_resource_0
model_lstm_while_identity
model_lstm_while_identity_1
model_lstm_while_identity_2
model_lstm_while_identity_3
model_lstm_while_identity_4
model_lstm_while_identity_5/
+model_lstm_while_model_lstm_strided_slice_1k
gmodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensor=
9model_lstm_while_lstm_cell_matmul_readvariableop_resource?
;model_lstm_while_lstm_cell_matmul_1_readvariableop_resource>
:model_lstm_while_lstm_cell_biasadd_readvariableop_resource¢1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp¢0model/LSTM/while/lstm_cell/MatMul/ReadVariableOp¢2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOpÙ
Bmodel/LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2D
Bmodel/LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape
4model/LSTM/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemimodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensor_0model_lstm_while_placeholderKmodel/LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype026
4model/LSTM/while/TensorArrayV2Read/TensorListGetItemá
0model/LSTM/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp;model_lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype022
0model/LSTM/while/lstm_cell/MatMul/ReadVariableOpú
!model/LSTM/while/lstm_cell/MatMulMatMul;model/LSTM/while/TensorArrayV2Read/TensorListGetItem:item:08model/LSTM/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!model/LSTM/while/lstm_cell/MatMulè
2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp=model_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype024
2model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOpã
#model/LSTM/while/lstm_cell/MatMul_1MatMulmodel_lstm_while_placeholder_2:model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#model/LSTM/while/lstm_cell/MatMul_1Ø
model/LSTM/while/lstm_cell/addAddV2+model/LSTM/while/lstm_cell/MatMul:product:0-model/LSTM/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/LSTM/while/lstm_cell/addà
1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp<model_lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOpå
"model/LSTM/while/lstm_cell/BiasAddBiasAdd"model/LSTM/while/lstm_cell/add:z:09model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model/LSTM/while/lstm_cell/BiasAdd
 model/LSTM/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 model/LSTM/while/lstm_cell/Const
*model/LSTM/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model/LSTM/while/lstm_cell/split/split_dim¯
 model/LSTM/while/lstm_cell/splitSplit3model/LSTM/while/lstm_cell/split/split_dim:output:0+model/LSTM/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 model/LSTM/while/lstm_cell/split±
"model/LSTM/while/lstm_cell/SigmoidSigmoid)model/LSTM/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"model/LSTM/while/lstm_cell/Sigmoidµ
$model/LSTM/while/lstm_cell/Sigmoid_1Sigmoid)model/LSTM/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model/LSTM/while/lstm_cell/Sigmoid_1Ä
model/LSTM/while/lstm_cell/mulMul(model/LSTM/while/lstm_cell/Sigmoid_1:y:0model_lstm_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/LSTM/while/lstm_cell/mulµ
$model/LSTM/while/lstm_cell/Sigmoid_2Sigmoid)model/LSTM/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model/LSTM/while/lstm_cell/Sigmoid_2Ó
 model/LSTM/while/lstm_cell/mul_1Mul)model/LSTM/while/lstm_cell/split:output:2(model/LSTM/while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model/LSTM/while/lstm_cell/mul_1¯
#model/LSTM/while/lstm_cell/IdentityIdentity$model/LSTM/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#model/LSTM/while/lstm_cell/Identity£
$model/LSTM/while/lstm_cell/IdentityN	IdentityN$model/LSTM/while/lstm_cell/mul_1:z:0)model/LSTM/while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-976886*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2&
$model/LSTM/while/lstm_cell/IdentityNÕ
 model/LSTM/while/lstm_cell/mul_2Mul&model/LSTM/while/lstm_cell/Sigmoid:y:0-model/LSTM/while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model/LSTM/while/lstm_cell/mul_2Ê
 model/LSTM/while/lstm_cell/add_1AddV2"model/LSTM/while/lstm_cell/mul:z:0$model/LSTM/while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model/LSTM/while/lstm_cell/add_1µ
$model/LSTM/while/lstm_cell/Sigmoid_3Sigmoid)model/LSTM/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model/LSTM/while/lstm_cell/Sigmoid_3°
$model/LSTM/while/lstm_cell/Sigmoid_4Sigmoid$model/LSTM/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model/LSTM/while/lstm_cell/Sigmoid_4Î
 model/LSTM/while/lstm_cell/mul_3Mul$model/LSTM/while/lstm_cell/add_1:z:0(model/LSTM/while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model/LSTM/while/lstm_cell/mul_3³
%model/LSTM/while/lstm_cell/Identity_1Identity$model/LSTM/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%model/LSTM/while/lstm_cell/Identity_1¢
&model/LSTM/while/lstm_cell/IdentityN_1	IdentityN$model/LSTM/while/lstm_cell/mul_3:z:0$model/LSTM/while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-976895*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2(
&model/LSTM/while/lstm_cell/IdentityN_1Ù
 model/LSTM/while/lstm_cell/mul_4Mul(model/LSTM/while/lstm_cell/Sigmoid_3:y:0/model/LSTM/while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model/LSTM/while/lstm_cell/mul_4
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
model/LSTM/while/add/y
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
model/LSTM/while/add_1/y­
model/LSTM/while/add_1AddV2.model_lstm_while_model_lstm_while_loop_counter!model/LSTM/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model/LSTM/while/add_1
model/LSTM/while/IdentityIdentitymodel/LSTM/while/add_1:z:02^model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1^model/LSTM/while/lstm_cell/MatMul/ReadVariableOp3^model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity¹
model/LSTM/while/Identity_1Identity4model_lstm_while_model_lstm_while_maximum_iterations2^model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1^model/LSTM/while/lstm_cell/MatMul/ReadVariableOp3^model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity_1
model/LSTM/while/Identity_2Identitymodel/LSTM/while/add:z:02^model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1^model/LSTM/while/lstm_cell/MatMul/ReadVariableOp3^model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity_2Ê
model/LSTM/while/Identity_3IdentityEmodel/LSTM/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1^model/LSTM/while/lstm_cell/MatMul/ReadVariableOp3^model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
model/LSTM/while/Identity_3»
model/LSTM/while/Identity_4Identity$model/LSTM/while/lstm_cell/mul_4:z:02^model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1^model/LSTM/while/lstm_cell/MatMul/ReadVariableOp3^model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/while/Identity_4»
model/LSTM/while/Identity_5Identity$model/LSTM/while/lstm_cell/add_1:z:02^model/LSTM/while/lstm_cell/BiasAdd/ReadVariableOp1^model/LSTM/while/lstm_cell/MatMul/ReadVariableOp3^model/LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/while/Identity_5"?
model_lstm_while_identity"model/LSTM/while/Identity:output:0"C
model_lstm_while_identity_1$model/LSTM/while/Identity_1:output:0"C
model_lstm_while_identity_2$model/LSTM/while/Identity_2:output:0"C
model_lstm_while_identity_3$model/LSTM/while/Identity_3:output:0"C
model_lstm_while_identity_4$model/LSTM/while/Identity_4:output:0"C
model_lstm_while_identity_5$model/LSTM/while/Identity_5:output:0"z
:model_lstm_while_lstm_cell_biasadd_readvariableop_resource<model_lstm_while_lstm_cell_biasadd_readvariableop_resource_0"|
;model_lstm_while_lstm_cell_matmul_1_readvariableop_resource=model_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"x
9model_lstm_while_lstm_cell_matmul_readvariableop_resource;model_lstm_while_lstm_cell_matmul_readvariableop_resource_0"\
+model_lstm_while_model_lstm_strided_slice_1-model_lstm_while_model_lstm_strided_slice_1_0"Ô
gmodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensorimodel_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2f
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


%__inference_LSTM_layer_call_fn_979535

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9781402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©6
ð	
__inference__traced_save_980442
file_prefix9
5savev2_attention_attention_mul_wa_read_readvariableop9
5savev2_attention_attention_mul_ba_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop3
/savev2_timedisdense1_kernel_read_readvariableop1
-savev2_timedisdense1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
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
ShardedFilenameÐ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*â

valueØ
BÕ
B@layer_with_weights-1/Attention_Mul_Wa/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/Attention_Mul_ba/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesº
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesö	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_attention_attention_mul_wa_read_readvariableop5savev2_attention_attention_mul_ba_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop/savev2_timedisdense1_kernel_read_readvariableop-savev2_timedisdense1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
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

identity_1Identity_1:output:0* 
_input_shapes
: :
::@:: : : : : :	:
::	@:@: : : : : : :@::@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
: 

_output_shapes
::$ 

_output_shapes

:@: 
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
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:
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
: :$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
ò

*__inference_Attention_layer_call_fn_980033

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_9782822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
R
	
LSTM_while_body_978661&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_09
5lstm_while_lstm_cell_matmul_readvariableop_resource_0;
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor7
3lstm_while_lstm_cell_matmul_readvariableop_resource9
5lstm_while_lstm_cell_matmul_1_readvariableop_resource8
4lstm_while_lstm_cell_biasadd_readvariableop_resource¢+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp¢*LSTM/while/lstm_cell/MatMul/ReadVariableOp¢,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpÍ
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeñ
.LSTM/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderELSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype020
.LSTM/while/TensorArrayV2Read/TensorListGetItemÏ
*LSTM/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02,
*LSTM/while/lstm_cell/MatMul/ReadVariableOpâ
LSTM/while/lstm_cell/MatMulMatMul5LSTM/while/TensorArrayV2Read/TensorListGetItem:item:02LSTM/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/MatMulÖ
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpË
LSTM/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24LSTM/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/MatMul_1À
LSTM/while/lstm_cell/addAddV2%LSTM/while/lstm_cell/MatMul:product:0'LSTM/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/addÎ
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02-
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOpÍ
LSTM/while/lstm_cell/BiasAddBiasAddLSTM/while/lstm_cell/add:z:03LSTM/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/BiasAddz
LSTM/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/while/lstm_cell/Const
$LSTM/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$LSTM/while/lstm_cell/split/split_dim
LSTM/while/lstm_cell/splitSplit-LSTM/while/lstm_cell/split/split_dim:output:0%LSTM/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
LSTM/while/lstm_cell/split
LSTM/while/lstm_cell/SigmoidSigmoid#LSTM/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/Sigmoid£
LSTM/while/lstm_cell/Sigmoid_1Sigmoid#LSTM/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_1¬
LSTM/while/lstm_cell/mulMul"LSTM/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul£
LSTM/while/lstm_cell/Sigmoid_2Sigmoid#LSTM/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_2»
LSTM/while/lstm_cell/mul_1Mul#LSTM/while/lstm_cell/split:output:2"LSTM/while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_1
LSTM/while/lstm_cell/IdentityIdentityLSTM/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/Identity
LSTM/while/lstm_cell/IdentityN	IdentityNLSTM/while/lstm_cell/mul_1:z:0#LSTM/while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-978704*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/IdentityN½
LSTM/while/lstm_cell/mul_2Mul LSTM/while/lstm_cell/Sigmoid:y:0'LSTM/while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_2²
LSTM/while/lstm_cell/add_1AddV2LSTM/while/lstm_cell/mul:z:0LSTM/while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/add_1£
LSTM/while/lstm_cell/Sigmoid_3Sigmoid#LSTM/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_3
LSTM/while/lstm_cell/Sigmoid_4SigmoidLSTM/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_4¶
LSTM/while/lstm_cell/mul_3MulLSTM/while/lstm_cell/add_1:z:0"LSTM/while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_3¡
LSTM/while/lstm_cell/Identity_1IdentityLSTM/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
LSTM/while/lstm_cell/Identity_1
 LSTM/while/lstm_cell/IdentityN_1	IdentityNLSTM/while/lstm_cell/mul_3:z:0LSTM/while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-978713*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2"
 LSTM/while/lstm_cell/IdentityN_1Á
LSTM/while/lstm_cell/mul_4Mul"LSTM/while/lstm_cell/Sigmoid_3:y:0)LSTM/while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_4ö
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
LSTM/while/add_1/y
LSTM/while/add_1AddV2"lstm_while_lstm_while_loop_counterLSTM/while/add_1/y:output:0*
T0*
_output_shapes
: 2
LSTM/while/add_1÷
LSTM/while/IdentityIdentityLSTM/while/add_1:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity
LSTM/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_1ù
LSTM/while/Identity_2IdentityLSTM/while/add:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_2¦
LSTM/while/Identity_3Identity?LSTM/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_3
LSTM/while/Identity_4IdentityLSTM/while/lstm_cell/mul_4:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/Identity_4
LSTM/while/Identity_5IdentityLSTM/while/lstm_cell/add_1:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/Identity_5"3
lstm_while_identityLSTM/while/Identity:output:0"7
lstm_while_identity_1LSTM/while/Identity_1:output:0"7
lstm_while_identity_2LSTM/while/Identity_2:output:0"7
lstm_while_identity_3LSTM/while/Identity_3:output:0"7
lstm_while_identity_4LSTM/while/Identity_4:output:0"7
lstm_while_identity_5LSTM/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2Z
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Òß

A__inference_model_layer_call_and_return_conditional_losses_979121

inputs1
-lstm_lstm_cell_matmul_readvariableop_resource3
/lstm_lstm_cell_matmul_1_readvariableop_resource2
.lstm_lstm_cell_biasadd_readvariableop_resource-
)attention_shape_2_readvariableop_resource%
!attention_readvariableop_resource6
2timedisdense1_dense_matmul_readvariableop_resource7
3timedisdense1_dense_biasadd_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity¢Attention/ReadVariableOp¢"Attention/transpose/ReadVariableOp¢%LSTM/lstm_cell/BiasAdd/ReadVariableOp¢$LSTM/lstm_cell/MatMul/ReadVariableOp¢&LSTM/lstm_cell/MatMul_1/ReadVariableOp¢
LSTM/while¢*TimeDisDense1/dense/BiasAdd/ReadVariableOp¢)TimeDisDense1/dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOpN

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
LSTM/strided_slice/stack
LSTM/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_1
LSTM/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_2
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
B :2
LSTM/zeros/mul/y
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
B :è2
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
B :2
LSTM/zeros/packed/1
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
LSTM/zeros/Const

LSTM/zerosFillLSTM/zeros/packed:output:0LSTM/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

LSTM/zerosk
LSTM/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
LSTM/zeros_1/mul/y
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
B :è2
LSTM/zeros_1/Less/y
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
B :2
LSTM/zeros_1/packed/1
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
LSTM/zeros_1/Const
LSTM/zeros_1FillLSTM/zeros_1/packed:output:0LSTM/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/zeros_1
LSTM/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose/perm
LSTM/transpose	TransposeinputsLSTM/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/transpose^
LSTM/Shape_1ShapeLSTM/transpose:y:0*
T0*
_output_shapes
:2
LSTM/Shape_1
LSTM/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_1/stack
LSTM/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_1
LSTM/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_2
LSTM/strided_slice_1StridedSliceLSTM/Shape_1:output:0#LSTM/strided_slice_1/stack:output:0%LSTM/strided_slice_1/stack_1:output:0%LSTM/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
LSTM/strided_slice_1
 LSTM/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 LSTM/TensorArrayV2/element_shapeÆ
LSTM/TensorArrayV2TensorListReserve)LSTM/TensorArrayV2/element_shape:output:0LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
LSTM/TensorArrayV2É
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2<
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape
,LSTM/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorLSTM/transpose:y:0CLSTM/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,LSTM/TensorArrayUnstack/TensorListFromTensor
LSTM/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_2/stack
LSTM/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_1
LSTM/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_2
LSTM/strided_slice_2StridedSliceLSTM/transpose:y:0#LSTM/strided_slice_2/stack:output:0%LSTM/strided_slice_2/stack_1:output:0%LSTM/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
LSTM/strided_slice_2»
$LSTM/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02&
$LSTM/lstm_cell/MatMul/ReadVariableOp¸
LSTM/lstm_cell/MatMulMatMulLSTM/strided_slice_2:output:0,LSTM/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/MatMulÂ
&LSTM/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&LSTM/lstm_cell/MatMul_1/ReadVariableOp´
LSTM/lstm_cell/MatMul_1MatMulLSTM/zeros:output:0.LSTM/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/MatMul_1¨
LSTM/lstm_cell/addAddV2LSTM/lstm_cell/MatMul:product:0!LSTM/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/addº
%LSTM/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02'
%LSTM/lstm_cell/BiasAdd/ReadVariableOpµ
LSTM/lstm_cell/BiasAddBiasAddLSTM/lstm_cell/add:z:0-LSTM/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/BiasAddn
LSTM/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/lstm_cell/Const
LSTM/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
LSTM/lstm_cell/split/split_dimÿ
LSTM/lstm_cell/splitSplit'LSTM/lstm_cell/split/split_dim:output:0LSTM/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
LSTM/lstm_cell/split
LSTM/lstm_cell/SigmoidSigmoidLSTM/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid
LSTM/lstm_cell/Sigmoid_1SigmoidLSTM/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_1
LSTM/lstm_cell/mulMulLSTM/lstm_cell/Sigmoid_1:y:0LSTM/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul
LSTM/lstm_cell/Sigmoid_2SigmoidLSTM/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_2£
LSTM/lstm_cell/mul_1MulLSTM/lstm_cell/split:output:2LSTM/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_1
LSTM/lstm_cell/IdentityIdentityLSTM/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Identityó
LSTM/lstm_cell/IdentityN	IdentityNLSTM/lstm_cell/mul_1:z:0LSTM/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-978910*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/IdentityN¥
LSTM/lstm_cell/mul_2MulLSTM/lstm_cell/Sigmoid:y:0!LSTM/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_2
LSTM/lstm_cell/add_1AddV2LSTM/lstm_cell/mul:z:0LSTM/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/add_1
LSTM/lstm_cell/Sigmoid_3SigmoidLSTM/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_3
LSTM/lstm_cell/Sigmoid_4SigmoidLSTM/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_4
LSTM/lstm_cell/mul_3MulLSTM/lstm_cell/add_1:z:0LSTM/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_3
LSTM/lstm_cell/Identity_1IdentityLSTM/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Identity_1ò
LSTM/lstm_cell/IdentityN_1	IdentityNLSTM/lstm_cell/mul_3:z:0LSTM/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-978919*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/IdentityN_1©
LSTM/lstm_cell/mul_4MulLSTM/lstm_cell/Sigmoid_3:y:0#LSTM/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_4
"LSTM/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2$
"LSTM/TensorArrayV2_1/element_shapeÌ
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
	LSTM/time
LSTM/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
LSTM/while/maximum_iterationst
LSTM/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
LSTM/while/loop_counter´

LSTM/whileWhile LSTM/while/loop_counter:output:0&LSTM/while/maximum_iterations:output:0LSTM/time:output:0LSTM/TensorArrayV2_1:handle:0LSTM/zeros:output:0LSTM/zeros_1:output:0LSTM/strided_slice_1:output:0<LSTM/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*"
bodyR
LSTM_while_body_978930*"
condR
LSTM_while_cond_978929*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2

LSTM/while¿
5LSTM/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5LSTM/TensorArrayV2Stack/TensorListStack/element_shapeý
'LSTM/TensorArrayV2Stack/TensorListStackTensorListStackLSTM/while:output:3>LSTM/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02)
'LSTM/TensorArrayV2Stack/TensorListStack
LSTM/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
LSTM/strided_slice_3/stack
LSTM/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_3/stack_1
LSTM/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_3/stack_2¹
LSTM/strided_slice_3StridedSlice0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0#LSTM/strided_slice_3/stack:output:0%LSTM/strided_slice_3/stack_1:output:0%LSTM/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
LSTM/strided_slice_3
LSTM/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose_1/permº
LSTM/transpose_1	Transpose0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0LSTM/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
Attention/Shape
Attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Attention/strided_slice/stack
Attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_1
Attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_2
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
Attention/unstack°
 Attention/Shape_2/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 Attention/Shape_2/ReadVariableOpw
Attention/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      2
Attention/Shape_2~
Attention/unstack_1UnpackAttention/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
Attention/unstack_1
Attention/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Attention/Reshape/shape
Attention/ReshapeReshapeLSTM/transpose_1:y:0 Attention/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Reshape´
"Attention/transpose/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"Attention/transpose/ReadVariableOp
Attention/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
Attention/transpose/perm±
Attention/transpose	Transpose*Attention/transpose/ReadVariableOp:value:0!Attention/transpose/perm:output:0*
T0* 
_output_shapes
:
2
Attention/transpose
Attention/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ÿÿÿÿ2
Attention/Reshape_1/shape
Attention/Reshape_1ReshapeAttention/transpose:y:0"Attention/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
Attention/Reshape_1
Attention/MatMulMatMulAttention/Reshape:output:0Attention/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
B :2
Attention/Reshape_2/shape/2Ô
Attention/Reshape_2/shapePackAttention/unstack:output:0$Attention/Reshape_2/shape/1:output:0$Attention/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Attention/Reshape_2/shape¬
Attention/Reshape_2ReshapeAttention/MatMul:product:0"Attention/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Reshape_2
Attention/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
Attention/transpose_1/perm­
Attention/transpose_1	TransposeLSTM/transpose_1:y:0#Attention/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/transpose_1¨
Attention/MatMul_1BatchMatMulV2Attention/Reshape_2:output:0Attention/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/MatMul_1q
Attention/Shape_3ShapeAttention/MatMul_1:output:0*
T0*
_output_shapes
:2
Attention/Shape_3
Attention/ReadVariableOpReadVariableOp!attention_readvariableop_resource*
_output_shapes
:*
dtype02
Attention/ReadVariableOp
Attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
Attention/strided_slice_1/stack
!Attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_1
!Attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_2°
Attention/strided_slice_1StridedSlice Attention/ReadVariableOp:value:0(Attention/strided_slice_1/stack:output:0*Attention/strided_slice_1/stack_1:output:0*Attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Attention/strided_slice_1
Attention/addAddV2Attention/MatMul_1:output:0"Attention/strided_slice_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/addz
Attention/SigmoidSigmoidAttention/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Sigmoid
Attention/mulMulAttention/add:z:0Attention/Sigmoid:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/mul}
Attention/IdentityIdentityAttention/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/IdentityÜ
Attention/IdentityN	IdentityNAttention/mul:z:0Attention/add:z:0*
T
2*,
_gradient_op_typeCustomGradient-979061*B
_output_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
Attention/IdentityN
Attention/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
Attention/Max/reduction_indices´
Attention/MaxMaxAttention/IdentityN:output:0(Attention/Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Attention/Max
Attention/subSubAttention/IdentityN:output:0Attention/Max:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/subn
Attention/ExpExpAttention/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Exp
Attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
Attention/Sum/reduction_indices©
Attention/SumSumAttention/Exp:y:0(Attention/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Attention/Sum
Attention/truedivRealDivAttention/Exp:y:0Attention/Sum:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/truediv
Attention/MatMul_2BatchMatMulV2Attention/truediv:z:0LSTM/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/MatMul_2q
Attention/Shape_4ShapeAttention/MatMul_2:output:0*
T0*
_output_shapes
:2
Attention/Shape_4
TimeDisDense1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape/shape¯
TimeDisDense1/ReshapeReshapeAttention/MatMul_2:output:0$TimeDisDense1/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/ReshapeÊ
)TimeDisDense1/dense/MatMul/ReadVariableOpReadVariableOp2timedisdense1_dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02+
)TimeDisDense1/dense/MatMul/ReadVariableOpÇ
TimeDisDense1/dense/MatMulMatMulTimeDisDense1/Reshape:output:01TimeDisDense1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/MatMulÈ
*TimeDisDense1/dense/BiasAdd/ReadVariableOpReadVariableOp3timedisdense1_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*TimeDisDense1/dense/BiasAdd/ReadVariableOpÑ
TimeDisDense1/dense/BiasAddBiasAdd$TimeDisDense1/dense/MatMul:product:02TimeDisDense1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/BiasAdd
TimeDisDense1/dense/SigmoidSigmoid$TimeDisDense1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/Sigmoid²
TimeDisDense1/dense/mulMul$TimeDisDense1/dense/BiasAdd:output:0TimeDisDense1/dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/mul
TimeDisDense1/dense/IdentityIdentityTimeDisDense1/dense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/Identity
TimeDisDense1/dense/IdentityN	IdentityNTimeDisDense1/dense/mul:z:0$TimeDisDense1/dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-979084*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/IdentityN
TimeDisDense1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
TimeDisDense1/Reshape_1/shapeÃ
TimeDisDense1/Reshape_1Reshape&TimeDisDense1/dense/IdentityN:output:0&TimeDisDense1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/Reshape_1
TimeDisDense1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape_2/shapeµ
TimeDisDense1/Reshape_2ReshapeAttention/MatMul_2:output:0&TimeDisDense1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/Reshape_2®
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/free
dense_1/Tensordot/ShapeShape TimeDisDense1/Reshape_1:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisù
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axisÿ
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1¨
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisØ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat¬
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stackÂ
dense_1/Tensordot/transpose	Transpose TimeDisDense1/Reshape_1:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_1/Tensordot/transpose¿
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/Reshape¾
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/MatMul
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/Const_2
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axiså
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1°
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp§
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddÒ
IdentityIdentitydense_1/BiasAdd:output:0^Attention/ReadVariableOp#^Attention/transpose/ReadVariableOp&^LSTM/lstm_cell/BiasAdd/ReadVariableOp%^LSTM/lstm_cell/MatMul/ReadVariableOp'^LSTM/lstm_cell/MatMul_1/ReadVariableOp^LSTM/while+^TimeDisDense1/dense/BiasAdd/ReadVariableOp*^TimeDisDense1/dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::24
Attention/ReadVariableOpAttention/ReadVariableOp2H
"Attention/transpose/ReadVariableOp"Attention/transpose/ReadVariableOp2N
%LSTM/lstm_cell/BiasAdd/ReadVariableOp%LSTM/lstm_cell/BiasAdd/ReadVariableOp2L
$LSTM/lstm_cell/MatMul/ReadVariableOp$LSTM/lstm_cell/MatMul/ReadVariableOp2P
&LSTM/lstm_cell/MatMul_1/ReadVariableOp&LSTM/lstm_cell/MatMul_1/ReadVariableOp2

LSTM/while
LSTM/while2X
*TimeDisDense1/dense/BiasAdd/ReadVariableOp*TimeDisDense1/dense/BiasAdd/ReadVariableOp2V
)TimeDisDense1/dense/MatMul/ReadVariableOp)TimeDisDense1/dense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±a
Ý
@__inference_LSTM_layer_call_and_return_conditional_losses_977967

inputs,
(lstm_cell_matmul_readvariableop_resource.
*lstm_cell_matmul_1_readvariableop_resource-
)lstm_cell_biasadd_readvariableop_resource
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢whileD
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¬
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
lstm_cell/MatMul/ReadVariableOp¤
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul³
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp 
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul_1
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add«
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp¡
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/BiasAddd
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/Constx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dimë
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_1
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_2
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identityß
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-977852*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_2
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add_1
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_4
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_3
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identity_1Þ
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-977861*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN_1
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counteré
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_977872*
condR
while_cond_977871*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÙ
IdentityIdentitytranspose_1:y:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
â
C__inference_dense_1_layer_call_and_return_conditional_losses_978402

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
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
:ÿÿÿÿÿÿÿÿÿ@2
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
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ú
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980118

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/Sigmoidz
	dense/mulMuldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	dense/mulm
dense/IdentityIdentitydense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityÍ
dense/IdentityN	IdentityNdense/mul:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-980107*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±

%__inference_LSTM_layer_call_fn_979892
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9775232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¯
Ã
while_cond_977585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_977585___redundant_placeholder04
0while_while_cond_977585___redundant_placeholder14
0while_while_cond_977585___redundant_placeholder24
0while_while_cond_977585___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ãI
ã
while_body_979613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
0while_lstm_cell_matmul_readvariableop_resource_06
2while_lstm_cell_matmul_1_readvariableop_resource_05
1while_lstm_cell_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
.while_lstm_cell_matmul_readvariableop_resource4
0while_lstm_cell_matmul_1_readvariableop_resource3
/while_lstm_cell_biasadd_readvariableop_resource¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÀ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOpÎ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMulÇ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp·
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMul_1¬
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add¿
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp¹
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/BiasAddp
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell/Const
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell/split
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_1
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_2§
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_1
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity÷
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979656*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN©
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_2
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add_1
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_3
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_4¢
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_3
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity_1ö
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979665*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN_1­
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_4Ý
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
while/add_1Ù
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityì
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Û
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ù
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4ù
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2P
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ç
ä
&__inference_model_layer_call_fn_979167

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_9785292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ã
while_cond_977453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_977453___redundant_placeholder04
0while_while_cond_977453___redundant_placeholder14
0while_while_cond_977453___redundant_placeholder24
0while_while_cond_977453___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ó/
Ô
E__inference_Attention_layer_call_and_return_conditional_losses_978226

inputs#
shape_2_readvariableop_resource
readvariableop_resource

identity_1¢ReadVariableOp¢transpose/ReadVariableOpD
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
strided_slice/stack_2â
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
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      2	
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
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ÿÿÿÿ2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
B :2
Reshape_2/shape/2¢
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
strided_slice_1/stack_2ô
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
:ÿÿÿÿÿÿÿÿÿ2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-978210*B
_output_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Max/reduction_indices
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Sum/reduction_indices
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4

Identity_1IdentityMatMul_2:output:0^ReadVariableOp^transpose/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
ú
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_978346

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/Sigmoidz
	dense/mulMuldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	dense/mulm
dense/IdentityIdentitydense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityÍ
dense/IdentityN	IdentityNdense/mul:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-978337*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1§
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê$
ü
while_body_977586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_977610_0
while_lstm_cell_977612_0
while_lstm_cell_977614_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_977610
while_lstm_cell_977612
while_lstm_cell_977614¢'while/lstm_cell/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÒ
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_977610_0while_lstm_cell_977612_0while_lstm_cell_977614_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_9771602)
'while/lstm_cell/StatefulPartitionedCallô
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2·
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3¿
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¿
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_977610while_lstm_cell_977610_0"2
while_lstm_cell_977612while_lstm_cell_977612_0"2
while_lstm_cell_977614while_lstm_cell_977614_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2R
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


.__inference_TimeDisDense1_layer_call_fn_980154

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9777552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¨
A__inference_model_layer_call_and_return_conditional_losses_978529

inputs
lstm_978504
lstm_978506
lstm_978508
attention_978511
attention_978513
timedisdense1_978516
timedisdense1_978518
dense_1_978523
dense_1_978525
identity¢!Attention/StatefulPartitionedCall¢LSTM/StatefulPartitionedCall¢%TimeDisDense1/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
LSTM/StatefulPartitionedCallStatefulPartitionedCallinputslstm_978504lstm_978506lstm_978508*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9781402
LSTM/StatefulPartitionedCall½
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_978511attention_978513*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_9782822#
!Attention/StatefulPartitionedCallÕ
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_978516timedisdense1_978518*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9783462'
%TimeDisDense1/StatefulPartitionedCall
TimeDisDense1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape/shape¾
TimeDisDense1/ReshapeReshape*Attention/StatefulPartitionedCall:output:0$TimeDisDense1/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/Reshape»
dense_1/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_1_978523dense_1_978525*
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
GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_9784022!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ãI
ã
while_body_977872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
0while_lstm_cell_matmul_readvariableop_resource_06
2while_lstm_cell_matmul_1_readvariableop_resource_05
1while_lstm_cell_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
.while_lstm_cell_matmul_readvariableop_resource4
0while_lstm_cell_matmul_1_readvariableop_resource3
/while_lstm_cell_biasadd_readvariableop_resource¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÀ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOpÎ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMulÇ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp·
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMul_1¬
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add¿
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp¹
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/BiasAddp
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell/Const
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell/split
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_1
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_2§
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_1
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity÷
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-977915*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN©
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_2
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add_1
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_3
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_4¢
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_3
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity_1ö
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-977924*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN_1­
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_4Ý
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
while/add_1Ù
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityì
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Û
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ù
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4ù
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2P
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×
ú
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980073

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/Sigmoidz
	dense/mulMuldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	dense/mulm
dense/IdentityIdentitydense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityÍ
dense/IdentityN	IdentityNdense/mul:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-980064*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1§
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±a
Ý
@__inference_LSTM_layer_call_and_return_conditional_losses_979513

inputs,
(lstm_cell_matmul_readvariableop_resource.
*lstm_cell_matmul_1_readvariableop_resource-
)lstm_cell_biasadd_readvariableop_resource
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢whileD
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¬
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
lstm_cell/MatMul/ReadVariableOp¤
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul³
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp 
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul_1
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add«
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp¡
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/BiasAddd
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/Constx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dimë
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_1
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_2
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identityß
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979398*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_2
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add_1
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_4
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_3
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identity_1Þ
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979407*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN_1
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counteré
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_979418*
condR
while_cond_979417*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÙ
IdentityIdentitytranspose_1:y:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
¬
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_977784

inputs
dense_977774
dense_977776
identity¢dense/StatefulPartitionedCallD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_977774dense_977776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_9776912
dense/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¢
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1
IdentityIdentityReshape_1:output:0^dense/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó/
Ô
E__inference_Attention_layer_call_and_return_conditional_losses_979959

inputs#
shape_2_readvariableop_resource
readvariableop_resource

identity_1¢ReadVariableOp¢transpose/ReadVariableOpD
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
strided_slice/stack_2â
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
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      2	
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
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ÿÿÿÿ2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
B :2
Reshape_2/shape/2¢
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
strided_slice_1/stack_2ô
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
:ÿÿÿÿÿÿÿÿÿ2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-979943*B
_output_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Max/reduction_indices
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Sum/reduction_indices
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4

Identity_1IdentityMatMul_2:output:0^ReadVariableOp^transpose/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ãI
ã
while_body_979245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
0while_lstm_cell_matmul_readvariableop_resource_06
2while_lstm_cell_matmul_1_readvariableop_resource_05
1while_lstm_cell_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
.while_lstm_cell_matmul_readvariableop_resource4
0while_lstm_cell_matmul_1_readvariableop_resource3
/while_lstm_cell_biasadd_readvariableop_resource¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÀ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOpÎ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMulÇ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp·
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMul_1¬
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add¿
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp¹
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/BiasAddp
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell/Const
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell/split
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_1
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_2§
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_1
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity÷
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979288*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN©
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_2
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add_1
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_3
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_4¢
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_3
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity_1ö
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979297*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN_1­
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_4Ý
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
while/add_1Ù
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityì
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Û
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ù
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4ù
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2P
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¯
Ã
while_cond_979244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_979244___redundant_placeholder04
0while_while_cond_979244___redundant_placeholder14
0while_while_cond_979244___redundant_placeholder24
0while_while_cond_979244___redundant_placeholder3
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
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ù

.__inference_TimeDisDense1_layer_call_fn_980091

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9783462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
R
	
LSTM_while_body_978930&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_09
5lstm_while_lstm_cell_matmul_readvariableop_resource_0;
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor7
3lstm_while_lstm_cell_matmul_readvariableop_resource9
5lstm_while_lstm_cell_matmul_1_readvariableop_resource8
4lstm_while_lstm_cell_biasadd_readvariableop_resource¢+LSTM/while/lstm_cell/BiasAdd/ReadVariableOp¢*LSTM/while/lstm_cell/MatMul/ReadVariableOp¢,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpÍ
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<LSTM/while/TensorArrayV2Read/TensorListGetItem/element_shapeñ
.LSTM/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderELSTM/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype020
.LSTM/while/TensorArrayV2Read/TensorListGetItemÏ
*LSTM/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02,
*LSTM/while/lstm_cell/MatMul/ReadVariableOpâ
LSTM/while/lstm_cell/MatMulMatMul5LSTM/while/TensorArrayV2Read/TensorListGetItem:item:02LSTM/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/MatMulÖ
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,LSTM/while/lstm_cell/MatMul_1/ReadVariableOpË
LSTM/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24LSTM/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/MatMul_1À
LSTM/while/lstm_cell/addAddV2%LSTM/while/lstm_cell/MatMul:product:0'LSTM/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/addÎ
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02-
+LSTM/while/lstm_cell/BiasAdd/ReadVariableOpÍ
LSTM/while/lstm_cell/BiasAddBiasAddLSTM/while/lstm_cell/add:z:03LSTM/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/BiasAddz
LSTM/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/while/lstm_cell/Const
$LSTM/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$LSTM/while/lstm_cell/split/split_dim
LSTM/while/lstm_cell/splitSplit-LSTM/while/lstm_cell/split/split_dim:output:0%LSTM/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
LSTM/while/lstm_cell/split
LSTM/while/lstm_cell/SigmoidSigmoid#LSTM/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/Sigmoid£
LSTM/while/lstm_cell/Sigmoid_1Sigmoid#LSTM/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_1¬
LSTM/while/lstm_cell/mulMul"LSTM/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul£
LSTM/while/lstm_cell/Sigmoid_2Sigmoid#LSTM/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_2»
LSTM/while/lstm_cell/mul_1Mul#LSTM/while/lstm_cell/split:output:2"LSTM/while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_1
LSTM/while/lstm_cell/IdentityIdentityLSTM/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/Identity
LSTM/while/lstm_cell/IdentityN	IdentityNLSTM/while/lstm_cell/mul_1:z:0#LSTM/while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-978973*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/IdentityN½
LSTM/while/lstm_cell/mul_2Mul LSTM/while/lstm_cell/Sigmoid:y:0'LSTM/while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_2²
LSTM/while/lstm_cell/add_1AddV2LSTM/while/lstm_cell/mul:z:0LSTM/while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/add_1£
LSTM/while/lstm_cell/Sigmoid_3Sigmoid#LSTM/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_3
LSTM/while/lstm_cell/Sigmoid_4SigmoidLSTM/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
LSTM/while/lstm_cell/Sigmoid_4¶
LSTM/while/lstm_cell/mul_3MulLSTM/while/lstm_cell/add_1:z:0"LSTM/while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_3¡
LSTM/while/lstm_cell/Identity_1IdentityLSTM/while/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
LSTM/while/lstm_cell/Identity_1
 LSTM/while/lstm_cell/IdentityN_1	IdentityNLSTM/while/lstm_cell/mul_3:z:0LSTM/while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-978982*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2"
 LSTM/while/lstm_cell/IdentityN_1Á
LSTM/while/lstm_cell/mul_4Mul"LSTM/while/lstm_cell/Sigmoid_3:y:0)LSTM/while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/lstm_cell/mul_4ö
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
LSTM/while/add_1/y
LSTM/while/add_1AddV2"lstm_while_lstm_while_loop_counterLSTM/while/add_1/y:output:0*
T0*
_output_shapes
: 2
LSTM/while/add_1÷
LSTM/while/IdentityIdentityLSTM/while/add_1:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity
LSTM/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_1ù
LSTM/while/Identity_2IdentityLSTM/while/add:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_2¦
LSTM/while/Identity_3Identity?LSTM/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
LSTM/while/Identity_3
LSTM/while/Identity_4IdentityLSTM/while/lstm_cell/mul_4:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/Identity_4
LSTM/while/Identity_5IdentityLSTM/while/lstm_cell/add_1:z:0,^LSTM/while/lstm_cell/BiasAdd/ReadVariableOp+^LSTM/while/lstm_cell/MatMul/ReadVariableOp-^LSTM/while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/while/Identity_5"3
lstm_while_identityLSTM/while/Identity:output:0"7
lstm_while_identity_1LSTM/while/Identity_1:output:0"7
lstm_while_identity_2LSTM/while/Identity_2:output:0"7
lstm_while_identity_3LSTM/while/Identity_3:output:0"7
lstm_while_identity_4LSTM/while/Identity_4:output:0"7
lstm_while_identity_5LSTM/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2Z
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ãI
ã
while_body_979786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
0while_lstm_cell_matmul_readvariableop_resource_06
2while_lstm_cell_matmul_1_readvariableop_resource_05
1while_lstm_cell_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
.while_lstm_cell_matmul_readvariableop_resource4
0while_lstm_cell_matmul_1_readvariableop_resource3
/while_lstm_cell_biasadd_readvariableop_resource¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÀ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOpÎ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMulÇ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp·
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMul_1¬
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add¿
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp¹
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/BiasAddp
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell/Const
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell/split
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_1
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_2§
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_1
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity÷
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979829*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN©
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_2
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add_1
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_3
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_4¢
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_3
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity_1ö
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979838*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN_1­
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_4Ý
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
while/add_1Ù
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityì
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Û
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ù
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4ù
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2P
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ða
ß
@__inference_LSTM_layer_call_and_return_conditional_losses_979881
inputs_0,
(lstm_cell_matmul_readvariableop_resource.
*lstm_cell_matmul_1_readvariableop_resource-
)lstm_cell_biasadd_readvariableop_resource
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢whileF
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
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¬
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
lstm_cell/MatMul/ReadVariableOp¤
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul³
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!lstm_cell/MatMul_1/ReadVariableOp 
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/MatMul_1
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add«
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 lstm_cell/BiasAdd/ReadVariableOp¡
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/BiasAddd
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/Constx
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dimë
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell/split~
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_1
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_2
lstm_cell/mul_1Mullstm_cell/split:output:2lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_1|
lstm_cell/IdentityIdentitylstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identityß
lstm_cell/IdentityN	IdentityNlstm_cell/mul_1:z:0lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-979766*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_2
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/add_1
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_3}
lstm_cell/Sigmoid_4Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Sigmoid_4
lstm_cell/mul_3Mullstm_cell/add_1:z:0lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_3
lstm_cell/Identity_1Identitylstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/Identity_1Þ
lstm_cell/IdentityN_1	IdentityNlstm_cell/mul_3:z:0lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-979775*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/IdentityN_1
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counteré
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_979786*
condR
while_cond_979785*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeâ
IdentityIdentitytranspose_1:y:0!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ó/
Ô
E__inference_Attention_layer_call_and_return_conditional_losses_980015

inputs#
shape_2_readvariableop_resource
readvariableop_resource

identity_1¢ReadVariableOp¢transpose/ReadVariableOpD
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
strided_slice/stack_2â
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
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      2	
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
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ÿÿÿÿ2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
B :2
Reshape_2/shape/2¢
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
strided_slice_1/stack_2ô
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
:ÿÿÿÿÿÿÿÿÿ2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-979999*B
_output_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Max/reduction_indices
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Sum/reduction_indices
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4

Identity_1IdentityMatMul_2:output:0^ReadVariableOp^transpose/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é"
Ü
E__inference_lstm_cell_layer_call_and_return_conditional_losses_980288

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-980269*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-980278*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1

ú
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980145

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/Sigmoidz
	dense/mulMuldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	dense/mulm
dense/IdentityIdentitydense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityÍ
dense/IdentityN	IdentityNdense/mul:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-980134*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
â
C__inference_dense_1_layer_call_and_return_conditional_losses_980193

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
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
:ÿÿÿÿÿÿÿÿÿ@2
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
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¿
Ê
*__inference_lstm_cell_layer_call_fn_980322

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
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_9771602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
ó/
Ô
E__inference_Attention_layer_call_and_return_conditional_losses_978282

inputs#
shape_2_readvariableop_resource
readvariableop_resource

identity_1¢ReadVariableOp¢transpose/ReadVariableOpD
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
strided_slice/stack_2â
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
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      2	
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
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape
transpose/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
transpose/ReadVariableOpq
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose/perm
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0* 
_output_shapes
:
2
	transposes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ÿÿÿÿ2
Reshape_1/shapeu
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
B :2
Reshape_2/shape/2¢
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	Transposeinputstranspose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1
MatMul_1BatchMatMulV2Reshape_2:output:0transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
strided_slice_1/stack_2ô
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
:ÿÿÿÿÿÿÿÿÿ2
add\
SigmoidSigmoidadd:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid]
mulMuladd:z:0Sigmoid:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
	IdentityN	IdentityNmul:z:0add:z:0*
T
2*,
_gradient_op_typeCustomGradient-978266*B
_output_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Max/reduction_indices
MaxMaxIdentityN:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Maxi
subSubIdentityN:output:0Max:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
subP
ExpExpsub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Sum/reduction_indices
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Sumj
truedivRealDivExp:y:0Sum:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivq
MatMul_2BatchMatMulV2truediv:z:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2S
Shape_4ShapeMatMul_2:output:0*
T0*
_output_shapes
:2	
Shape_4

Identity_1IdentityMatMul_2:output:0^ReadVariableOp^transpose/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ::2 
ReadVariableOpReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
âd

"__inference__traced_restore_980524
file_prefix/
+assignvariableop_attention_attention_mul_wa1
-assignvariableop_1_attention_attention_mul_ba%
!assignvariableop_2_dense_1_kernel#
assignvariableop_3_dense_1_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rate,
(assignvariableop_9_lstm_lstm_cell_kernel7
3assignvariableop_10_lstm_lstm_cell_recurrent_kernel+
'assignvariableop_11_lstm_lstm_cell_bias,
(assignvariableop_12_timedisdense1_kernel*
&assignvariableop_13_timedisdense1_bias
assignvariableop_14_total
assignvariableop_15_count
assignvariableop_16_total_1
assignvariableop_17_count_1
assignvariableop_18_total_2
assignvariableop_19_count_2-
)assignvariableop_20_adam_dense_1_kernel_m+
'assignvariableop_21_adam_dense_1_bias_m-
)assignvariableop_22_adam_dense_1_kernel_v+
'assignvariableop_23_adam_dense_1_bias_v
identity_25¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ö
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*â

valueØ
BÕ
B@layer_with_weights-1/Attention_Mul_Wa/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/Attention_Mul_ba/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÀ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¨
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityª
AssignVariableOpAssignVariableOp+assignvariableop_attention_attention_mul_waIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1²
AssignVariableOp_1AssignVariableOp-assignvariableop_1_attention_attention_mul_baIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¦
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¤
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
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

Identity_9­
AssignVariableOp_9AssignVariableOp(assignvariableop_9_lstm_lstm_cell_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10»
AssignVariableOp_10AssignVariableOp3assignvariableop_10_lstm_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¯
AssignVariableOp_11AssignVariableOp'assignvariableop_11_lstm_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12°
AssignVariableOp_12AssignVariableOp(assignvariableop_12_timedisdense1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13®
AssignVariableOp_13AssignVariableOp&assignvariableop_13_timedisdense1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¡
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20±
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¯
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_1_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_1_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¯
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_1_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpî
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24á
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*u
_input_shapesd
b: ::::::::::::::::::::::::2$
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
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
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
±
æ
$__inference_signature_wrapper_978583

input_attn
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity¢StatefulPartitionedCall´
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
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_9770342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
input_attn
á
¬
A__inference_model_layer_call_and_return_conditional_losses_978419

input_attn
lstm_978163
lstm_978165
lstm_978167
attention_978302
attention_978304
timedisdense1_978365
timedisdense1_978367
dense_1_978413
dense_1_978415
identity¢!Attention/StatefulPartitionedCall¢LSTM/StatefulPartitionedCall¢%TimeDisDense1/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
LSTM/StatefulPartitionedCallStatefulPartitionedCall
input_attnlstm_978163lstm_978165lstm_978167*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9779672
LSTM/StatefulPartitionedCall½
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_978302attention_978304*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_9782262#
!Attention/StatefulPartitionedCallÕ
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_978365timedisdense1_978367*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9783262'
%TimeDisDense1/StatefulPartitionedCall
TimeDisDense1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape/shape¾
TimeDisDense1/ReshapeReshape*Attention/StatefulPartitionedCall:output:0$TimeDisDense1/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/Reshape»
dense_1/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_1_978413dense_1_978415*
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
GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_9784022!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
input_attn
Æ	
§
LSTM_while_cond_978929&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_978929___redundant_placeholder0>
:lstm_while_lstm_while_cond_978929___redundant_placeholder1>
:lstm_while_lstm_while_cond_978929___redundant_placeholder2>
:lstm_while_lstm_while_cond_978929___redundant_placeholder3
lstm_while_identity

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
lstm_while_identityLSTM/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
¨
A__inference_model_layer_call_and_return_conditional_losses_978478

inputs
lstm_978453
lstm_978455
lstm_978457
attention_978460
attention_978462
timedisdense1_978465
timedisdense1_978467
dense_1_978472
dense_1_978474
identity¢!Attention/StatefulPartitionedCall¢LSTM/StatefulPartitionedCall¢%TimeDisDense1/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
LSTM/StatefulPartitionedCallStatefulPartitionedCallinputslstm_978453lstm_978455lstm_978457*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_LSTM_layer_call_and_return_conditional_losses_9779672
LSTM/StatefulPartitionedCall½
!Attention/StatefulPartitionedCallStatefulPartitionedCall%LSTM/StatefulPartitionedCall:output:0attention_978460attention_978462*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_Attention_layer_call_and_return_conditional_losses_9782262#
!Attention/StatefulPartitionedCallÕ
%TimeDisDense1/StatefulPartitionedCallStatefulPartitionedCall*Attention/StatefulPartitionedCall:output:0timedisdense1_978465timedisdense1_978467*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_9783262'
%TimeDisDense1/StatefulPartitionedCall
TimeDisDense1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape/shape¾
TimeDisDense1/ReshapeReshape*Attention/StatefulPartitionedCall:output:0$TimeDisDense1/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/Reshape»
dense_1/StatefulPartitionedCallStatefulPartitionedCall.TimeDisDense1/StatefulPartitionedCall:output:0dense_1_978472dense_1_978474*
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
GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_9784022!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0"^Attention/StatefulPartitionedCall^LSTM/StatefulPartitionedCall&^TimeDisDense1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::2F
!Attention/StatefulPartitionedCall!Attention/StatefulPartitionedCall2<
LSTM/StatefulPartitionedCallLSTM/StatefulPartitionedCall2N
%TimeDisDense1/StatefulPartitionedCall%TimeDisDense1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
×
!__inference__wrapped_model_977034

input_attn7
3model_lstm_lstm_cell_matmul_readvariableop_resource9
5model_lstm_lstm_cell_matmul_1_readvariableop_resource8
4model_lstm_lstm_cell_biasadd_readvariableop_resource3
/model_attention_shape_2_readvariableop_resource+
'model_attention_readvariableop_resource<
8model_timedisdense1_dense_matmul_readvariableop_resource=
9model_timedisdense1_dense_biasadd_readvariableop_resource3
/model_dense_1_tensordot_readvariableop_resource1
-model_dense_1_biasadd_readvariableop_resource
identity¢model/Attention/ReadVariableOp¢(model/Attention/transpose/ReadVariableOp¢+model/LSTM/lstm_cell/BiasAdd/ReadVariableOp¢*model/LSTM/lstm_cell/MatMul/ReadVariableOp¢,model/LSTM/lstm_cell/MatMul_1/ReadVariableOp¢model/LSTM/while¢0model/TimeDisDense1/dense/BiasAdd/ReadVariableOp¢/model/TimeDisDense1/dense/MatMul/ReadVariableOp¢$model/dense_1/BiasAdd/ReadVariableOp¢&model/dense_1/Tensordot/ReadVariableOp^
model/LSTM/ShapeShape
input_attn*
T0*
_output_shapes
:2
model/LSTM/Shape
model/LSTM/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
model/LSTM/strided_slice/stack
 model/LSTM/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 model/LSTM/strided_slice/stack_1
 model/LSTM/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 model/LSTM/strided_slice/stack_2¤
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
B :2
model/LSTM/zeros/mul/y
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
B :è2
model/LSTM/zeros/Less/y
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
B :2
model/LSTM/zeros/packed/1¯
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
model/LSTM/zeros/Const¢
model/LSTM/zerosFill model/LSTM/zeros/packed:output:0model/LSTM/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/zerosw
model/LSTM/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
model/LSTM/zeros_1/mul/y
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
B :è2
model/LSTM/zeros_1/Less/y
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
B :2
model/LSTM/zeros_1/packed/1µ
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
model/LSTM/zeros_1/Constª
model/LSTM/zeros_1Fill"model/LSTM/zeros_1/packed:output:0!model/LSTM/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/zeros_1
model/LSTM/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model/LSTM/transpose/perm
model/LSTM/transpose	Transpose
input_attn"model/LSTM/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/transposep
model/LSTM/Shape_1Shapemodel/LSTM/transpose:y:0*
T0*
_output_shapes
:2
model/LSTM/Shape_1
 model/LSTM/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 model/LSTM/strided_slice_1/stack
"model/LSTM/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_1/stack_1
"model/LSTM/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_1/stack_2°
model/LSTM/strided_slice_1StridedSlicemodel/LSTM/Shape_1:output:0)model/LSTM/strided_slice_1/stack:output:0+model/LSTM/strided_slice_1/stack_1:output:0+model/LSTM/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/LSTM/strided_slice_1
&model/LSTM/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&model/LSTM/TensorArrayV2/element_shapeÞ
model/LSTM/TensorArrayV2TensorListReserve/model/LSTM/TensorArrayV2/element_shape:output:0#model/LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model/LSTM/TensorArrayV2Õ
@model/LSTM/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@model/LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape¤
2model/LSTM/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/LSTM/transpose:y:0Imodel/LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2model/LSTM/TensorArrayUnstack/TensorListFromTensor
 model/LSTM/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 model/LSTM/strided_slice_2/stack
"model/LSTM/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_2/stack_1
"model/LSTM/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_2/stack_2¾
model/LSTM/strided_slice_2StridedSlicemodel/LSTM/transpose:y:0)model/LSTM/strided_slice_2/stack:output:0+model/LSTM/strided_slice_2/stack_1:output:0+model/LSTM/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
model/LSTM/strided_slice_2Í
*model/LSTM/lstm_cell/MatMul/ReadVariableOpReadVariableOp3model_lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02,
*model/LSTM/lstm_cell/MatMul/ReadVariableOpÐ
model/LSTM/lstm_cell/MatMulMatMul#model/LSTM/strided_slice_2:output:02model/LSTM/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/MatMulÔ
,model/LSTM/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp5model_lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,model/LSTM/lstm_cell/MatMul_1/ReadVariableOpÌ
model/LSTM/lstm_cell/MatMul_1MatMulmodel/LSTM/zeros:output:04model/LSTM/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/MatMul_1À
model/LSTM/lstm_cell/addAddV2%model/LSTM/lstm_cell/MatMul:product:0'model/LSTM/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/addÌ
+model/LSTM/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4model_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+model/LSTM/lstm_cell/BiasAdd/ReadVariableOpÍ
model/LSTM/lstm_cell/BiasAddBiasAddmodel/LSTM/lstm_cell/add:z:03model/LSTM/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/BiasAddz
model/LSTM/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
model/LSTM/lstm_cell/Const
$model/LSTM/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model/LSTM/lstm_cell/split/split_dim
model/LSTM/lstm_cell/splitSplit-model/LSTM/lstm_cell/split/split_dim:output:0%model/LSTM/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
model/LSTM/lstm_cell/split
model/LSTM/lstm_cell/SigmoidSigmoid#model/LSTM/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/Sigmoid£
model/LSTM/lstm_cell/Sigmoid_1Sigmoid#model/LSTM/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/LSTM/lstm_cell/Sigmoid_1¯
model/LSTM/lstm_cell/mulMul"model/LSTM/lstm_cell/Sigmoid_1:y:0model/LSTM/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/mul£
model/LSTM/lstm_cell/Sigmoid_2Sigmoid#model/LSTM/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/LSTM/lstm_cell/Sigmoid_2»
model/LSTM/lstm_cell/mul_1Mul#model/LSTM/lstm_cell/split:output:2"model/LSTM/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/mul_1
model/LSTM/lstm_cell/IdentityIdentitymodel/LSTM/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/Identity
model/LSTM/lstm_cell/IdentityN	IdentityNmodel/LSTM/lstm_cell/mul_1:z:0#model/LSTM/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-976823*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
model/LSTM/lstm_cell/IdentityN½
model/LSTM/lstm_cell/mul_2Mul model/LSTM/lstm_cell/Sigmoid:y:0'model/LSTM/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/mul_2²
model/LSTM/lstm_cell/add_1AddV2model/LSTM/lstm_cell/mul:z:0model/LSTM/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/add_1£
model/LSTM/lstm_cell/Sigmoid_3Sigmoid#model/LSTM/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/LSTM/lstm_cell/Sigmoid_3
model/LSTM/lstm_cell/Sigmoid_4Sigmoidmodel/LSTM/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/LSTM/lstm_cell/Sigmoid_4¶
model/LSTM/lstm_cell/mul_3Mulmodel/LSTM/lstm_cell/add_1:z:0"model/LSTM/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/mul_3¡
model/LSTM/lstm_cell/Identity_1Identitymodel/LSTM/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
model/LSTM/lstm_cell/Identity_1
 model/LSTM/lstm_cell/IdentityN_1	IdentityNmodel/LSTM/lstm_cell/mul_3:z:0model/LSTM/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-976832*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2"
 model/LSTM/lstm_cell/IdentityN_1Á
model/LSTM/lstm_cell/mul_4Mul"model/LSTM/lstm_cell/Sigmoid_3:y:0)model/LSTM/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/LSTM/lstm_cell/mul_4¥
(model/LSTM/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2*
(model/LSTM/TensorArrayV2_1/element_shapeä
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
model/LSTM/time
#model/LSTM/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#model/LSTM/while/maximum_iterations
model/LSTM/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
model/LSTM/while/loop_counter
model/LSTM/whileWhile&model/LSTM/while/loop_counter:output:0,model/LSTM/while/maximum_iterations:output:0model/LSTM/time:output:0#model/LSTM/TensorArrayV2_1:handle:0model/LSTM/zeros:output:0model/LSTM/zeros_1:output:0#model/LSTM/strided_slice_1:output:0Bmodel/LSTM/TensorArrayUnstack/TensorListFromTensor:output_handle:03model_lstm_lstm_cell_matmul_readvariableop_resource5model_lstm_lstm_cell_matmul_1_readvariableop_resource4model_lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*(
body R
model_LSTM_while_body_976843*(
cond R
model_LSTM_while_cond_976842*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
model/LSTM/whileË
;model/LSTM/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2=
;model/LSTM/TensorArrayV2Stack/TensorListStack/element_shape
-model/LSTM/TensorArrayV2Stack/TensorListStackTensorListStackmodel/LSTM/while:output:3Dmodel/LSTM/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02/
-model/LSTM/TensorArrayV2Stack/TensorListStack
 model/LSTM/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2"
 model/LSTM/strided_slice_3/stack
"model/LSTM/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"model/LSTM/strided_slice_3/stack_1
"model/LSTM/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"model/LSTM/strided_slice_3/stack_2Ý
model/LSTM/strided_slice_3StridedSlice6model/LSTM/TensorArrayV2Stack/TensorListStack:tensor:0)model/LSTM/strided_slice_3/stack:output:0+model/LSTM/strided_slice_3/stack_1:output:0+model/LSTM/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
model/LSTM/strided_slice_3
model/LSTM/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model/LSTM/transpose_1/permÒ
model/LSTM/transpose_1	Transpose6model/LSTM/TensorArrayV2Stack/TensorListStack:tensor:0$model/LSTM/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
model/Attention/Shape
#model/Attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#model/Attention/strided_slice/stack
%model/Attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/Attention/strided_slice/stack_1
%model/Attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/Attention/strided_slice/stack_2Â
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
model/Attention/Shape_1
model/Attention/unstackUnpack model/Attention/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
model/Attention/unstackÂ
&model/Attention/Shape_2/ReadVariableOpReadVariableOp/model_attention_shape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&model/Attention/Shape_2/ReadVariableOp
model/Attention/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      2
model/Attention/Shape_2
model/Attention/unstack_1Unpack model/Attention/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
model/Attention/unstack_1
model/Attention/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
model/Attention/Reshape/shape´
model/Attention/ReshapeReshapemodel/LSTM/transpose_1:y:0&model/Attention/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/ReshapeÆ
(model/Attention/transpose/ReadVariableOpReadVariableOp/model_attention_shape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(model/Attention/transpose/ReadVariableOp
model/Attention/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2 
model/Attention/transpose/permÉ
model/Attention/transpose	Transpose0model/Attention/transpose/ReadVariableOp:value:0'model/Attention/transpose/perm:output:0*
T0* 
_output_shapes
:
2
model/Attention/transpose
model/Attention/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ÿÿÿÿ2!
model/Attention/Reshape_1/shapeµ
model/Attention/Reshape_1Reshapemodel/Attention/transpose:y:0(model/Attention/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
model/Attention/Reshape_1³
model/Attention/MatMulMatMul model/Attention/Reshape:output:0"model/Attention/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/MatMul
!model/Attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!model/Attention/Reshape_2/shape/1
!model/Attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :2#
!model/Attention/Reshape_2/shape/2ò
model/Attention/Reshape_2/shapePack model/Attention/unstack:output:0*model/Attention/Reshape_2/shape/1:output:0*model/Attention/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
model/Attention/Reshape_2/shapeÄ
model/Attention/Reshape_2Reshape model/Attention/MatMul:product:0(model/Attention/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/Reshape_2
 model/Attention/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 model/Attention/transpose_1/permÅ
model/Attention/transpose_1	Transposemodel/LSTM/transpose_1:y:0)model/Attention/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/transpose_1À
model/Attention/MatMul_1BatchMatMulV2"model/Attention/Reshape_2:output:0model/Attention/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/MatMul_1
model/Attention/Shape_3Shape!model/Attention/MatMul_1:output:0*
T0*
_output_shapes
:2
model/Attention/Shape_3¤
model/Attention/ReadVariableOpReadVariableOp'model_attention_readvariableop_resource*
_output_shapes
:*
dtype02 
model/Attention/ReadVariableOp
%model/Attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model/Attention/strided_slice_1/stack
'model/Attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model/Attention/strided_slice_1/stack_1
'model/Attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model/Attention/strided_slice_1/stack_2Ô
model/Attention/strided_slice_1StridedSlice&model/Attention/ReadVariableOp:value:0.model/Attention/strided_slice_1/stack:output:00model/Attention/strided_slice_1/stack_1:output:00model/Attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model/Attention/strided_slice_1¶
model/Attention/addAddV2!model/Attention/MatMul_1:output:0(model/Attention/strided_slice_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/add
model/Attention/SigmoidSigmoidmodel/Attention/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/Sigmoid
model/Attention/mulMulmodel/Attention/add:z:0model/Attention/Sigmoid:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/mul
model/Attention/IdentityIdentitymodel/Attention/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/Identityô
model/Attention/IdentityN	IdentityNmodel/Attention/mul:z:0model/Attention/add:z:0*
T
2*,
_gradient_op_typeCustomGradient-976974*B
_output_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
model/Attention/IdentityN
%model/Attention/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%model/Attention/Max/reduction_indicesÌ
model/Attention/MaxMax"model/Attention/IdentityN:output:0.model/Attention/Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
model/Attention/Max©
model/Attention/subSub"model/Attention/IdentityN:output:0model/Attention/Max:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/sub
model/Attention/ExpExpmodel/Attention/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/Exp
%model/Attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%model/Attention/Sum/reduction_indicesÁ
model/Attention/SumSummodel/Attention/Exp:y:0.model/Attention/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
model/Attention/Sumª
model/Attention/truedivRealDivmodel/Attention/Exp:y:0model/Attention/Sum:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/truedivµ
model/Attention/MatMul_2BatchMatMulV2model/Attention/truediv:z:0model/LSTM/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/Attention/MatMul_2
model/Attention/Shape_4Shape!model/Attention/MatMul_2:output:0*
T0*
_output_shapes
:2
model/Attention/Shape_4
!model/TimeDisDense1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2#
!model/TimeDisDense1/Reshape/shapeÇ
model/TimeDisDense1/ReshapeReshape!model/Attention/MatMul_2:output:0*model/TimeDisDense1/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/TimeDisDense1/ReshapeÜ
/model/TimeDisDense1/dense/MatMul/ReadVariableOpReadVariableOp8model_timedisdense1_dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype021
/model/TimeDisDense1/dense/MatMul/ReadVariableOpß
 model/TimeDisDense1/dense/MatMulMatMul$model/TimeDisDense1/Reshape:output:07model/TimeDisDense1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 model/TimeDisDense1/dense/MatMulÚ
0model/TimeDisDense1/dense/BiasAdd/ReadVariableOpReadVariableOp9model_timedisdense1_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0model/TimeDisDense1/dense/BiasAdd/ReadVariableOpé
!model/TimeDisDense1/dense/BiasAddBiasAdd*model/TimeDisDense1/dense/MatMul:product:08model/TimeDisDense1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!model/TimeDisDense1/dense/BiasAdd¯
!model/TimeDisDense1/dense/SigmoidSigmoid*model/TimeDisDense1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!model/TimeDisDense1/dense/SigmoidÊ
model/TimeDisDense1/dense/mulMul*model/TimeDisDense1/dense/BiasAdd:output:0%model/TimeDisDense1/dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/TimeDisDense1/dense/mul©
"model/TimeDisDense1/dense/IdentityIdentity!model/TimeDisDense1/dense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"model/TimeDisDense1/dense/Identity
#model/TimeDisDense1/dense/IdentityN	IdentityN!model/TimeDisDense1/dense/mul:z:0*model/TimeDisDense1/dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-976997*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2%
#model/TimeDisDense1/dense/IdentityN
#model/TimeDisDense1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2%
#model/TimeDisDense1/Reshape_1/shapeÛ
model/TimeDisDense1/Reshape_1Reshape,model/TimeDisDense1/dense/IdentityN:output:0,model/TimeDisDense1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/TimeDisDense1/Reshape_1
#model/TimeDisDense1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2%
#model/TimeDisDense1/Reshape_2/shapeÍ
model/TimeDisDense1/Reshape_2Reshape!model/Attention/MatMul_2:output:0,model/TimeDisDense1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/TimeDisDense1/Reshape_2À
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02(
&model/dense_1/Tensordot/ReadVariableOp
model/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model/dense_1/Tensordot/axes
model/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
model/dense_1/Tensordot/free
model/dense_1/Tensordot/ShapeShape&model/TimeDisDense1/Reshape_1:output:0*
T0*
_output_shapes
:2
model/dense_1/Tensordot/Shape
%model/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model/dense_1/Tensordot/GatherV2/axis
 model/dense_1/Tensordot/GatherV2GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/free:output:0.model/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 model/dense_1/Tensordot/GatherV2
'model/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model/dense_1/Tensordot/GatherV2_1/axis
"model/dense_1/Tensordot/GatherV2_1GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/axes:output:00model/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model/dense_1/Tensordot/GatherV2_1
model/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model/dense_1/Tensordot/Const¸
model/dense_1/Tensordot/ProdProd)model/dense_1/Tensordot/GatherV2:output:0&model/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model/dense_1/Tensordot/Prod
model/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
model/dense_1/Tensordot/Const_1À
model/dense_1/Tensordot/Prod_1Prod+model/dense_1/Tensordot/GatherV2_1:output:0(model/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
model/dense_1/Tensordot/Prod_1
#model/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model/dense_1/Tensordot/concat/axisö
model/dense_1/Tensordot/concatConcatV2%model/dense_1/Tensordot/free:output:0%model/dense_1/Tensordot/axes:output:0,model/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
model/dense_1/Tensordot/concatÄ
model/dense_1/Tensordot/stackPack%model/dense_1/Tensordot/Prod:output:0'model/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model/dense_1/Tensordot/stackÚ
!model/dense_1/Tensordot/transpose	Transpose&model/TimeDisDense1/Reshape_1:output:0'model/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!model/dense_1/Tensordot/transpose×
model/dense_1/Tensordot/ReshapeReshape%model/dense_1/Tensordot/transpose:y:0&model/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
model/dense_1/Tensordot/ReshapeÖ
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0.model/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/dense_1/Tensordot/MatMul
model/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2!
model/dense_1/Tensordot/Const_2
%model/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model/dense_1/Tensordot/concat_1/axis
 model/dense_1/Tensordot/concat_1ConcatV2)model/dense_1/Tensordot/GatherV2:output:0(model/dense_1/Tensordot/Const_2:output:0.model/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 model/dense_1/Tensordot/concat_1È
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0)model/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_1/Tensordot¶
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp¿
model/dense_1/BiasAddBiasAdd model/dense_1/Tensordot:output:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_1/BiasAdd
IdentityIdentitymodel/dense_1/BiasAdd:output:0^model/Attention/ReadVariableOp)^model/Attention/transpose/ReadVariableOp,^model/LSTM/lstm_cell/BiasAdd/ReadVariableOp+^model/LSTM/lstm_cell/MatMul/ReadVariableOp-^model/LSTM/lstm_cell/MatMul_1/ReadVariableOp^model/LSTM/while1^model/TimeDisDense1/dense/BiasAdd/ReadVariableOp0^model/TimeDisDense1/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::2@
model/Attention/ReadVariableOpmodel/Attention/ReadVariableOp2T
(model/Attention/transpose/ReadVariableOp(model/Attention/transpose/ReadVariableOp2Z
+model/LSTM/lstm_cell/BiasAdd/ReadVariableOp+model/LSTM/lstm_cell/BiasAdd/ReadVariableOp2X
*model/LSTM/lstm_cell/MatMul/ReadVariableOp*model/LSTM/lstm_cell/MatMul/ReadVariableOp2\
,model/LSTM/lstm_cell/MatMul_1/ReadVariableOp,model/LSTM/lstm_cell/MatMul_1/ReadVariableOp2$
model/LSTM/whilemodel/LSTM/while2d
0model/TimeDisDense1/dense/BiasAdd/ReadVariableOp0model/TimeDisDense1/dense/BiasAdd/ReadVariableOp2b
/model/TimeDisDense1/dense/MatMul/ReadVariableOp/model/TimeDisDense1/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp:W S
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
input_attn
ãI
ã
while_body_978045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
0while_lstm_cell_matmul_readvariableop_resource_06
2while_lstm_cell_matmul_1_readvariableop_resource_05
1while_lstm_cell_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
.while_lstm_cell_matmul_readvariableop_resource4
0while_lstm_cell_matmul_1_readvariableop_resource3
/while_lstm_cell_biasadd_readvariableop_resource¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÀ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%while/lstm_cell/MatMul/ReadVariableOpÎ
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMulÇ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'while/lstm_cell/MatMul_1/ReadVariableOp·
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/MatMul_1¬
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add¿
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02(
&while/lstm_cell/BiasAdd/ReadVariableOp¹
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/BiasAddp
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell/Const
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell/split
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_1
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_2§
while/lstm_cell/mul_1Mulwhile/lstm_cell/split:output:2while/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_1
while/lstm_cell/IdentityIdentitywhile/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity÷
while/lstm_cell/IdentityN	IdentityNwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-978088*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN©
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_2
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/add_1
while/lstm_cell/Sigmoid_3Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_3
while/lstm_cell/Sigmoid_4Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Sigmoid_4¢
while/lstm_cell/mul_3Mulwhile/lstm_cell/add_1:z:0while/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_3
while/lstm_cell/Identity_1Identitywhile/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/Identity_1ö
while/lstm_cell/IdentityN_1	IdentityNwhile/lstm_cell/mul_3:z:0while/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-978097*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/IdentityN_1­
while/lstm_cell/mul_4Mulwhile/lstm_cell/Sigmoid_3:y:0$while/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell/mul_4Ý
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
while/add_1Ù
while/IdentityIdentitywhile/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityì
while/Identity_1Identitywhile_while_maximum_iterations'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Û
while/Identity_2Identitywhile/add:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ù
while/Identity_4Identitywhile/lstm_cell/mul_4:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4ù
while/Identity_5Identitywhile/lstm_cell/add_1:z:0'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2P
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Òß

A__inference_model_layer_call_and_return_conditional_losses_978852

inputs1
-lstm_lstm_cell_matmul_readvariableop_resource3
/lstm_lstm_cell_matmul_1_readvariableop_resource2
.lstm_lstm_cell_biasadd_readvariableop_resource-
)attention_shape_2_readvariableop_resource%
!attention_readvariableop_resource6
2timedisdense1_dense_matmul_readvariableop_resource7
3timedisdense1_dense_biasadd_readvariableop_resource-
)dense_1_tensordot_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity¢Attention/ReadVariableOp¢"Attention/transpose/ReadVariableOp¢%LSTM/lstm_cell/BiasAdd/ReadVariableOp¢$LSTM/lstm_cell/MatMul/ReadVariableOp¢&LSTM/lstm_cell/MatMul_1/ReadVariableOp¢
LSTM/while¢*TimeDisDense1/dense/BiasAdd/ReadVariableOp¢)TimeDisDense1/dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOpN

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
LSTM/strided_slice/stack
LSTM/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_1
LSTM/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice/stack_2
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
B :2
LSTM/zeros/mul/y
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
B :è2
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
B :2
LSTM/zeros/packed/1
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
LSTM/zeros/Const

LSTM/zerosFillLSTM/zeros/packed:output:0LSTM/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

LSTM/zerosk
LSTM/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
LSTM/zeros_1/mul/y
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
B :è2
LSTM/zeros_1/Less/y
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
B :2
LSTM/zeros_1/packed/1
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
LSTM/zeros_1/Const
LSTM/zeros_1FillLSTM/zeros_1/packed:output:0LSTM/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/zeros_1
LSTM/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose/perm
LSTM/transpose	TransposeinputsLSTM/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/transpose^
LSTM/Shape_1ShapeLSTM/transpose:y:0*
T0*
_output_shapes
:2
LSTM/Shape_1
LSTM/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_1/stack
LSTM/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_1
LSTM/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_1/stack_2
LSTM/strided_slice_1StridedSliceLSTM/Shape_1:output:0#LSTM/strided_slice_1/stack:output:0%LSTM/strided_slice_1/stack_1:output:0%LSTM/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
LSTM/strided_slice_1
 LSTM/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 LSTM/TensorArrayV2/element_shapeÆ
LSTM/TensorArrayV2TensorListReserve)LSTM/TensorArrayV2/element_shape:output:0LSTM/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
LSTM/TensorArrayV2É
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2<
:LSTM/TensorArrayUnstack/TensorListFromTensor/element_shape
,LSTM/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorLSTM/transpose:y:0CLSTM/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,LSTM/TensorArrayUnstack/TensorListFromTensor
LSTM/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_2/stack
LSTM/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_1
LSTM/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_2/stack_2
LSTM/strided_slice_2StridedSliceLSTM/transpose:y:0#LSTM/strided_slice_2/stack:output:0%LSTM/strided_slice_2/stack_1:output:0%LSTM/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
LSTM/strided_slice_2»
$LSTM/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02&
$LSTM/lstm_cell/MatMul/ReadVariableOp¸
LSTM/lstm_cell/MatMulMatMulLSTM/strided_slice_2:output:0,LSTM/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/MatMulÂ
&LSTM/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&LSTM/lstm_cell/MatMul_1/ReadVariableOp´
LSTM/lstm_cell/MatMul_1MatMulLSTM/zeros:output:0.LSTM/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/MatMul_1¨
LSTM/lstm_cell/addAddV2LSTM/lstm_cell/MatMul:product:0!LSTM/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/addº
%LSTM/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02'
%LSTM/lstm_cell/BiasAdd/ReadVariableOpµ
LSTM/lstm_cell/BiasAddBiasAddLSTM/lstm_cell/add:z:0-LSTM/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/BiasAddn
LSTM/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
LSTM/lstm_cell/Const
LSTM/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
LSTM/lstm_cell/split/split_dimÿ
LSTM/lstm_cell/splitSplit'LSTM/lstm_cell/split/split_dim:output:0LSTM/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
LSTM/lstm_cell/split
LSTM/lstm_cell/SigmoidSigmoidLSTM/lstm_cell/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid
LSTM/lstm_cell/Sigmoid_1SigmoidLSTM/lstm_cell/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_1
LSTM/lstm_cell/mulMulLSTM/lstm_cell/Sigmoid_1:y:0LSTM/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul
LSTM/lstm_cell/Sigmoid_2SigmoidLSTM/lstm_cell/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_2£
LSTM/lstm_cell/mul_1MulLSTM/lstm_cell/split:output:2LSTM/lstm_cell/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_1
LSTM/lstm_cell/IdentityIdentityLSTM/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Identityó
LSTM/lstm_cell/IdentityN	IdentityNLSTM/lstm_cell/mul_1:z:0LSTM/lstm_cell/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-978641*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/IdentityN¥
LSTM/lstm_cell/mul_2MulLSTM/lstm_cell/Sigmoid:y:0!LSTM/lstm_cell/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_2
LSTM/lstm_cell/add_1AddV2LSTM/lstm_cell/mul:z:0LSTM/lstm_cell/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/add_1
LSTM/lstm_cell/Sigmoid_3SigmoidLSTM/lstm_cell/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_3
LSTM/lstm_cell/Sigmoid_4SigmoidLSTM/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Sigmoid_4
LSTM/lstm_cell/mul_3MulLSTM/lstm_cell/add_1:z:0LSTM/lstm_cell/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_3
LSTM/lstm_cell/Identity_1IdentityLSTM/lstm_cell/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/Identity_1ò
LSTM/lstm_cell/IdentityN_1	IdentityNLSTM/lstm_cell/mul_3:z:0LSTM/lstm_cell/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-978650*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/IdentityN_1©
LSTM/lstm_cell/mul_4MulLSTM/lstm_cell/Sigmoid_3:y:0#LSTM/lstm_cell/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
LSTM/lstm_cell/mul_4
"LSTM/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2$
"LSTM/TensorArrayV2_1/element_shapeÌ
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
	LSTM/time
LSTM/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
LSTM/while/maximum_iterationst
LSTM/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
LSTM/while/loop_counter´

LSTM/whileWhile LSTM/while/loop_counter:output:0&LSTM/while/maximum_iterations:output:0LSTM/time:output:0LSTM/TensorArrayV2_1:handle:0LSTM/zeros:output:0LSTM/zeros_1:output:0LSTM/strided_slice_1:output:0<LSTM/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*"
bodyR
LSTM_while_body_978661*"
condR
LSTM_while_cond_978660*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2

LSTM/while¿
5LSTM/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5LSTM/TensorArrayV2Stack/TensorListStack/element_shapeý
'LSTM/TensorArrayV2Stack/TensorListStackTensorListStackLSTM/while:output:3>LSTM/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02)
'LSTM/TensorArrayV2Stack/TensorListStack
LSTM/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
LSTM/strided_slice_3/stack
LSTM/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
LSTM/strided_slice_3/stack_1
LSTM/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
LSTM/strided_slice_3/stack_2¹
LSTM/strided_slice_3StridedSlice0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0#LSTM/strided_slice_3/stack:output:0%LSTM/strided_slice_3/stack_1:output:0%LSTM/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
LSTM/strided_slice_3
LSTM/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
LSTM/transpose_1/permº
LSTM/transpose_1	Transpose0LSTM/TensorArrayV2Stack/TensorListStack:tensor:0LSTM/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
Attention/Shape
Attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Attention/strided_slice/stack
Attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_1
Attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Attention/strided_slice/stack_2
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
Attention/unstack°
 Attention/Shape_2/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 Attention/Shape_2/ReadVariableOpw
Attention/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      2
Attention/Shape_2~
Attention/unstack_1UnpackAttention/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
Attention/unstack_1
Attention/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Attention/Reshape/shape
Attention/ReshapeReshapeLSTM/transpose_1:y:0 Attention/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Reshape´
"Attention/transpose/ReadVariableOpReadVariableOp)attention_shape_2_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"Attention/transpose/ReadVariableOp
Attention/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
Attention/transpose/perm±
Attention/transpose	Transpose*Attention/transpose/ReadVariableOp:value:0!Attention/transpose/perm:output:0*
T0* 
_output_shapes
:
2
Attention/transpose
Attention/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ÿÿÿÿ2
Attention/Reshape_1/shape
Attention/Reshape_1ReshapeAttention/transpose:y:0"Attention/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
Attention/Reshape_1
Attention/MatMulMatMulAttention/Reshape:output:0Attention/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
B :2
Attention/Reshape_2/shape/2Ô
Attention/Reshape_2/shapePackAttention/unstack:output:0$Attention/Reshape_2/shape/1:output:0$Attention/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Attention/Reshape_2/shape¬
Attention/Reshape_2ReshapeAttention/MatMul:product:0"Attention/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Reshape_2
Attention/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
Attention/transpose_1/perm­
Attention/transpose_1	TransposeLSTM/transpose_1:y:0#Attention/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/transpose_1¨
Attention/MatMul_1BatchMatMulV2Attention/Reshape_2:output:0Attention/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/MatMul_1q
Attention/Shape_3ShapeAttention/MatMul_1:output:0*
T0*
_output_shapes
:2
Attention/Shape_3
Attention/ReadVariableOpReadVariableOp!attention_readvariableop_resource*
_output_shapes
:*
dtype02
Attention/ReadVariableOp
Attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
Attention/strided_slice_1/stack
!Attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_1
!Attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!Attention/strided_slice_1/stack_2°
Attention/strided_slice_1StridedSlice Attention/ReadVariableOp:value:0(Attention/strided_slice_1/stack:output:0*Attention/strided_slice_1/stack_1:output:0*Attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Attention/strided_slice_1
Attention/addAddV2Attention/MatMul_1:output:0"Attention/strided_slice_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/addz
Attention/SigmoidSigmoidAttention/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Sigmoid
Attention/mulMulAttention/add:z:0Attention/Sigmoid:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/mul}
Attention/IdentityIdentityAttention/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/IdentityÜ
Attention/IdentityN	IdentityNAttention/mul:z:0Attention/add:z:0*
T
2*,
_gradient_op_typeCustomGradient-978792*B
_output_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
Attention/IdentityN
Attention/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
Attention/Max/reduction_indices´
Attention/MaxMaxAttention/IdentityN:output:0(Attention/Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Attention/Max
Attention/subSubAttention/IdentityN:output:0Attention/Max:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/subn
Attention/ExpExpAttention/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/Exp
Attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
Attention/Sum/reduction_indices©
Attention/SumSumAttention/Exp:y:0(Attention/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Attention/Sum
Attention/truedivRealDivAttention/Exp:y:0Attention/Sum:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/truediv
Attention/MatMul_2BatchMatMulV2Attention/truediv:z:0LSTM/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Attention/MatMul_2q
Attention/Shape_4ShapeAttention/MatMul_2:output:0*
T0*
_output_shapes
:2
Attention/Shape_4
TimeDisDense1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape/shape¯
TimeDisDense1/ReshapeReshapeAttention/MatMul_2:output:0$TimeDisDense1/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/ReshapeÊ
)TimeDisDense1/dense/MatMul/ReadVariableOpReadVariableOp2timedisdense1_dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02+
)TimeDisDense1/dense/MatMul/ReadVariableOpÇ
TimeDisDense1/dense/MatMulMatMulTimeDisDense1/Reshape:output:01TimeDisDense1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/MatMulÈ
*TimeDisDense1/dense/BiasAdd/ReadVariableOpReadVariableOp3timedisdense1_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*TimeDisDense1/dense/BiasAdd/ReadVariableOpÑ
TimeDisDense1/dense/BiasAddBiasAdd$TimeDisDense1/dense/MatMul:product:02TimeDisDense1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/BiasAdd
TimeDisDense1/dense/SigmoidSigmoid$TimeDisDense1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/Sigmoid²
TimeDisDense1/dense/mulMul$TimeDisDense1/dense/BiasAdd:output:0TimeDisDense1/dense/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/mul
TimeDisDense1/dense/IdentityIdentityTimeDisDense1/dense/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/Identity
TimeDisDense1/dense/IdentityN	IdentityNTimeDisDense1/dense/mul:z:0$TimeDisDense1/dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-978815*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/dense/IdentityN
TimeDisDense1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
TimeDisDense1/Reshape_1/shapeÃ
TimeDisDense1/Reshape_1Reshape&TimeDisDense1/dense/IdentityN:output:0&TimeDisDense1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
TimeDisDense1/Reshape_1
TimeDisDense1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TimeDisDense1/Reshape_2/shapeµ
TimeDisDense1/Reshape_2ReshapeAttention/MatMul_2:output:0&TimeDisDense1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
TimeDisDense1/Reshape_2®
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/free
dense_1/Tensordot/ShapeShape TimeDisDense1/Reshape_1:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisù
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axisÿ
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1¨
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisØ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat¬
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stackÂ
dense_1/Tensordot/transpose	Transpose TimeDisDense1/Reshape_1:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_1/Tensordot/transpose¿
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/Reshape¾
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/MatMul
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/Const_2
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axiså
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1°
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp§
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddÒ
IdentityIdentitydense_1/BiasAdd:output:0^Attention/ReadVariableOp#^Attention/transpose/ReadVariableOp&^LSTM/lstm_cell/BiasAdd/ReadVariableOp%^LSTM/lstm_cell/MatMul/ReadVariableOp'^LSTM/lstm_cell/MatMul_1/ReadVariableOp^LSTM/while+^TimeDisDense1/dense/BiasAdd/ReadVariableOp*^TimeDisDense1/dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿ:::::::::24
Attention/ReadVariableOpAttention/ReadVariableOp2H
"Attention/transpose/ReadVariableOp"Attention/transpose/ReadVariableOp2N
%LSTM/lstm_cell/BiasAdd/ReadVariableOp%LSTM/lstm_cell/BiasAdd/ReadVariableOp2L
$LSTM/lstm_cell/MatMul/ReadVariableOp$LSTM/lstm_cell/MatMul/ReadVariableOp2P
&LSTM/lstm_cell/MatMul_1/ReadVariableOp&LSTM/lstm_cell/MatMul_1/ReadVariableOp2

LSTM/while
LSTM/while2X
*TimeDisDense1/dense/BiasAdd/ReadVariableOp*TimeDisDense1/dense/BiasAdd/ReadVariableOp2V
)TimeDisDense1/dense/MatMul/ReadVariableOp)TimeDisDense1/dense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¸
serving_default¤
E

input_attn7
serving_default_input_attn:0ÿÿÿÿÿÿÿÿÿ?
dense_14
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ø
ä;
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
trainable_variables
regularization_losses
		variables

	keras_api

signatures
n_default_save_signature
o__call__
*p&call_and_return_all_conditional_losses"ð8
_tf_keras_networkÔ8{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_attn"}, "name": "input_attn", "inbound_nodes": []}, {"class_name": "LSTM", "config": {"name": "LSTM", "trainable": false, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "name": "LSTM", "inbound_nodes": [[["input_attn", 0, 0, {}]]]}, {"class_name": "SeqSelfAttention", "config": {"name": "Attention", "trainable": false, "dtype": "float32", "units": 32, "attention_width": null, "attention_type": "multiplicative", "return_attention": false, "history_only": false, "use_additive_bias": true, "use_attention_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "attention_activation": "swish", "attention_regularizer_weight": 0.0}, "name": "Attention", "inbound_nodes": [[["LSTM", 0, 0, {}]]]}, {"class_name": "TimeDistributed", "config": {"name": "TimeDisDense1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": false, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "name": "TimeDisDense1", "inbound_nodes": [[["Attention", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["TimeDisDense1", 0, 0, {}]]]}], "input_layers": [["input_attn", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_attn"}, "name": "input_attn", "inbound_nodes": []}, {"class_name": "LSTM", "config": {"name": "LSTM", "trainable": false, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "name": "LSTM", "inbound_nodes": [[["input_attn", 0, 0, {}]]]}, {"class_name": "SeqSelfAttention", "config": {"name": "Attention", "trainable": false, "dtype": "float32", "units": 32, "attention_width": null, "attention_type": "multiplicative", "return_attention": false, "history_only": false, "use_additive_bias": true, "use_attention_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "attention_activation": "swish", "attention_regularizer_weight": 0.0}, "name": "Attention", "inbound_nodes": [[["LSTM", 0, 0, {}]]]}, {"class_name": "TimeDistributed", "config": {"name": "TimeDisDense1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": false, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "name": "TimeDisDense1", "inbound_nodes": [[["Attention", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["TimeDisDense1", 0, 0, {}]]]}], "input_layers": [["input_attn", 0, 0]], "output_layers": [["dense_1", 0, 0]]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ù"ö
_tf_keras_input_layerÖ{"class_name": "InputLayer", "name": "input_attn", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_attn"}}
¼
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
q__call__
*r&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerõ	{"class_name": "LSTM", "name": "LSTM", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "LSTM", "trainable": false, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
¸
Attention_Mul_Wa
Wa
Attention_Mul_ba
ba
trainable_variables
	variables
regularization_losses
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"í
_tf_keras_layerÓ{"class_name": "SeqSelfAttention", "name": "Attention", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Attention", "trainable": false, "dtype": "float32", "units": 32, "attention_width": null, "attention_type": "multiplicative", "return_attention": false, "history_only": false, "use_additive_bias": true, "use_attention_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "attention_activation": "swish", "attention_regularizer_weight": 0.0}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
	
	layer
trainable_variables
	variables
regularization_losses
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"ø
_tf_keras_layerÞ{"class_name": "TimeDistributed", "name": "TimeDisDense1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "TimeDisDense1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": false, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
ö

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
w__call__
*x&call_and_return_all_conditional_losses"Ñ
_tf_keras_layer·{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
w
#iter

$beta_1

%beta_2
	&decay
'learning_ratemjmkvlvm"
	optimizer
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
_
(0
)1
*2
3
4
+5
,6
7
8"
trackable_list_wrapper
Ê
-non_trainable_variables
.layer_regularization_losses

/layers
0metrics
trainable_variables
regularization_losses
		variables
1layer_metrics
o__call__
n_default_save_signature
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
¨

(kernel
)recurrent_kernel
*bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
z__call__
*{&call_and_return_all_conditional_losses"í
_tf_keras_layerÓ{"class_name": "LSTMCell", "name": "lstm_cell", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell", "trainable": false, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
¹
6non_trainable_variables
7layer_regularization_losses

8layers
9metrics

:states
trainable_variables
regularization_losses
	variables
;layer_metrics
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
.:,
2Attention/Attention_Mul_Wa
(:&2Attention/Attention_Mul_ba
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
<non_trainable_variables
=layer_regularization_losses
trainable_variables

>layers
?metrics
	variables
regularization_losses
@layer_metrics
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
§

+kernel
,bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layerè{"class_name": "Dense", "name": "dense", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": false, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}}
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Enon_trainable_variables
Flayer_regularization_losses
trainable_variables

Glayers
Hmetrics
	variables
regularization_losses
Ilayer_metrics
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_1/kernel
:2dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Jnon_trainable_variables
Klayer_regularization_losses
trainable_variables

Llayers
Mmetrics
 	variables
!regularization_losses
Nlayer_metrics
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	2LSTM/lstm_cell/kernel
3:1
2LSTM/lstm_cell/recurrent_kernel
": 2LSTM/lstm_cell/bias
':%	@2TimeDisDense1/kernel
 :@2TimeDisDense1/bias
Q
(0
)1
*2
3
4
+5
,6"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
5
O0
P1
Q2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Rnon_trainable_variables
Slayer_regularization_losses
2trainable_variables

Tlayers
Umetrics
3	variables
4regularization_losses
Vlayer_metrics
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
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
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Wnon_trainable_variables
Xlayer_regularization_losses
Atrainable_variables

Ylayers
Zmetrics
B	variables
Cregularization_losses
[layer_metrics
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
»
	\total
	]count
^	variables
_	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}

	`total
	acount
b
_fn_kwargs
c	variables
d	keras_api"Ð
_tf_keras_metricµ{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}
ô
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"­
_tf_keras_metric{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}}
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
+0
,1"
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
\0
]1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
`0
a1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
e0
f1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
%:#@2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
%:#@2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
æ2ã
!__inference__wrapped_model_977034½
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
annotationsª *-¢*
(%

input_attnÿÿÿÿÿÿÿÿÿ
æ2ã
&__inference_model_layer_call_fn_979144
&__inference_model_layer_call_fn_978550
&__inference_model_layer_call_fn_978499
&__inference_model_layer_call_fn_979167À
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
Ò2Ï
A__inference_model_layer_call_and_return_conditional_losses_978447
A__inference_model_layer_call_and_return_conditional_losses_979121
A__inference_model_layer_call_and_return_conditional_losses_978852
A__inference_model_layer_call_and_return_conditional_losses_978419À
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
÷2ô
%__inference_LSTM_layer_call_fn_979903
%__inference_LSTM_layer_call_fn_979892
%__inference_LSTM_layer_call_fn_979524
%__inference_LSTM_layer_call_fn_979535Õ
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
ã2à
@__inference_LSTM_layer_call_and_return_conditional_losses_979708
@__inference_LSTM_layer_call_and_return_conditional_losses_979881
@__inference_LSTM_layer_call_and_return_conditional_losses_979513
@__inference_LSTM_layer_call_and_return_conditional_losses_979340Õ
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
°2­
*__inference_Attention_layer_call_fn_980033
*__inference_Attention_layer_call_fn_980024Ò
É²Å
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkwjkwargs
defaults

 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
æ2ã
E__inference_Attention_layer_call_and_return_conditional_losses_979959
E__inference_Attention_layer_call_and_return_conditional_losses_980015Ò
É²Å
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkwjkwargs
defaults

 

kwonlyargs

jtraining%
kwonlydefaultsª

trainingp 
annotationsª *
 
2
.__inference_TimeDisDense1_layer_call_fn_980154
.__inference_TimeDisDense1_layer_call_fn_980091
.__inference_TimeDisDense1_layer_call_fn_980163
.__inference_TimeDisDense1_layer_call_fn_980082À
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
ò2ï
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980118
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980073
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980053
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980145À
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
Ò2Ï
(__inference_dense_1_layer_call_fn_980202¢
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
í2ê
C__inference_dense_1_layer_call_and_return_conditional_losses_980193¢
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
ÎBË
$__inference_signature_wrapper_978583
input_attn"
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
2
*__inference_lstm_cell_layer_call_fn_980322
*__inference_lstm_cell_layer_call_fn_980305¾
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
Ò2Ï
E__inference_lstm_cell_layer_call_and_return_conditional_losses_980288
E__inference_lstm_cell_layer_call_and_return_conditional_losses_980245¾
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
Ð2Í
&__inference_dense_layer_call_fn_980347¢
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
ë2è
A__inference_dense_layer_call_and_return_conditional_losses_980338¢
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
 Ã
E__inference_Attention_layer_call_and_return_conditional_losses_979959zH¢E
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ

 
ª

trainingp"*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 Ã
E__inference_Attention_layer_call_and_return_conditional_losses_980015zH¢E
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ

 
ª

trainingp "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_Attention_layer_call_fn_980024mH¢E
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ

 
ª

trainingp"ÿÿÿÿÿÿÿÿÿ
*__inference_Attention_layer_call_fn_980033mH¢E
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ

 
ª

trainingp "ÿÿÿÿÿÿÿÿÿ¶
@__inference_LSTM_layer_call_and_return_conditional_losses_979340r()*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¶
@__inference_LSTM_layer_call_and_return_conditional_losses_979513r()*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 Ð
@__inference_LSTM_layer_call_and_return_conditional_losses_979708()*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ð
@__inference_LSTM_layer_call_and_return_conditional_losses_979881()*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_LSTM_layer_call_fn_979524e()*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_LSTM_layer_call_fn_979535e()*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ§
%__inference_LSTM_layer_call_fn_979892~()*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ§
%__inference_LSTM_layer_call_fn_979903~()*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980053m+,<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 º
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980073m+,<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Ì
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980118+,E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ì
I__inference_TimeDisDense1_layer_call_and_return_conditional_losses_980145+,E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
.__inference_TimeDisDense1_layer_call_fn_980082`+,<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
.__inference_TimeDisDense1_layer_call_fn_980091`+,<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@¤
.__inference_TimeDisDense1_layer_call_fn_980154r+,E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¤
.__inference_TimeDisDense1_layer_call_fn_980163r+,E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ 
!__inference__wrapped_model_977034{	()*+,7¢4
-¢*
(%

input_attnÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
dense_1%"
dense_1ÿÿÿÿÿÿÿÿÿ«
C__inference_dense_1_layer_call_and_return_conditional_losses_980193d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_dense_1_layer_call_fn_980202W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¢
A__inference_dense_layer_call_and_return_conditional_losses_980338]+,0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 z
&__inference_dense_layer_call_fn_980347P+,0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@Ì
E__inference_lstm_cell_layer_call_and_return_conditional_losses_980245()*¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Ì
E__inference_lstm_cell_layer_call_and_return_conditional_losses_980288()*¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 ¡
*__inference_lstm_cell_layer_call_fn_980305ò()*¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¡
*__inference_lstm_cell_layer_call_fn_980322ò()*¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¼
A__inference_model_layer_call_and_return_conditional_losses_978419w	()*+,?¢<
5¢2
(%

input_attnÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¼
A__inference_model_layer_call_and_return_conditional_losses_978447w	()*+,?¢<
5¢2
(%

input_attnÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
A__inference_model_layer_call_and_return_conditional_losses_978852s	()*+,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
A__inference_model_layer_call_and_return_conditional_losses_979121s	()*+,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
&__inference_model_layer_call_fn_978499j	()*+,?¢<
5¢2
(%

input_attnÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_model_layer_call_fn_978550j	()*+,?¢<
5¢2
(%

input_attnÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_model_layer_call_fn_979144f	()*+,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_model_layer_call_fn_979167f	()*+,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ²
$__inference_signature_wrapper_978583	()*+,E¢B
¢ 
;ª8
6

input_attn(%

input_attnÿÿÿÿÿÿÿÿÿ"5ª2
0
dense_1%"
dense_1ÿÿÿÿÿÿÿÿÿ