тс
чЌ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
≠
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Н
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718ЯЙ
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:22*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:2*
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
З
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»*&
shared_namelstm/lstm_cell/kernel
А
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	»*
dtype0
Ы
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2»*0
shared_name!lstm/lstm_cell/recurrent_kernel
Ф
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	2»*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:»*
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
В
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:22*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:2*
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:2*
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
Х
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»*-
shared_nameAdam/lstm/lstm_cell/kernel/m
О
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	»*
dtype0
©
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2»*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
Ґ
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	2»*
dtype0
Н
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*+
shared_nameAdam/lstm/lstm_cell/bias/m
Ж
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:»*
dtype0
В
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:22*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:2*
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:2*
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
Х
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»*-
shared_nameAdam/lstm/lstm_cell/kernel/v
О
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	»*
dtype0
©
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2»*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
Ґ
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	2»*
dtype0
Н
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*+
shared_nameAdam/lstm/lstm_cell/bias/v
Ж
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:»*
dtype0

NoOpNoOp
Ђ/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ж.
value№.Bў. B“.
Л
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer

signatures
#_self_saveable_object_factories
trainable_variables
	variables
	regularization_losses

	keras_api
С
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
Н

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
Н

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
Њ
 iter

!beta_1

"beta_2
	#decay
$learning_ratemYmZm[m\%m]&m^'m_v`vavbvc%vd&ve'vf
 
 
1
%0
&1
'2
3
4
5
6
1
%0
&1
'2
3
4
5
6
 
≠
trainable_variables
(layer_regularization_losses

)layers
*layer_metrics
+non_trainable_variables
	variables
	regularization_losses
,metrics
≥
-
state_size

%kernel
&recurrent_kernel
'bias
#._self_saveable_object_factories
/trainable_variables
0regularization_losses
1	variables
2	keras_api
 
 

%0
&1
'2

%0
&1
'2
 
є
trainable_variables

3states
4layer_regularization_losses

5layers
6layer_metrics
7non_trainable_variables
	variables
regularization_losses
8metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
≠
trainable_variables
9layer_regularization_losses
regularization_losses
:layer_metrics
;non_trainable_variables
	variables

<layers
=metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
≠
trainable_variables
>layer_regularization_losses
regularization_losses
?layer_metrics
@non_trainable_variables
	variables

Alayers
Bmetrics
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
[Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 

C0
D1
E2
 
 

%0
&1
'2
 

%0
&1
'2
≠
/trainable_variables
Flayer_regularization_losses
0regularization_losses
Glayer_metrics
Hnon_trainable_variables
1	variables

Ilayers
Jmetrics
 
 

0
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
	Ktotal
	Lcount
M	variables
N	keras_api
D
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api
D
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api
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
K0
L1

M	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

O0
P1

R	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

T0
U1

W	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Е
serving_default_lstm_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
ћ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_565689
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
£
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*-
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
GPU 2J 8В *(
f#R!
__inference__traced_save_567079
Ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1total_2count_2Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*,
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_567185ыГ
’
√
while_cond_566201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566201___redundant_placeholder04
0while_while_cond_566201___redundant_placeholder14
0while_while_cond_566201___redundant_placeholder24
0while_while_cond_566201___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
ОC
–
while_body_566202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	»H
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	»F
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_64/BiasAdd/ReadVariableOpҐ(while/lstm_cell_64/MatMul/ReadVariableOpҐ*while/lstm_cell_64/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02*
(while/lstm_cell_64/MatMul/ReadVariableOp„
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMulѕ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype02,
*while/lstm_cell_64/MatMul_1/ReadVariableOpј
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMul_1Є
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/add»
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype02+
)while/lstm_cell_64/BiasAdd/ReadVariableOp≈
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/BiasAddК
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_64/split/split_dimЛ
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
while/lstm_cell_64/splitШ
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/SigmoidЬ
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_1†
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mulЬ
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_2ѓ
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0 while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_1©
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/add_1Ь
while/lstm_cell_64/Sigmoid_3Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_3Ч
while/lstm_cell_64/Sigmoid_4Sigmoidwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_4±
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_3:y:0 while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_2а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
м	
І
lstm_while_cond_565959&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_565959___redundant_placeholder0>
:lstm_while_lstm_while_cond_565959___redundant_placeholder1>
:lstm_while_lstm_while_cond_565959___redundant_placeholder2>
:lstm_while_lstm_while_cond_565959___redundant_placeholder3
lstm_while_identity
Й
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
С&
г
while_body_564552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_64_564576_0:	».
while_lstm_cell_64_564578_0:	2»*
while_lstm_cell_64_564580_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_64_564576:	»,
while_lstm_cell_64_564578:	2»(
while_lstm_cell_64_564580:	»ИҐ*while/lstm_cell_64/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
*while/lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_64_564576_0while_lstm_cell_64_564578_0while_lstm_cell_64_564580_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_5645382,
*while/lstm_cell_64/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_64/StatefulPartitionedCall:output:0*
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
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ƒ
while/Identity_4Identity3while/lstm_cell_64/StatefulPartitionedCall:output:1+^while/lstm_cell_64/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4ƒ
while/Identity_5Identity3while/lstm_cell_64/StatefulPartitionedCall:output:2+^while/lstm_cell_64/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_64_564576while_lstm_cell_64_564576_0"8
while_lstm_cell_64_564578while_lstm_cell_64_564578_0"8
while_lstm_cell_64_564580while_lstm_cell_64_564580_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2X
*while/lstm_cell_64/StatefulPartitionedCall*while/lstm_cell_64/StatefulPartitionedCall: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
…Ќ
≠
!__inference__wrapped_model_564463

lstm_inputN
;sequential_lstm_lstm_cell_64_matmul_readvariableop_resource:	»P
=sequential_lstm_lstm_cell_64_matmul_1_readvariableop_resource:	2»K
<sequential_lstm_lstm_cell_64_biasadd_readvariableop_resource:	»D
2sequential_dense_tensordot_readvariableop_resource:22>
0sequential_dense_biasadd_readvariableop_resource:2F
4sequential_dense_1_tensordot_readvariableop_resource:2@
2sequential_dense_1_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ)sequential/dense/Tensordot/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ+sequential/dense_1/Tensordot/ReadVariableOpҐ3sequential/lstm/lstm_cell_64/BiasAdd/ReadVariableOpҐ2sequential/lstm/lstm_cell_64/MatMul/ReadVariableOpҐ4sequential/lstm/lstm_cell_64/MatMul_1/ReadVariableOpҐsequential/lstm/whileh
sequential/lstm/ShapeShape
lstm_input*
T0*
_output_shapes
:2
sequential/lstm/ShapeФ
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stackШ
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1Ш
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2¬
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice|
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
sequential/lstm/zeros/mul/yђ
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
sequential/lstm/zeros/Less/yІ
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/LessВ
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22 
sequential/lstm/zeros/packed/1√
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/Constµ
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
sequential/lstm/zerosА
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
sequential/lstm/zeros_1/mul/y≤
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mulГ
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2 
sequential/lstm/zeros_1/Less/yѓ
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/LessЖ
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22"
 sequential/lstm/zeros_1/packed/1…
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packedГ
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/Constљ
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
sequential/lstm/zeros_1Х
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
sequential/lstm/transpose/permЃ
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
sequential/lstm/transpose
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:2
sequential/lstm/Shape_1Ш
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_1/stackЬ
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_1Ь
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_2ќ
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
sequential/lstm/strided_slice_1•
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2-
+sequential/lstm/TensorArrayV2/element_shapeт
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
sequential/lstm/TensorArrayV2я
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2G
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeЄ
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorШ
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_2/stackЬ
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_1Ь
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_2№
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2!
sequential/lstm/strided_slice_2е
2sequential/lstm/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp;sequential_lstm_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype024
2sequential/lstm/lstm_cell_64/MatMul/ReadVariableOpн
#sequential/lstm/lstm_cell_64/MatMulMatMul(sequential/lstm/strided_slice_2:output:0:sequential/lstm/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2%
#sequential/lstm/lstm_cell_64/MatMulл
4sequential/lstm/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp=sequential_lstm_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype026
4sequential/lstm/lstm_cell_64/MatMul_1/ReadVariableOpй
%sequential/lstm/lstm_cell_64/MatMul_1MatMulsequential/lstm/zeros:output:0<sequential/lstm/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2'
%sequential/lstm/lstm_cell_64/MatMul_1а
 sequential/lstm/lstm_cell_64/addAddV2-sequential/lstm/lstm_cell_64/MatMul:product:0/sequential/lstm/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2"
 sequential/lstm/lstm_cell_64/addд
3sequential/lstm/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp<sequential_lstm_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype025
3sequential/lstm/lstm_cell_64/BiasAdd/ReadVariableOpн
$sequential/lstm/lstm_cell_64/BiasAddBiasAdd$sequential/lstm/lstm_cell_64/add:z:0;sequential/lstm/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2&
$sequential/lstm/lstm_cell_64/BiasAddЮ
,sequential/lstm/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential/lstm/lstm_cell_64/split/split_dim≥
"sequential/lstm/lstm_cell_64/splitSplit5sequential/lstm/lstm_cell_64/split/split_dim:output:0-sequential/lstm/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2$
"sequential/lstm/lstm_cell_64/splitґ
$sequential/lstm/lstm_cell_64/SigmoidSigmoid+sequential/lstm/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22&
$sequential/lstm/lstm_cell_64/SigmoidЇ
&sequential/lstm/lstm_cell_64/Sigmoid_1Sigmoid+sequential/lstm/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22(
&sequential/lstm/lstm_cell_64/Sigmoid_1Ћ
 sequential/lstm/lstm_cell_64/mulMul*sequential/lstm/lstm_cell_64/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22"
 sequential/lstm/lstm_cell_64/mulЇ
&sequential/lstm/lstm_cell_64/Sigmoid_2Sigmoid+sequential/lstm/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22(
&sequential/lstm/lstm_cell_64/Sigmoid_2„
"sequential/lstm/lstm_cell_64/mul_1Mul(sequential/lstm/lstm_cell_64/Sigmoid:y:0*sequential/lstm/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22$
"sequential/lstm/lstm_cell_64/mul_1—
"sequential/lstm/lstm_cell_64/add_1AddV2$sequential/lstm/lstm_cell_64/mul:z:0&sequential/lstm/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22$
"sequential/lstm/lstm_cell_64/add_1Ї
&sequential/lstm/lstm_cell_64/Sigmoid_3Sigmoid+sequential/lstm/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22(
&sequential/lstm/lstm_cell_64/Sigmoid_3µ
&sequential/lstm/lstm_cell_64/Sigmoid_4Sigmoid&sequential/lstm/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22(
&sequential/lstm/lstm_cell_64/Sigmoid_4ў
"sequential/lstm/lstm_cell_64/mul_2Mul*sequential/lstm/lstm_cell_64/Sigmoid_3:y:0*sequential/lstm/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22$
"sequential/lstm/lstm_cell_64/mul_2ѓ
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2/
-sequential/lstm/TensorArrayV2_1/element_shapeш
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
sequential/lstm/TensorArrayV2_1n
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/timeЯ
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(sequential/lstm/while/maximum_iterationsК
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential/lstm/while/loop_counterё
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0;sequential_lstm_lstm_cell_64_matmul_readvariableop_resource=sequential_lstm_lstm_cell_64_matmul_1_readvariableop_resource<sequential_lstm_lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!sequential_lstm_while_body_564326*-
cond%R#
!sequential_lstm_while_cond_564325*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
sequential/lstm/while’
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2B
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape®
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype024
2sequential/lstm/TensorArrayV2Stack/TensorListStack°
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2'
%sequential/lstm/strided_slice_3/stackЬ
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential/lstm/strided_slice_3/stack_1Ь
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_3/stack_2ъ
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2!
sequential/lstm/strided_slice_3Щ
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 sequential/lstm/transpose_1/permе
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
sequential/lstm/transpose_1Ж
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/runtime…
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:22*
dtype02+
)sequential/dense/Tensordot/ReadVariableOpМ
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axesУ
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/freeУ
 sequential/dense/Tensordot/ShapeShapesequential/lstm/transpose_1:y:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/ShapeЦ
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axis¶
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2Ъ
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axisђ
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1О
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/Constƒ
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/ProdТ
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1ћ
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1Т
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axisЕ
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concat–
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stack№
$sequential/dense/Tensordot/transpose	Transposesequential/lstm/transpose_1:y:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22&
$sequential/dense/Tensordot/transposeг
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2$
"sequential/dense/Tensordot/Reshapeв
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€22#
!sequential/dense/Tensordot/MatMulТ
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22$
"sequential/dense/Tensordot/Const_2Ц
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axisТ
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1‘
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
sequential/dense/Tensordotњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpЋ
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€22
sequential/dense/BiasAddШ
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
sequential/dense/Sigmoidѕ
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOpР
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axesЧ
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/freeФ
"sequential/dense_1/Tensordot/ShapeShapesequential/dense/Sigmoid:y:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/ShapeЪ
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axis∞
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2Ю
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axisґ
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1Т
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/Constћ
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/ProdЦ
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1‘
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1Ц
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axisП
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concatЎ
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stackя
&sequential/dense_1/Tensordot/transpose	Transposesequential/dense/Sigmoid:y:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22(
&sequential/dense_1/Tensordot/transposeл
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2&
$sequential/dense_1/Tensordot/Reshapeк
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#sequential/dense_1/Tensordot/MatMulЦ
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$sequential/dense_1/Tensordot/Const_2Ъ
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axisЬ
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1№
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
sequential/dense_1/Tensordot≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp”
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddе
IdentityIdentity#sequential/dense_1/BiasAdd:output:0(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp4^sequential/lstm/lstm_cell_64/BiasAdd/ReadVariableOp3^sequential/lstm/lstm_cell_64/MatMul/ReadVariableOp5^sequential/lstm/lstm_cell_64/MatMul_1/ReadVariableOp^sequential/lstm/while*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp2j
3sequential/lstm/lstm_cell_64/BiasAdd/ReadVariableOp3sequential/lstm/lstm_cell_64/BiasAdd/ReadVariableOp2h
2sequential/lstm/lstm_cell_64/MatMul/ReadVariableOp2sequential/lstm/lstm_cell_64/MatMul/ReadVariableOp2l
4sequential/lstm/lstm_cell_64/MatMul_1/ReadVariableOp4sequential/lstm/lstm_cell_64/MatMul_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:W S
+
_output_shapes
:€€€€€€€€€
$
_user_specified_name
lstm_input
“
≤
%__inference_lstm_layer_call_fn_566772

inputs
unknown:	»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5652502
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ОC
–
while_body_566504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	»H
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	»F
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_64/BiasAdd/ReadVariableOpҐ(while/lstm_cell_64/MatMul/ReadVariableOpҐ*while/lstm_cell_64/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02*
(while/lstm_cell_64/MatMul/ReadVariableOp„
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMulѕ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype02,
*while/lstm_cell_64/MatMul_1/ReadVariableOpј
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMul_1Є
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/add»
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype02+
)while/lstm_cell_64/BiasAdd/ReadVariableOp≈
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/BiasAddК
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_64/split/split_dimЛ
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
while/lstm_cell_64/splitШ
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/SigmoidЬ
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_1†
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mulЬ
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_2ѓ
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0 while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_1©
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/add_1Ь
while/lstm_cell_64/Sigmoid_3Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_3Ч
while/lstm_cell_64/Sigmoid_4Sigmoidwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_4±
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_3:y:0 while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_2а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
’
√
while_cond_564761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564761___redundant_placeholder04
0while_while_cond_564761___redundant_placeholder14
0while_while_cond_564761___redundant_placeholder24
0while_while_cond_564761___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
ОC
–
while_body_565166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	»H
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	»F
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_64/BiasAdd/ReadVariableOpҐ(while/lstm_cell_64/MatMul/ReadVariableOpҐ*while/lstm_cell_64/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02*
(while/lstm_cell_64/MatMul/ReadVariableOp„
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMulѕ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype02,
*while/lstm_cell_64/MatMul_1/ReadVariableOpј
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMul_1Є
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/add»
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype02+
)while/lstm_cell_64/BiasAdd/ReadVariableOp≈
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/BiasAddК
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_64/split/split_dimЛ
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
while/lstm_cell_64/splitШ
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/SigmoidЬ
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_1†
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mulЬ
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_2ѓ
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0 while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_1©
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/add_1Ь
while/lstm_cell_64/Sigmoid_3Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_3Ч
while/lstm_cell_64/Sigmoid_4Sigmoidwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_4±
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_3:y:0 while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_2а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
Ґ
Ґ
F__inference_sequential_layer_call_and_return_conditional_losses_565662

lstm_input
lstm_565644:	»
lstm_565646:	2»
lstm_565648:	»
dense_565651:22
dense_565653:2 
dense_1_565656:2
dense_1_565658:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐlstm/StatefulPartitionedCallЧ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_565644lstm_565646lstm_565648*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5655332
lstm/StatefulPartitionedCall®
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_565651dense_565653*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5652892
dense/StatefulPartitionedCall≥
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_565656dense_1_565658*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5653252!
dense_1/StatefulPartitionedCallб
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:€€€€€€€€€
$
_user_specified_name
lstm_input
©E
В
@__inference_lstm_layer_call_and_return_conditional_losses_564621

inputs&
lstm_cell_64_564539:	»&
lstm_cell_64_564541:	2»"
lstm_cell_64_564543:	»
identityИҐ$lstm_cell_64/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_64_564539lstm_cell_64_564541lstm_cell_64_564543*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_5645382&
$lstm_cell_64/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_64_564539lstm_cell_64_564541lstm_cell_64_564543*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_564552*
condR
while_cond_564551*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЯ
IdentityIdentitytranspose_1:y:0%^lstm_cell_64/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_64/StatefulPartitionedCall$lstm_cell_64/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
’
√
while_cond_564551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564551___redundant_placeholder04
0while_while_cond_564551___redundant_placeholder14
0while_while_cond_564551___redundant_placeholder24
0while_while_cond_564551___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
µ[
Ъ
@__inference_lstm_layer_call_and_return_conditional_losses_566437
inputs_0>
+lstm_cell_64_matmul_readvariableop_resource:	»@
-lstm_cell_64_matmul_1_readvariableop_resource:	2»;
,lstm_cell_64_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_64/BiasAdd/ReadVariableOpҐ"lstm_cell_64/MatMul/ReadVariableOpҐ$lstm_cell_64/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02$
"lstm_cell_64/MatMul/ReadVariableOp≠
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMulї
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02&
$lstm_cell_64/MatMul_1/ReadVariableOp©
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMul_1†
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/addі
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02%
#lstm_cell_64/BiasAdd/ReadVariableOp≠
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/BiasAdd~
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_64/split/split_dimу
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm_cell_64/splitЖ
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/SigmoidК
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_1Л
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mulК
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_2Ч
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_1С
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/add_1К
lstm_cell_64/Sigmoid_3Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_3Е
lstm_cell_64/Sigmoid_4Sigmoidlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_4Щ
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_3:y:0lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterо
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_566353*
condR
while_cond_566352*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeк
IdentityIdentitytranspose_1:y:0$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Ж	
§
+__inference_sequential_layer_call_fn_566116

inputs
unknown:	»
	unknown_0:	2»
	unknown_1:	»
	unknown_2:22
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИҐStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5653322
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
цZ
Ш
@__inference_lstm_layer_call_and_return_conditional_losses_565250

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	»@
-lstm_cell_64_matmul_1_readvariableop_resource:	2»;
,lstm_cell_64_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_64/BiasAdd/ReadVariableOpҐ"lstm_cell_64/MatMul/ReadVariableOpҐ$lstm_cell_64/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02$
"lstm_cell_64/MatMul/ReadVariableOp≠
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMulї
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02&
$lstm_cell_64/MatMul_1/ReadVariableOp©
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMul_1†
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/addі
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02%
#lstm_cell_64/BiasAdd/ReadVariableOp≠
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/BiasAdd~
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_64/split/split_dimу
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm_cell_64/splitЖ
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/SigmoidК
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_1Л
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mulК
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_2Ч
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_1С
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/add_1К
lstm_cell_64/Sigmoid_3Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_3Е
lstm_cell_64/Sigmoid_4Sigmoidlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_4Щ
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_3:y:0lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterо
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_565166*
condR
while_cond_565165*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
“Й
¶
"__inference__traced_restore_567185
file_prefix/
assignvariableop_dense_kernel:22+
assignvariableop_1_dense_bias:23
!assignvariableop_2_dense_1_kernel:2-
assignvariableop_3_dense_1_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: ;
(assignvariableop_9_lstm_lstm_cell_kernel:	»F
3assignvariableop_10_lstm_lstm_cell_recurrent_kernel:	2»6
'assignvariableop_11_lstm_lstm_cell_bias:	»#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: %
assignvariableop_16_total_2: %
assignvariableop_17_count_2: 9
'assignvariableop_18_adam_dense_kernel_m:223
%assignvariableop_19_adam_dense_bias_m:2;
)assignvariableop_20_adam_dense_1_kernel_m:25
'assignvariableop_21_adam_dense_1_bias_m:C
0assignvariableop_22_adam_lstm_lstm_cell_kernel_m:	»M
:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_m:	2»=
.assignvariableop_24_adam_lstm_lstm_cell_bias_m:	»9
'assignvariableop_25_adam_dense_kernel_v:223
%assignvariableop_26_adam_dense_bias_v:2;
)assignvariableop_27_adam_dense_1_kernel_v:25
'assignvariableop_28_adam_dense_1_bias_v:C
0assignvariableop_29_adam_lstm_lstm_cell_kernel_v:	»M
:assignvariableop_30_adam_lstm_lstm_cell_recurrent_kernel_v:	2»=
.assignvariableop_31_adam_lstm_lstm_cell_bias_v:	»
identity_33ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ѓ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*Ї
value∞B≠!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names–
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices”
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ъ
_output_shapesЗ
Д:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¶
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4°
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

Identity_7Ґ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8™
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9≠
AssignVariableOp_9AssignVariableOp(assignvariableop_9_lstm_lstm_cell_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ї
AssignVariableOp_10AssignVariableOp3assignvariableop_10_lstm_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ѓ
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
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13°
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
Identity_18ѓ
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19≠
AssignVariableOp_19AssignVariableOp%assignvariableop_19_adam_dense_bias_mIdentity_19:output:0"/device:CPU:0*
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
Identity_21ѓ
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_1_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Є
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_lstm_lstm_cell_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¬
AssignVariableOp_23AssignVariableOp:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24ґ
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_lstm_lstm_cell_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25ѓ
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26≠
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27±
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ѓ
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Є
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_lstm_lstm_cell_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¬
AssignVariableOp_30AssignVariableOp:assignvariableop_30_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31ґ
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_lstm_lstm_cell_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_319
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЮ
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_32С
Identity_33IdentityIdentity_32:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_33"#
identity_33Identity_33:output:0*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
∞
Д
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_564538

inputs

states
states_11
matmul_readvariableop_resource:	»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2®
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identityђ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_1ђ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates
јJ
р	
lstm_while_body_565960&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_while_lstm_cell_64_matmul_readvariableop_resource_0:	»M
:lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»H
9lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorI
6lstm_while_lstm_cell_64_matmul_readvariableop_resource:	»K
8lstm_while_lstm_cell_64_matmul_1_readvariableop_resource:	2»F
7lstm_while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpҐ-lstm/while/lstm_cell_64/MatMul/ReadVariableOpҐ/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOpЌ
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeс
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItemЎ
-lstm/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02/
-lstm/while/lstm_cell_64/MatMul/ReadVariableOpл
lstm/while/lstm_cell_64/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:05lstm/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2 
lstm/while/lstm_cell_64/MatMulё
/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp:lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype021
/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp‘
 lstm/while/lstm_cell_64/MatMul_1MatMullstm_while_placeholder_27lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2"
 lstm/while/lstm_cell_64/MatMul_1ћ
lstm/while/lstm_cell_64/addAddV2(lstm/while/lstm_cell_64/MatMul:product:0*lstm/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/while/lstm_cell_64/add„
.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp9lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype020
.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpў
lstm/while/lstm_cell_64/BiasAddBiasAddlstm/while/lstm_cell_64/add:z:06lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2!
lstm/while/lstm_cell_64/BiasAddФ
'lstm/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'lstm/while/lstm_cell_64/split/split_dimЯ
lstm/while/lstm_cell_64/splitSplit0lstm/while/lstm_cell_64/split/split_dim:output:0(lstm/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm/while/lstm_cell_64/splitІ
lstm/while/lstm_cell_64/SigmoidSigmoid&lstm/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
lstm/while/lstm_cell_64/SigmoidЂ
!lstm/while/lstm_cell_64/Sigmoid_1Sigmoid&lstm/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_1і
lstm/while/lstm_cell_64/mulMul%lstm/while/lstm_cell_64/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/mulЂ
!lstm/while/lstm_cell_64/Sigmoid_2Sigmoid&lstm/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_2√
lstm/while/lstm_cell_64/mul_1Mul#lstm/while/lstm_cell_64/Sigmoid:y:0%lstm/while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/mul_1љ
lstm/while/lstm_cell_64/add_1AddV2lstm/while/lstm_cell_64/mul:z:0!lstm/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/add_1Ђ
!lstm/while/lstm_cell_64/Sigmoid_3Sigmoid&lstm/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_3¶
!lstm/while/lstm_cell_64/Sigmoid_4Sigmoid!lstm/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_4≈
lstm/while/lstm_cell_64/mul_2Mul%lstm/while/lstm_cell_64/Sigmoid_3:y:0%lstm/while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/mul_2щ
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder!lstm/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/yП
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1А
lstm/while/IdentityIdentitylstm/while/add_1:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/IdentityШ
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1В
lstm/while/Identity_2Identitylstm/while/add:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2ѓ
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3Ґ
lstm/while/Identity_4Identity!lstm/while/lstm_cell_64/mul_2:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/Identity_4Ґ
lstm/while/Identity_5Identity!lstm/while/lstm_cell_64/add_1:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"t
7lstm_while_lstm_cell_64_biasadd_readvariableop_resource9lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0"v
8lstm_while_lstm_cell_64_matmul_1_readvariableop_resource:lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0"r
6lstm_while_lstm_cell_64_matmul_readvariableop_resource8lstm_while_lstm_cell_64_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"Љ
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2`
.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp2^
-lstm/while/lstm_cell_64/MatMul/ReadVariableOp-lstm/while/lstm_cell_64/MatMul/ReadVariableOp2b
/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
м	
І
lstm_while_cond_565755&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_565755___redundant_placeholder0>
:lstm_while_lstm_while_cond_565755___redundant_placeholder1>
:lstm_while_lstm_while_cond_565755___redundant_placeholder2>
:lstm_while_lstm_while_cond_565755___redundant_placeholder3
lstm_while_identity
Й
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
О 
ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_566853

inputs3
!tensordot_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2	
BiasAddЬ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
ОC
–
while_body_566353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	»H
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	»F
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_64/BiasAdd/ReadVariableOpҐ(while/lstm_cell_64/MatMul/ReadVariableOpҐ*while/lstm_cell_64/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02*
(while/lstm_cell_64/MatMul/ReadVariableOp„
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMulѕ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype02,
*while/lstm_cell_64/MatMul_1/ReadVariableOpј
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMul_1Є
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/add»
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype02+
)while/lstm_cell_64/BiasAdd/ReadVariableOp≈
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/BiasAddК
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_64/split/split_dimЛ
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
while/lstm_cell_64/splitШ
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/SigmoidЬ
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_1†
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mulЬ
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_2ѓ
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0 while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_1©
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/add_1Ь
while/lstm_cell_64/Sigmoid_3Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_3Ч
while/lstm_cell_64/Sigmoid_4Sigmoidwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_4±
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_3:y:0 while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_2а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
µ[
Ъ
@__inference_lstm_layer_call_and_return_conditional_losses_566286
inputs_0>
+lstm_cell_64_matmul_readvariableop_resource:	»@
-lstm_cell_64_matmul_1_readvariableop_resource:	2»;
,lstm_cell_64_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_64/BiasAdd/ReadVariableOpҐ"lstm_cell_64/MatMul/ReadVariableOpҐ$lstm_cell_64/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02$
"lstm_cell_64/MatMul/ReadVariableOp≠
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMulї
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02&
$lstm_cell_64/MatMul_1/ReadVariableOp©
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMul_1†
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/addі
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02%
#lstm_cell_64/BiasAdd/ReadVariableOp≠
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/BiasAdd~
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_64/split/split_dimу
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm_cell_64/splitЖ
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/SigmoidК
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_1Л
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mulК
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_2Ч
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_1С
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/add_1К
lstm_cell_64/Sigmoid_3Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_3Е
lstm_cell_64/Sigmoid_4Sigmoidlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_4Щ
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_3:y:0lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterо
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_566202*
condR
while_cond_566201*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeк
IdentityIdentitytranspose_1:y:0$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
ь
і
%__inference_lstm_layer_call_fn_566750
inputs_0
unknown:	»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5646212
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
•
У
&__inference_dense_layer_call_fn_566823

inputs
unknown:22
	unknown_0:2
identityИҐStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5652892
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
Т	
®
+__inference_sequential_layer_call_fn_565349

lstm_input
unknown:	»
	unknown_0:	2»
	unknown_1:	»
	unknown_2:22
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5653322
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:€€€€€€€€€
$
_user_specified_name
lstm_input
ОC
–
while_body_566655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	»H
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	»F
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_64/BiasAdd/ReadVariableOpҐ(while/lstm_cell_64/MatMul/ReadVariableOpҐ*while/lstm_cell_64/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02*
(while/lstm_cell_64/MatMul/ReadVariableOp„
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMulѕ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype02,
*while/lstm_cell_64/MatMul_1/ReadVariableOpј
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMul_1Є
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/add»
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype02+
)while/lstm_cell_64/BiasAdd/ReadVariableOp≈
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/BiasAddК
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_64/split/split_dimЛ
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
while/lstm_cell_64/splitШ
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/SigmoidЬ
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_1†
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mulЬ
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_2ѓ
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0 while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_1©
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/add_1Ь
while/lstm_cell_64/Sigmoid_3Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_3Ч
while/lstm_cell_64/Sigmoid_4Sigmoidwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_4±
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_3:y:0 while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_2а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
цZ
Ш
@__inference_lstm_layer_call_and_return_conditional_losses_565533

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	»@
-lstm_cell_64_matmul_1_readvariableop_resource:	2»;
,lstm_cell_64_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_64/BiasAdd/ReadVariableOpҐ"lstm_cell_64/MatMul/ReadVariableOpҐ$lstm_cell_64/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02$
"lstm_cell_64/MatMul/ReadVariableOp≠
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMulї
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02&
$lstm_cell_64/MatMul_1/ReadVariableOp©
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMul_1†
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/addі
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02%
#lstm_cell_64/BiasAdd/ReadVariableOp≠
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/BiasAdd~
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_64/split/split_dimу
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm_cell_64/splitЖ
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/SigmoidК
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_1Л
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mulК
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_2Ч
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_1С
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/add_1К
lstm_cell_64/Sigmoid_3Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_3Е
lstm_cell_64/Sigmoid_4Sigmoidlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_4Щ
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_3:y:0lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterо
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_565449*
condR
while_cond_565448*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
І©
©
F__inference_sequential_layer_call_and_return_conditional_losses_565893

inputsC
0lstm_lstm_cell_64_matmul_readvariableop_resource:	»E
2lstm_lstm_cell_64_matmul_1_readvariableop_resource:	2»@
1lstm_lstm_cell_64_biasadd_readvariableop_resource:	»9
'dense_tensordot_readvariableop_resource:223
%dense_biasadd_readvariableop_resource:2;
)dense_1_tensordot_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/Tensordot/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐ dense_1/Tensordot/ReadVariableOpҐ(lstm/lstm_cell_64/BiasAdd/ReadVariableOpҐ'lstm/lstm_cell_64/MatMul/ReadVariableOpҐ)lstm/lstm_cell_64/MatMul_1/ReadVariableOpҐ
lstm/whileN

lstm/ShapeShapeinputs*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackВ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1В
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2А
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros/mul/yА
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros/packed/1Ч
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/ConstЙ

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros_1/mul/yЖ
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm/zeros_1/Less/yГ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros_1/packed/1Э
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/ConstС
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/permЙ
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1В
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stackЖ
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1Ж
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2М
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1П
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2"
 lstm/TensorArrayV2/element_shape∆
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2…
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeМ
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensorВ
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stackЖ
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1Ж
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2Ъ
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm/strided_slice_2ƒ
'lstm/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp0lstm_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02)
'lstm/lstm_cell_64/MatMul/ReadVariableOpЅ
lstm/lstm_cell_64/MatMulMatMullstm/strided_slice_2:output:0/lstm/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/MatMul 
)lstm/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp2lstm_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02+
)lstm/lstm_cell_64/MatMul_1/ReadVariableOpљ
lstm/lstm_cell_64/MatMul_1MatMullstm/zeros:output:01lstm/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/MatMul_1і
lstm/lstm_cell_64/addAddV2"lstm/lstm_cell_64/MatMul:product:0$lstm/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/add√
(lstm/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp1lstm_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02*
(lstm/lstm_cell_64/BiasAdd/ReadVariableOpЅ
lstm/lstm_cell_64/BiasAddBiasAddlstm/lstm_cell_64/add:z:00lstm/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/BiasAddИ
!lstm/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!lstm/lstm_cell_64/split/split_dimЗ
lstm/lstm_cell_64/splitSplit*lstm/lstm_cell_64/split/split_dim:output:0"lstm/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm/lstm_cell_64/splitХ
lstm/lstm_cell_64/SigmoidSigmoid lstm/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/SigmoidЩ
lstm/lstm_cell_64/Sigmoid_1Sigmoid lstm/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_1Я
lstm/lstm_cell_64/mulMullstm/lstm_cell_64/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/mulЩ
lstm/lstm_cell_64/Sigmoid_2Sigmoid lstm/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_2Ђ
lstm/lstm_cell_64/mul_1Mullstm/lstm_cell_64/Sigmoid:y:0lstm/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/mul_1•
lstm/lstm_cell_64/add_1AddV2lstm/lstm_cell_64/mul:z:0lstm/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/add_1Щ
lstm/lstm_cell_64/Sigmoid_3Sigmoid lstm/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_3Ф
lstm/lstm_cell_64/Sigmoid_4Sigmoidlstm/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_4≠
lstm/lstm_cell_64/mul_2Mullstm/lstm_cell_64/Sigmoid_3:y:0lstm/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/mul_2Щ
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2$
"lstm/TensorArrayV2_1/element_shapeћ
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/timeЙ
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counterє

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_lstm_cell_64_matmul_readvariableop_resource2lstm_lstm_cell_64_matmul_1_readvariableop_resource1lstm_lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*"
bodyR
lstm_while_body_565756*"
condR
lstm_while_cond_565755*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2

lstm/whileњ
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeь
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStackЛ
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm/strided_slice_3/stackЖ
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1Ж
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2Є
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
lstm/strided_slice_3Г
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/permє
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime®
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:22*
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
dense/Tensordot/freer
dense/Tensordot/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:2
dense/Tensordot/ShapeА
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axisп
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2Д
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axisх
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
dense/Tensordot/ConstШ
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
dense/Tensordot/Const_1†
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
dense/Tensordot/concat/axisќ
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat§
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack∞
dense/Tensordot/transpose	Transposelstm/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/Tensordot/transposeЈ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense/Tensordot/Reshapeґ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€22
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense/Tensordot/Const_2А
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axisџ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1®
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/TensordotЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
dense/BiasAdd/ReadVariableOpЯ
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/BiasAddw
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/SigmoidЃ
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axesБ
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/frees
dense_1/Tensordot/ShapeShapedense/Sigmoid:y:0*
T0*
_output_shapes
:2
dense_1/Tensordot/ShapeД
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisщ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2И
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis€
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
dense_1/Tensordot/Const†
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/ProdА
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1®
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1А
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisЎ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concatђ
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack≥
dense_1/Tensordot/transpose	Transposedense/Sigmoid:y:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense_1/Tensordot/transposeњ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_1/Tensordot/ReshapeЊ
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Tensordot/MatMulА
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/Const_2Д
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axisе
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1∞
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dense_1/Tensordot§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpІ
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddВ
IdentityIdentitydense_1/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp)^lstm/lstm_cell_64/BiasAdd/ReadVariableOp(^lstm/lstm_cell_64/MatMul/ReadVariableOp*^lstm/lstm_cell_64/MatMul_1/ReadVariableOp^lstm/while*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2T
(lstm/lstm_cell_64/BiasAdd/ReadVariableOp(lstm/lstm_cell_64/BiasAdd/ReadVariableOp2R
'lstm/lstm_cell_64/MatMul/ReadVariableOp'lstm/lstm_cell_64/MatMul/ReadVariableOp2V
)lstm/lstm_cell_64/MatMul_1/ReadVariableOp)lstm/lstm_cell_64/MatMul_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’
√
while_cond_565165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565165___redundant_placeholder04
0while_while_cond_565165___redundant_placeholder14
0while_while_cond_565165___redundant_placeholder24
0while_while_cond_565165___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
Ц
Ю
F__inference_sequential_layer_call_and_return_conditional_losses_565332

inputs
lstm_565251:	»
lstm_565253:	2»
lstm_565255:	»
dense_565290:22
dense_565292:2 
dense_1_565326:2
dense_1_565328:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐlstm/StatefulPartitionedCallУ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_565251lstm_565253lstm_565255*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5652502
lstm/StatefulPartitionedCall®
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_565290dense_565292*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5652892
dense/StatefulPartitionedCall≥
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_565326dense_1_565328*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5653252!
dense_1/StatefulPartitionedCallб
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С&
г
while_body_564762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_64_564786_0:	».
while_lstm_cell_64_564788_0:	2»*
while_lstm_cell_64_564790_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_64_564786:	»,
while_lstm_cell_64_564788:	2»(
while_lstm_cell_64_564790:	»ИҐ*while/lstm_cell_64/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
*while/lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_64_564786_0while_lstm_cell_64_564788_0while_lstm_cell_64_564790_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_5646842,
*while/lstm_cell_64/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_64/StatefulPartitionedCall:output:0*
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
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_64/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ƒ
while/Identity_4Identity3while/lstm_cell_64/StatefulPartitionedCall:output:1+^while/lstm_cell_64/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4ƒ
while/Identity_5Identity3while/lstm_cell_64/StatefulPartitionedCall:output:2+^while/lstm_cell_64/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_64_564786while_lstm_cell_64_564786_0"8
while_lstm_cell_64_564788while_lstm_cell_64_564788_0"8
while_lstm_cell_64_564790while_lstm_cell_64_564790_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2X
*while/lstm_cell_64/StatefulPartitionedCall*while/lstm_cell_64/StatefulPartitionedCall: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
“
≤
%__inference_lstm_layer_call_fn_566783

inputs
unknown:	»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5655332
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
нE
і
__inference__traced_save_567079
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
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
"savev2_count_2_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename®
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*Ї
value∞B≠!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names 
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesҐ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*ж
_input_shapes‘
—: :22:2:2:: : : : : :	»:	2»:»: : : : : : :22:2:2::	»:	2»:»:22:2:2::	»:	2»:»: 2(
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
:	»:%!

_output_shapes
:	2»:!

_output_shapes	
:»:
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
:	»:%!

_output_shapes
:	2»:!

_output_shapes	
:»:$ 

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
:	»:%!

_output_shapes
:	2»:! 

_output_shapes	
:»:!

_output_shapes
: 
јJ
р	
lstm_while_body_565756&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_while_lstm_cell_64_matmul_readvariableop_resource_0:	»M
:lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»H
9lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorI
6lstm_while_lstm_cell_64_matmul_readvariableop_resource:	»K
8lstm_while_lstm_cell_64_matmul_1_readvariableop_resource:	2»F
7lstm_while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpҐ-lstm/while/lstm_cell_64/MatMul/ReadVariableOpҐ/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOpЌ
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeс
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItemЎ
-lstm/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02/
-lstm/while/lstm_cell_64/MatMul/ReadVariableOpл
lstm/while/lstm_cell_64/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:05lstm/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2 
lstm/while/lstm_cell_64/MatMulё
/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp:lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype021
/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp‘
 lstm/while/lstm_cell_64/MatMul_1MatMullstm_while_placeholder_27lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2"
 lstm/while/lstm_cell_64/MatMul_1ћ
lstm/while/lstm_cell_64/addAddV2(lstm/while/lstm_cell_64/MatMul:product:0*lstm/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/while/lstm_cell_64/add„
.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp9lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype020
.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpў
lstm/while/lstm_cell_64/BiasAddBiasAddlstm/while/lstm_cell_64/add:z:06lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2!
lstm/while/lstm_cell_64/BiasAddФ
'lstm/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'lstm/while/lstm_cell_64/split/split_dimЯ
lstm/while/lstm_cell_64/splitSplit0lstm/while/lstm_cell_64/split/split_dim:output:0(lstm/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm/while/lstm_cell_64/splitІ
lstm/while/lstm_cell_64/SigmoidSigmoid&lstm/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22!
lstm/while/lstm_cell_64/SigmoidЂ
!lstm/while/lstm_cell_64/Sigmoid_1Sigmoid&lstm/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_1і
lstm/while/lstm_cell_64/mulMul%lstm/while/lstm_cell_64/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/mulЂ
!lstm/while/lstm_cell_64/Sigmoid_2Sigmoid&lstm/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_2√
lstm/while/lstm_cell_64/mul_1Mul#lstm/while/lstm_cell_64/Sigmoid:y:0%lstm/while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/mul_1љ
lstm/while/lstm_cell_64/add_1AddV2lstm/while/lstm_cell_64/mul:z:0!lstm/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/add_1Ђ
!lstm/while/lstm_cell_64/Sigmoid_3Sigmoid&lstm/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_3¶
!lstm/while/lstm_cell_64/Sigmoid_4Sigmoid!lstm/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22#
!lstm/while/lstm_cell_64/Sigmoid_4≈
lstm/while/lstm_cell_64/mul_2Mul%lstm/while/lstm_cell_64/Sigmoid_3:y:0%lstm/while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/lstm_cell_64/mul_2щ
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder!lstm/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/yП
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1А
lstm/while/IdentityIdentitylstm/while/add_1:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/IdentityШ
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1В
lstm/while/Identity_2Identitylstm/while/add:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2ѓ
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3Ґ
lstm/while/Identity_4Identity!lstm/while/lstm_cell_64/mul_2:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/Identity_4Ґ
lstm/while/Identity_5Identity!lstm/while/lstm_cell_64/add_1:z:0/^lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.^lstm/while/lstm_cell_64/MatMul/ReadVariableOp0^lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"t
7lstm_while_lstm_cell_64_biasadd_readvariableop_resource9lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0"v
8lstm_while_lstm_cell_64_matmul_1_readvariableop_resource:lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0"r
6lstm_while_lstm_cell_64_matmul_readvariableop_resource8lstm_while_lstm_cell_64_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"Љ
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2`
.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp.lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp2^
-lstm/while/lstm_cell_64/MatMul/ReadVariableOp-lstm/while/lstm_cell_64/MatMul/ReadVariableOp2b
/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
Ј
Г
!sequential_lstm_while_cond_564325<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1T
Psequential_lstm_while_sequential_lstm_while_cond_564325___redundant_placeholder0T
Psequential_lstm_while_sequential_lstm_while_cond_564325___redundant_placeholder1T
Psequential_lstm_while_sequential_lstm_while_cond_564325___redundant_placeholder2T
Psequential_lstm_while_sequential_lstm_while_cond_564325___redundant_placeholder3"
sequential_lstm_while_identity
ј
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: 2
sequential/lstm/while/LessН
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: 2 
sequential/lstm/while/Identity"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
©E
В
@__inference_lstm_layer_call_and_return_conditional_losses_564831

inputs&
lstm_cell_64_564749:	»&
lstm_cell_64_564751:	2»"
lstm_cell_64_564753:	»
identityИҐ$lstm_cell_64/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_64_564749lstm_cell_64_564751lstm_cell_64_564753*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_5646842&
$lstm_cell_64/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_64_564749lstm_cell_64_564751lstm_cell_64_564753*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_564762*
condR
while_cond_564761*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЯ
IdentityIdentitytranspose_1:y:0%^lstm_cell_64/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_64/StatefulPartitionedCall$lstm_cell_64/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ь
і
%__inference_lstm_layer_call_fn_566761
inputs_0
unknown:	»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5648312
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
ОC
–
while_body_565449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	»H
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	»F
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_64/BiasAdd/ReadVariableOpҐ(while/lstm_cell_64/MatMul/ReadVariableOpҐ*while/lstm_cell_64/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02*
(while/lstm_cell_64/MatMul/ReadVariableOp„
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMulѕ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype02,
*while/lstm_cell_64/MatMul_1/ReadVariableOpј
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/MatMul_1Є
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/add»
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype02+
)while/lstm_cell_64/BiasAdd/ReadVariableOp≈
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
while/lstm_cell_64/BiasAddК
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_64/split/split_dimЛ
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
while/lstm_cell_64/splitШ
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/SigmoidЬ
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_1†
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mulЬ
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_2ѓ
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0 while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_1©
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/add_1Ь
while/lstm_cell_64/Sigmoid_3Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_3Ч
while/lstm_cell_64/Sigmoid_4Sigmoidwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/Sigmoid_4±
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_3:y:0 while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
while/lstm_cell_64/mul_2а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
цZ
Ш
@__inference_lstm_layer_call_and_return_conditional_losses_566588

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	»@
-lstm_cell_64_matmul_1_readvariableop_resource:	2»;
,lstm_cell_64_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_64/BiasAdd/ReadVariableOpҐ"lstm_cell_64/MatMul/ReadVariableOpҐ$lstm_cell_64/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02$
"lstm_cell_64/MatMul/ReadVariableOp≠
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMulї
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02&
$lstm_cell_64/MatMul_1/ReadVariableOp©
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMul_1†
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/addі
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02%
#lstm_cell_64/BiasAdd/ReadVariableOp≠
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/BiasAdd~
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_64/split/split_dimу
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm_cell_64/splitЖ
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/SigmoidК
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_1Л
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mulК
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_2Ч
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_1С
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/add_1К
lstm_cell_64/Sigmoid_3Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_3Е
lstm_cell_64/Sigmoid_4Sigmoidlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_4Щ
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_3:y:0lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterо
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_566504*
condR
while_cond_566503*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’
√
while_cond_566503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566503___redundant_placeholder04
0while_while_cond_566503___redundant_placeholder14
0while_while_cond_566503___redundant_placeholder24
0while_while_cond_566503___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
И
ц
-__inference_lstm_cell_64_layer_call_fn_566960

inputs
states_0
states_1
unknown:	»
	unknown_0:	2»
	unknown_1:	»
identity

identity_1

identity_2ИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_5646842
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€2:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/1
’
√
while_cond_566654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566654___redundant_placeholder04
0while_while_cond_566654___redundant_placeholder14
0while_while_cond_566654___redundant_placeholder24
0while_while_cond_566654___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
’
√
while_cond_566352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566352___redundant_placeholder04
0while_while_cond_566352___redundant_placeholder14
0while_while_cond_566352___redundant_placeholder24
0while_while_cond_566352___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
цZ
Ш
@__inference_lstm_layer_call_and_return_conditional_losses_566739

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	»@
-lstm_cell_64_matmul_1_readvariableop_resource:	2»;
,lstm_cell_64_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_64/BiasAdd/ReadVariableOpҐ"lstm_cell_64/MatMul/ReadVariableOpҐ$lstm_cell_64/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
zeros/packed/1Г
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
:€€€€€€€€€22
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
B :и2
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
zeros_1/packed/1Й
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
:€€€€€€€€€22	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02$
"lstm_cell_64/MatMul/ReadVariableOp≠
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMulї
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02&
$lstm_cell_64/MatMul_1/ReadVariableOp©
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/MatMul_1†
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/addі
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02%
#lstm_cell_64/BiasAdd/ReadVariableOp≠
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm_cell_64/BiasAdd~
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_64/split/split_dimу
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm_cell_64/splitЖ
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/SigmoidК
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_1Л
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mulК
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_2Ч
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_1С
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/add_1К
lstm_cell_64/Sigmoid_3Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_3Е
lstm_cell_64/Sigmoid_4Sigmoidlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/Sigmoid_4Щ
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_3:y:0lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm_cell_64/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterо
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_566655*
condR
while_cond_566654*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Є
Ж
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_566894

inputs
states_0
states_11
matmul_readvariableop_resource:	»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2®
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identityђ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_1ђ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/1
О 
ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_565325

inputs3
!tensordot_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2	
BiasAddЬ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
ж
°
$__inference_signature_wrapper_565689

lstm_input
unknown:	»
	unknown_0:	2»
	unknown_1:	»
	unknown_2:22
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_5644632
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:€€€€€€€€€
$
_user_specified_name
lstm_input
И
ц
-__inference_lstm_cell_64_layer_call_fn_566943

inputs
states_0
states_1
unknown:	»
	unknown_0:	2»
	unknown_1:	»
identity

identity_1

identity_2ИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_5645382
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€2:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/1
дZ
–
!sequential_lstm_while_body_564326<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0V
Csequential_lstm_while_lstm_cell_64_matmul_readvariableop_resource_0:	»X
Esequential_lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2»S
Dsequential_lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0:	»"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorT
Asequential_lstm_while_lstm_cell_64_matmul_readvariableop_resource:	»V
Csequential_lstm_while_lstm_cell_64_matmul_1_readvariableop_resource:	2»Q
Bsequential_lstm_while_lstm_cell_64_biasadd_readvariableop_resource:	»ИҐ9sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpҐ8sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOpҐ:sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOpг
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2I
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape≥
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02;
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemщ
8sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOpCsequential_lstm_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	»*
dtype02:
8sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOpЧ
)sequential/lstm/while/lstm_cell_64/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0@sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2+
)sequential/lstm/while/lstm_cell_64/MatMul€
:sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOpEsequential_lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype02<
:sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOpА
+sequential/lstm/while/lstm_cell_64/MatMul_1MatMul#sequential_lstm_while_placeholder_2Bsequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2-
+sequential/lstm/while/lstm_cell_64/MatMul_1ш
&sequential/lstm/while/lstm_cell_64/addAddV23sequential/lstm/while/lstm_cell_64/MatMul:product:05sequential/lstm/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2(
&sequential/lstm/while/lstm_cell_64/addш
9sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOpDsequential_lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype02;
9sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOpЕ
*sequential/lstm/while/lstm_cell_64/BiasAddBiasAdd*sequential/lstm/while/lstm_cell_64/add:z:0Asequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2,
*sequential/lstm/while/lstm_cell_64/BiasAdd™
2sequential/lstm/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential/lstm/while/lstm_cell_64/split/split_dimЋ
(sequential/lstm/while/lstm_cell_64/splitSplit;sequential/lstm/while/lstm_cell_64/split/split_dim:output:03sequential/lstm/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2*
(sequential/lstm/while/lstm_cell_64/split»
*sequential/lstm/while/lstm_cell_64/SigmoidSigmoid1sequential/lstm/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22,
*sequential/lstm/while/lstm_cell_64/Sigmoidћ
,sequential/lstm/while/lstm_cell_64/Sigmoid_1Sigmoid1sequential/lstm/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22.
,sequential/lstm/while/lstm_cell_64/Sigmoid_1а
&sequential/lstm/while/lstm_cell_64/mulMul0sequential/lstm/while/lstm_cell_64/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€22(
&sequential/lstm/while/lstm_cell_64/mulћ
,sequential/lstm/while/lstm_cell_64/Sigmoid_2Sigmoid1sequential/lstm/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22.
,sequential/lstm/while/lstm_cell_64/Sigmoid_2п
(sequential/lstm/while/lstm_cell_64/mul_1Mul.sequential/lstm/while/lstm_cell_64/Sigmoid:y:00sequential/lstm/while/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22*
(sequential/lstm/while/lstm_cell_64/mul_1й
(sequential/lstm/while/lstm_cell_64/add_1AddV2*sequential/lstm/while/lstm_cell_64/mul:z:0,sequential/lstm/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22*
(sequential/lstm/while/lstm_cell_64/add_1ћ
,sequential/lstm/while/lstm_cell_64/Sigmoid_3Sigmoid1sequential/lstm/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22.
,sequential/lstm/while/lstm_cell_64/Sigmoid_3«
,sequential/lstm/while/lstm_cell_64/Sigmoid_4Sigmoid,sequential/lstm/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22.
,sequential/lstm/while/lstm_cell_64/Sigmoid_4с
(sequential/lstm/while/lstm_cell_64/mul_2Mul0sequential/lstm/while/lstm_cell_64/Sigmoid_3:y:00sequential/lstm/while/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22*
(sequential/lstm/while/lstm_cell_64/mul_2∞
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder,sequential/lstm/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype02<
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItem|
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add/y©
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/addА
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add_1/y∆
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add_1¬
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0:^sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp9^sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp;^sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2 
sequential/lstm/while/Identityе
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations:^sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp9^sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp;^sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_1ƒ
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0:^sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp9^sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp;^sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_2с
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0:^sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp9^sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp;^sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_3д
 sequential/lstm/while/Identity_4Identity,sequential/lstm/while/lstm_cell_64/mul_2:z:0:^sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp9^sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp;^sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22"
 sequential/lstm/while/Identity_4д
 sequential/lstm/while/Identity_5Identity,sequential/lstm/while/lstm_cell_64/add_1:z:0:^sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp9^sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp;^sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22"
 sequential/lstm/while/Identity_5"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"К
Bsequential_lstm_while_lstm_cell_64_biasadd_readvariableop_resourceDsequential_lstm_while_lstm_cell_64_biasadd_readvariableop_resource_0"М
Csequential_lstm_while_lstm_cell_64_matmul_1_readvariableop_resourceEsequential_lstm_while_lstm_cell_64_matmul_1_readvariableop_resource_0"И
Asequential_lstm_while_lstm_cell_64_matmul_readvariableop_resourceCsequential_lstm_while_lstm_cell_64_matmul_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"и
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2v
9sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp9sequential/lstm/while/lstm_cell_64/BiasAdd/ReadVariableOp2t
8sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp8sequential/lstm/while/lstm_cell_64/MatMul/ReadVariableOp2x
:sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp:sequential/lstm/while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
о 
ш
A__inference_dense_layer_call_and_return_conditional_losses_565289

inputs3
!tensordot_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€22
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€22	
BiasAdde
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€22	
SigmoidЧ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
І©
©
F__inference_sequential_layer_call_and_return_conditional_losses_566097

inputsC
0lstm_lstm_cell_64_matmul_readvariableop_resource:	»E
2lstm_lstm_cell_64_matmul_1_readvariableop_resource:	2»@
1lstm_lstm_cell_64_biasadd_readvariableop_resource:	»9
'dense_tensordot_readvariableop_resource:223
%dense_biasadd_readvariableop_resource:2;
)dense_1_tensordot_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/Tensordot/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐ dense_1/Tensordot/ReadVariableOpҐ(lstm/lstm_cell_64/BiasAdd/ReadVariableOpҐ'lstm/lstm_cell_64/MatMul/ReadVariableOpҐ)lstm/lstm_cell_64/MatMul_1/ReadVariableOpҐ
lstm/whileN

lstm/ShapeShapeinputs*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackВ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1В
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2А
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros/mul/yА
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros/packed/1Ч
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/ConstЙ

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros_1/mul/yЖ
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
lstm/zeros_1/Less/yГ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm/zeros_1/packed/1Э
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/ConstС
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/permЙ
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1В
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stackЖ
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1Ж
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2М
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1П
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2"
 lstm/TensorArrayV2/element_shape∆
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2…
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeМ
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensorВ
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stackЖ
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1Ж
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2Ъ
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm/strided_slice_2ƒ
'lstm/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp0lstm_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02)
'lstm/lstm_cell_64/MatMul/ReadVariableOpЅ
lstm/lstm_cell_64/MatMulMatMullstm/strided_slice_2:output:0/lstm/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/MatMul 
)lstm/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp2lstm_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02+
)lstm/lstm_cell_64/MatMul_1/ReadVariableOpљ
lstm/lstm_cell_64/MatMul_1MatMullstm/zeros:output:01lstm/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/MatMul_1і
lstm/lstm_cell_64/addAddV2"lstm/lstm_cell_64/MatMul:product:0$lstm/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/add√
(lstm/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp1lstm_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02*
(lstm/lstm_cell_64/BiasAdd/ReadVariableOpЅ
lstm/lstm_cell_64/BiasAddBiasAddlstm/lstm_cell_64/add:z:00lstm/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
lstm/lstm_cell_64/BiasAddИ
!lstm/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!lstm/lstm_cell_64/split/split_dimЗ
lstm/lstm_cell_64/splitSplit*lstm/lstm_cell_64/split/split_dim:output:0"lstm/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
lstm/lstm_cell_64/splitХ
lstm/lstm_cell_64/SigmoidSigmoid lstm/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/SigmoidЩ
lstm/lstm_cell_64/Sigmoid_1Sigmoid lstm/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_1Я
lstm/lstm_cell_64/mulMullstm/lstm_cell_64/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/mulЩ
lstm/lstm_cell_64/Sigmoid_2Sigmoid lstm/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_2Ђ
lstm/lstm_cell_64/mul_1Mullstm/lstm_cell_64/Sigmoid:y:0lstm/lstm_cell_64/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/mul_1•
lstm/lstm_cell_64/add_1AddV2lstm/lstm_cell_64/mul:z:0lstm/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/add_1Щ
lstm/lstm_cell_64/Sigmoid_3Sigmoid lstm/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_3Ф
lstm/lstm_cell_64/Sigmoid_4Sigmoidlstm/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/Sigmoid_4≠
lstm/lstm_cell_64/mul_2Mullstm/lstm_cell_64/Sigmoid_3:y:0lstm/lstm_cell_64/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
lstm/lstm_cell_64/mul_2Щ
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   2$
"lstm/TensorArrayV2_1/element_shapeћ
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/timeЙ
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counterє

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_lstm_cell_64_matmul_readvariableop_resource2lstm_lstm_cell_64_matmul_1_readvariableop_resource1lstm_lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*"
bodyR
lstm_while_body_565960*"
condR
lstm_while_cond_565959*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations 2

lstm/whileњ
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeь
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStackЛ
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm/strided_slice_3/stackЖ
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1Ж
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2Є
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask2
lstm/strided_slice_3Г
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/permє
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime®
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:22*
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
dense/Tensordot/freer
dense/Tensordot/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:2
dense/Tensordot/ShapeА
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axisп
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2Д
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axisх
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
dense/Tensordot/ConstШ
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
dense/Tensordot/Const_1†
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
dense/Tensordot/concat/axisќ
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat§
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack∞
dense/Tensordot/transpose	Transposelstm/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/Tensordot/transposeЈ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense/Tensordot/Reshapeґ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€22
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense/Tensordot/Const_2А
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axisџ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1®
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/TensordotЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
dense/BiasAdd/ReadVariableOpЯ
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/BiasAddw
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense/SigmoidЃ
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axesБ
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/frees
dense_1/Tensordot/ShapeShapedense/Sigmoid:y:0*
T0*
_output_shapes
:2
dense_1/Tensordot/ShapeД
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisщ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2И
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis€
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
dense_1/Tensordot/Const†
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/ProdА
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1®
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1А
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisЎ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concatђ
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack≥
dense_1/Tensordot/transpose	Transposedense/Sigmoid:y:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
dense_1/Tensordot/transposeњ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_1/Tensordot/ReshapeЊ
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Tensordot/MatMulА
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/Const_2Д
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axisе
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1∞
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
dense_1/Tensordot§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpІ
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddВ
IdentityIdentitydense_1/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp)^lstm/lstm_cell_64/BiasAdd/ReadVariableOp(^lstm/lstm_cell_64/MatMul/ReadVariableOp*^lstm/lstm_cell_64/MatMul_1/ReadVariableOp^lstm/while*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2T
(lstm/lstm_cell_64/BiasAdd/ReadVariableOp(lstm/lstm_cell_64/BiasAdd/ReadVariableOp2R
'lstm/lstm_cell_64/MatMul/ReadVariableOp'lstm/lstm_cell_64/MatMul/ReadVariableOp2V
)lstm/lstm_cell_64/MatMul_1/ReadVariableOp)lstm/lstm_cell_64/MatMul_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Т	
®
+__inference_sequential_layer_call_fn_565620

lstm_input
unknown:	»
	unknown_0:	2»
	unknown_1:	»
	unknown_2:22
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5655842
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:€€€€€€€€€
$
_user_specified_name
lstm_input
о 
ш
A__inference_dense_layer_call_and_return_conditional_losses_566814

inputs3
!tensordot_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€22
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€22	
BiasAdde
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€22	
SigmoidЧ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
’
√
while_cond_565448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565448___redundant_placeholder04
0while_while_cond_565448___redundant_placeholder14
0while_while_cond_565448___redundant_placeholder24
0while_while_cond_565448___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: ::::: 
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
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
Є
Ж
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_566926

inputs
states_0
states_11
matmul_readvariableop_resource:	»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2®
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identityђ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_1ђ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states/1
©
Х
(__inference_dense_1_layer_call_fn_566862

inputs
unknown:2
	unknown_0:
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5653252
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
∞
Д
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_564684

inputs

states
states_11
matmul_readvariableop_resource:	»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€22	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€22
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€22
mul_2®
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identityђ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_1ђ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates
Ж	
§
+__inference_sequential_layer_call_fn_566135

inputs
unknown:	»
	unknown_0:	2»
	unknown_1:	»
	unknown_2:22
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИҐStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5655842
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ц
Ю
F__inference_sequential_layer_call_and_return_conditional_losses_565584

inputs
lstm_565566:	»
lstm_565568:	2»
lstm_565570:	»
dense_565573:22
dense_565575:2 
dense_1_565578:2
dense_1_565580:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐlstm/StatefulPartitionedCallУ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_565566lstm_565568lstm_565570*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5655332
lstm/StatefulPartitionedCall®
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_565573dense_565575*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5652892
dense/StatefulPartitionedCall≥
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_565578dense_1_565580*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5653252!
dense_1/StatefulPartitionedCallб
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
Ґ
F__inference_sequential_layer_call_and_return_conditional_losses_565641

lstm_input
lstm_565623:	»
lstm_565625:	2»
lstm_565627:	»
dense_565630:22
dense_565632:2 
dense_1_565635:2
dense_1_565637:
identityИҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐlstm/StatefulPartitionedCallЧ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_565623lstm_565625lstm_565627*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_5652502
lstm/StatefulPartitionedCall®
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_565630dense_565632*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5652892
dense/StatefulPartitionedCall≥
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_565635dense_1_565637*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_5653252!
dense_1/StatefulPartitionedCallб
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:€€€€€€€€€
$
_user_specified_name
lstm_input"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Є
serving_default§
E

lstm_input7
serving_default_lstm_input:0€€€€€€€€€?
dense_14
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:з…
•/
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer

signatures
#_self_saveable_object_factories
trainable_variables
	variables
	regularization_losses

	keras_api
*g&call_and_return_all_conditional_losses
h__call__
i_default_save_signature"ј,
_tf_keras_sequential°,{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_input"}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 24, 19]}, "float32", "lstm_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}, "shared_object_id": 14}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 15}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 16}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
‘
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
*j&call_and_return_all_conditional_losses
k__call__"Ж
_tf_keras_rnn_layerи
{"name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
х

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
*l&call_and_return_all_conditional_losses
m__call__"Ђ
_tf_keras_layerС{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 50]}}
ъ

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
*n&call_and_return_all_conditional_losses
o__call__"∞
_tf_keras_layerЦ{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 50]}}
—
 iter

!beta_1

"beta_2
	#decay
$learning_ratemYmZm[m\%m]&m^'m_v`vavbvc%vd&ve'vf"
	optimizer
,
pserving_default"
signature_map
 "
trackable_dict_wrapper
Q
%0
&1
'2
3
4
5
6"
trackable_list_wrapper
Q
%0
&1
'2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 
trainable_variables
(layer_regularization_losses

)layers
*layer_metrics
+non_trainable_variables
	variables
	regularization_losses
,metrics
h__call__
i_default_save_signature
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
Њ	
-
state_size

%kernel
&recurrent_kernel
'bias
#._self_saveable_object_factories
/trainable_variables
0regularization_losses
1	variables
2	keras_api
*q&call_and_return_all_conditional_losses
r__call__"ќ
_tf_keras_layerі{"name": "lstm_cell_64", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_64", "trainable": true, "dtype": "float32", "units": 50, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
є
trainable_variables

3states
4layer_regularization_losses

5layers
6layer_metrics
7non_trainable_variables
	variables
regularization_losses
8metrics
k__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
:222dense/kernel
:22
dense/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
trainable_variables
9layer_regularization_losses
regularization_losses
:layer_metrics
;non_trainable_variables
	variables

<layers
=metrics
m__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
 :22dense_1/kernel
:2dense_1/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
trainable_variables
>layer_regularization_losses
regularization_losses
?layer_metrics
@non_trainable_variables
	variables

Alayers
Bmetrics
o__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	»2lstm/lstm_cell/kernel
2:0	2»2lstm/lstm_cell/recurrent_kernel
": »2lstm/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
≠
/trainable_variables
Flayer_regularization_losses
0regularization_losses
Glayer_metrics
Hnon_trainable_variables
1	variables

Ilayers
Jmetrics
r__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
‘
	Ktotal
	Lcount
M	variables
N	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 19}
ѓ
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api"и
_tf_keras_metricЌ{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 15}
М
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api"≈
_tf_keras_metric™{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 16}
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
:  (2total
:  (2count
.
K0
L1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
T0
U1"
trackable_list_wrapper
-
W	variables"
_generic_user_object
#:!222Adam/dense/kernel/m
:22Adam/dense/bias/m
%:#22Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
-:+	»2Adam/lstm/lstm_cell/kernel/m
7:5	2»2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%»2Adam/lstm/lstm_cell/bias/m
#:!222Adam/dense/kernel/v
:22Adam/dense/bias/v
%:#22Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
-:+	»2Adam/lstm/lstm_cell/kernel/v
7:5	2»2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%»2Adam/lstm/lstm_cell/bias/v
ж2г
F__inference_sequential_layer_call_and_return_conditional_losses_565893
F__inference_sequential_layer_call_and_return_conditional_losses_566097
F__inference_sequential_layer_call_and_return_conditional_losses_565641
F__inference_sequential_layer_call_and_return_conditional_losses_565662ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ъ2ч
+__inference_sequential_layer_call_fn_565349
+__inference_sequential_layer_call_fn_566116
+__inference_sequential_layer_call_fn_566135
+__inference_sequential_layer_call_fn_565620ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ж2г
!__inference__wrapped_model_564463љ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *-Ґ*
(К%

lstm_input€€€€€€€€€
г2а
@__inference_lstm_layer_call_and_return_conditional_losses_566286
@__inference_lstm_layer_call_and_return_conditional_losses_566437
@__inference_lstm_layer_call_and_return_conditional_losses_566588
@__inference_lstm_layer_call_and_return_conditional_losses_566739’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ч2ф
%__inference_lstm_layer_call_fn_566750
%__inference_lstm_layer_call_fn_566761
%__inference_lstm_layer_call_fn_566772
%__inference_lstm_layer_call_fn_566783’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
л2и
A__inference_dense_layer_call_and_return_conditional_losses_566814Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
–2Ќ
&__inference_dense_layer_call_fn_566823Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_1_layer_call_and_return_conditional_losses_566853Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_1_layer_call_fn_566862Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ќBЋ
$__inference_signature_wrapper_565689
lstm_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_566894
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_566926Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ґ2Я
-__inference_lstm_cell_64_layer_call_fn_566943
-__inference_lstm_cell_64_layer_call_fn_566960Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 Ю
!__inference__wrapped_model_564463y%&'7Ґ4
-Ґ*
(К%

lstm_input€€€€€€€€€
™ "5™2
0
dense_1%К"
dense_1€€€€€€€€€Ђ
C__inference_dense_1_layer_call_and_return_conditional_losses_566853d3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€2
™ ")Ґ&
К
0€€€€€€€€€
Ъ Г
(__inference_dense_1_layer_call_fn_566862W3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€2
™ "К€€€€€€€€€©
A__inference_dense_layer_call_and_return_conditional_losses_566814d3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€2
™ ")Ґ&
К
0€€€€€€€€€2
Ъ Б
&__inference_dense_layer_call_fn_566823W3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€2
™ "К€€€€€€€€€2 
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_566894э%&'АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€2
"К
states/1€€€€€€€€€2
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€2
EЪB
К
0/1/0€€€€€€€€€2
К
0/1/1€€€€€€€€€2
Ъ  
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_566926э%&'АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€2
"К
states/1€€€€€€€€€2
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€2
EЪB
К
0/1/0€€€€€€€€€2
К
0/1/1€€€€€€€€€2
Ъ Я
-__inference_lstm_cell_64_layer_call_fn_566943н%&'АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€2
"К
states/1€€€€€€€€€2
p 
™ "cҐ`
К
0€€€€€€€€€2
AЪ>
К
1/0€€€€€€€€€2
К
1/1€€€€€€€€€2Я
-__inference_lstm_cell_64_layer_call_fn_566960н%&'АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€2
"К
states/1€€€€€€€€€2
p
™ "cҐ`
К
0€€€€€€€€€2
AЪ>
К
1/0€€€€€€€€€2
К
1/1€€€€€€€€€2ѕ
@__inference_lstm_layer_call_and_return_conditional_losses_566286К%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€2
Ъ ѕ
@__inference_lstm_layer_call_and_return_conditional_losses_566437К%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€2
Ъ µ
@__inference_lstm_layer_call_and_return_conditional_losses_566588q%&'?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ ")Ґ&
К
0€€€€€€€€€2
Ъ µ
@__inference_lstm_layer_call_and_return_conditional_losses_566739q%&'?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ ")Ґ&
К
0€€€€€€€€€2
Ъ ¶
%__inference_lstm_layer_call_fn_566750}%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€2¶
%__inference_lstm_layer_call_fn_566761}%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€2Н
%__inference_lstm_layer_call_fn_566772d%&'?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "К€€€€€€€€€2Н
%__inference_lstm_layer_call_fn_566783d%&'?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "К€€€€€€€€€2њ
F__inference_sequential_layer_call_and_return_conditional_losses_565641u%&'?Ґ<
5Ґ2
(К%

lstm_input€€€€€€€€€
p 

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ њ
F__inference_sequential_layer_call_and_return_conditional_losses_565662u%&'?Ґ<
5Ґ2
(К%

lstm_input€€€€€€€€€
p

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ ї
F__inference_sequential_layer_call_and_return_conditional_losses_565893q%&';Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ ї
F__inference_sequential_layer_call_and_return_conditional_losses_566097q%&';Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Ч
+__inference_sequential_layer_call_fn_565349h%&'?Ґ<
5Ґ2
(К%

lstm_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ч
+__inference_sequential_layer_call_fn_565620h%&'?Ґ<
5Ґ2
(К%

lstm_input€€€€€€€€€
p

 
™ "К€€€€€€€€€У
+__inference_sequential_layer_call_fn_566116d%&';Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€У
+__inference_sequential_layer_call_fn_566135d%&';Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€∞
$__inference_signature_wrapper_565689З%&'EҐB
Ґ 
;™8
6

lstm_input(К%

lstm_input€€€€€€€€€"5™2
0
dense_1%К"
dense_1€€€€€€€€€