??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
: *
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
: *
dtype0
?
batch_normalization_61/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_61/gamma
?
0batch_normalization_61/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_61/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_61/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_61/beta
?
/batch_normalization_61/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_61/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_61/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_61/moving_mean
?
6batch_normalization_61/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_61/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_61/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_61/moving_variance
?
:batch_normalization_61/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_61/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_62/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_62/gamma
?
0batch_normalization_62/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_62/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_62/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_62/beta
?
/batch_normalization_62/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_62/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_62/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_62/moving_mean
?
6batch_normalization_62/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_62/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_62/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_62/moving_variance
?
:batch_normalization_62/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_62/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
:*
dtype0
?
batch_normalization_63/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_63/gamma
?
0batch_normalization_63/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_63/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_63/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_63/beta
?
/batch_normalization_63/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_63/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_63/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_63/moving_mean
?
6batch_normalization_63/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_63/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_63/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_63/moving_variance
?
:batch_normalization_63/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_63/moving_variance*
_output_shapes
:*
dtype0
{
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x@* 
shared_namedense_66/kernel
t
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes
:	?x@*
dtype0
r
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_66/bias
k
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
_output_shapes
:@*
dtype0
z
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_67/kernel
s
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes

:@ *
dtype0
r
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_67/bias
k
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
_output_shapes
: *
dtype0
z
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_68/kernel
s
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes

: *
dtype0
r
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_68/bias
k
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes
:*
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
?
Adam/conv2d_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_61/kernel/m
?
+Adam/conv2d_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_61/bias/m
{
)Adam/conv2d_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_61/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_61/gamma/m
?
7Adam/batch_normalization_61/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_61/gamma/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_61/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_61/beta/m
?
6Adam/batch_normalization_61/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_61/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_62/kernel/m
?
+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_62/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_62/gamma/m
?
7Adam/batch_normalization_62/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_62/gamma/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_62/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_62/beta/m
?
6Adam/batch_normalization_62/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_62/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_63/kernel/m
?
+Adam/conv2d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/m*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_63/bias/m
{
)Adam/conv2d_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_63/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_63/gamma/m
?
7Adam/batch_normalization_63/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_63/gamma/m*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_63/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_63/beta/m
?
6Adam/batch_normalization_63/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_63/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x@*'
shared_nameAdam/dense_66/kernel/m
?
*Adam/dense_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/m*
_output_shapes
:	?x@*
dtype0
?
Adam/dense_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_66/bias/m
y
(Adam/dense_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_67/kernel/m
?
*Adam/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_67/bias/m
y
(Adam/dense_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_68/kernel/m
?
*Adam/dense_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/m
y
(Adam/dense_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_61/kernel/v
?
+Adam/conv2d_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_61/bias/v
{
)Adam/conv2d_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_61/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_61/gamma/v
?
7Adam/batch_normalization_61/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_61/gamma/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_61/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_61/beta/v
?
6Adam/batch_normalization_61/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_61/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_62/kernel/v
?
+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_62/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_62/gamma/v
?
7Adam/batch_normalization_62/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_62/gamma/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_62/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_62/beta/v
?
6Adam/batch_normalization_62/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_62/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_63/kernel/v
?
+Adam/conv2d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_63/bias/v
{
)Adam/conv2d_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_63/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_63/gamma/v
?
7Adam/batch_normalization_63/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_63/gamma/v*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_63/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_63/beta/v
?
6Adam/batch_normalization_63/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_63/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x@*'
shared_nameAdam/dense_66/kernel/v
?
*Adam/dense_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/v*
_output_shapes
:	?x@*
dtype0
?
Adam/dense_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_66/bias/v
y
(Adam/dense_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_67/kernel/v
?
*Adam/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_67/bias/v
y
(Adam/dense_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_68/kernel/v
?
*Adam/dense_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/v
y
(Adam/dense_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?p
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?p
value?pB?p B?p
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
?
axis
	 gamma
!beta
"moving_mean
#moving_variance
$trainable_variables
%	variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
R
.trainable_variables
/	variables
0regularization_losses
1	keras_api
?
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7trainable_variables
8	variables
9regularization_losses
:	keras_api
R
;trainable_variables
<	variables
=regularization_losses
>	keras_api
h

?kernel
@bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
R
Etrainable_variables
F	variables
Gregularization_losses
H	keras_api
?
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
R
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
h

Vkernel
Wbias
Xtrainable_variables
Y	variables
Zregularization_losses
[	keras_api
h

\kernel
]bias
^trainable_variables
_	variables
`regularization_losses
a	keras_api
h

bkernel
cbias
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
?
hiter

ibeta_1

jbeta_2
	kdecay
llearning_ratem?m? m?!m?(m?)m?3m?4m??m?@m?Jm?Km?Vm?Wm?\m?]m?bm?cm?v?v? v?!v?(v?)v?3v?4v??v?@v?Jv?Kv?Vv?Wv?\v?]v?bv?cv?
?
0
1
 2
!3
(4
)5
36
47
?8
@9
J10
K11
V12
W13
\14
]15
b16
c17
?
0
1
 2
!3
"4
#5
(6
)7
38
49
510
611
?12
@13
J14
K15
L16
M17
V18
W19
\20
]21
b22
c23
 
?
trainable_variables

mlayers
nnon_trainable_variables
olayer_metrics
	variables
player_regularization_losses
regularization_losses
qmetrics
 
\Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
rmetrics

slayers
tlayer_metrics
	variables
ulayer_regularization_losses
regularization_losses
vnon_trainable_variables
 
 
 
?
trainable_variables
wmetrics

xlayers
ylayer_metrics
	variables
zlayer_regularization_losses
regularization_losses
{non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_61/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_61/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_61/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_61/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
"2
#3
 
?
$trainable_variables
|metrics

}layers
~layer_metrics
%	variables
layer_regularization_losses
&regularization_losses
?non_trainable_variables
\Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
?
*trainable_variables
?metrics
?layers
?layer_metrics
+	variables
 ?layer_regularization_losses
,regularization_losses
?non_trainable_variables
 
 
 
?
.trainable_variables
?metrics
?layers
?layer_metrics
/	variables
 ?layer_regularization_losses
0regularization_losses
?non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_62/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_62/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_62/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_62/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

30
41

30
41
52
63
 
?
7trainable_variables
?metrics
?layers
?layer_metrics
8	variables
 ?layer_regularization_losses
9regularization_losses
?non_trainable_variables
 
 
 
?
;trainable_variables
?metrics
?layers
?layer_metrics
<	variables
 ?layer_regularization_losses
=regularization_losses
?non_trainable_variables
\Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
?
Atrainable_variables
?metrics
?layers
?layer_metrics
B	variables
 ?layer_regularization_losses
Cregularization_losses
?non_trainable_variables
 
 
 
?
Etrainable_variables
?metrics
?layers
?layer_metrics
F	variables
 ?layer_regularization_losses
Gregularization_losses
?non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_63/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_63/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_63/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_63/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

J0
K1

J0
K1
L2
M3
 
?
Ntrainable_variables
?metrics
?layers
?layer_metrics
O	variables
 ?layer_regularization_losses
Pregularization_losses
?non_trainable_variables
 
 
 
?
Rtrainable_variables
?metrics
?layers
?layer_metrics
S	variables
 ?layer_regularization_losses
Tregularization_losses
?non_trainable_variables
[Y
VARIABLE_VALUEdense_66/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

V0
W1
 
?
Xtrainable_variables
?metrics
?layers
?layer_metrics
Y	variables
 ?layer_regularization_losses
Zregularization_losses
?non_trainable_variables
[Y
VARIABLE_VALUEdense_67/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

\0
]1

\0
]1
 
?
^trainable_variables
?metrics
?layers
?layer_metrics
_	variables
 ?layer_regularization_losses
`regularization_losses
?non_trainable_variables
[Y
VARIABLE_VALUEdense_68/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_68/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

b0
c1

b0
c1
 
?
dtrainable_variables
?metrics
?layers
?layer_metrics
e	variables
 ?layer_regularization_losses
fregularization_losses
?non_trainable_variables
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
f
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
*
"0
#1
52
63
L4
M5
 
 

?0
?1
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

"0
#1
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

50
61
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
 
 
 

L0
M1
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
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_61/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_61/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_61/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_62/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_62/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_63/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_63/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_61/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_61/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_61/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_62/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_62/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_63/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_63/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_61_inputPlaceholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_61_inputconv2d_61/kernelconv2d_61/biasbatch_normalization_61/gammabatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_varianceconv2d_62/kernelconv2d_62/biasbatch_normalization_62/gammabatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_varianceconv2d_63/kernelconv2d_63/biasbatch_normalization_63/gammabatch_normalization_63/beta"batch_normalization_63/moving_mean&batch_normalization_63/moving_variancedense_66/kerneldense_66/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_54044
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp0batch_normalization_61/gamma/Read/ReadVariableOp/batch_normalization_61/beta/Read/ReadVariableOp6batch_normalization_61/moving_mean/Read/ReadVariableOp:batch_normalization_61/moving_variance/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp0batch_normalization_62/gamma/Read/ReadVariableOp/batch_normalization_62/beta/Read/ReadVariableOp6batch_normalization_62/moving_mean/Read/ReadVariableOp:batch_normalization_62/moving_variance/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp0batch_normalization_63/gamma/Read/ReadVariableOp/batch_normalization_63/beta/Read/ReadVariableOp6batch_normalization_63/moving_mean/Read/ReadVariableOp:batch_normalization_63/moving_variance/Read/ReadVariableOp#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOp#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_61/kernel/m/Read/ReadVariableOp)Adam/conv2d_61/bias/m/Read/ReadVariableOp7Adam/batch_normalization_61/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_61/beta/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp7Adam/batch_normalization_62/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_62/beta/m/Read/ReadVariableOp+Adam/conv2d_63/kernel/m/Read/ReadVariableOp)Adam/conv2d_63/bias/m/Read/ReadVariableOp7Adam/batch_normalization_63/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_63/beta/m/Read/ReadVariableOp*Adam/dense_66/kernel/m/Read/ReadVariableOp(Adam/dense_66/bias/m/Read/ReadVariableOp*Adam/dense_67/kernel/m/Read/ReadVariableOp(Adam/dense_67/bias/m/Read/ReadVariableOp*Adam/dense_68/kernel/m/Read/ReadVariableOp(Adam/dense_68/bias/m/Read/ReadVariableOp+Adam/conv2d_61/kernel/v/Read/ReadVariableOp)Adam/conv2d_61/bias/v/Read/ReadVariableOp7Adam/batch_normalization_61/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_61/beta/v/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp7Adam/batch_normalization_62/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_62/beta/v/Read/ReadVariableOp+Adam/conv2d_63/kernel/v/Read/ReadVariableOp)Adam/conv2d_63/bias/v/Read/ReadVariableOp7Adam/batch_normalization_63/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_63/beta/v/Read/ReadVariableOp*Adam/dense_66/kernel/v/Read/ReadVariableOp(Adam/dense_66/bias/v/Read/ReadVariableOp*Adam/dense_67/kernel/v/Read/ReadVariableOp(Adam/dense_67/bias/v/Read/ReadVariableOp*Adam/dense_68/kernel/v/Read/ReadVariableOp(Adam/dense_68/bias/v/Read/ReadVariableOpConst*R
TinK
I2G	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_55123
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_61/kernelconv2d_61/biasbatch_normalization_61/gammabatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_varianceconv2d_62/kernelconv2d_62/biasbatch_normalization_62/gammabatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_varianceconv2d_63/kernelconv2d_63/biasbatch_normalization_63/gammabatch_normalization_63/beta"batch_normalization_63/moving_mean&batch_normalization_63/moving_variancedense_66/kerneldense_66/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_61/kernel/mAdam/conv2d_61/bias/m#Adam/batch_normalization_61/gamma/m"Adam/batch_normalization_61/beta/mAdam/conv2d_62/kernel/mAdam/conv2d_62/bias/m#Adam/batch_normalization_62/gamma/m"Adam/batch_normalization_62/beta/mAdam/conv2d_63/kernel/mAdam/conv2d_63/bias/m#Adam/batch_normalization_63/gamma/m"Adam/batch_normalization_63/beta/mAdam/dense_66/kernel/mAdam/dense_66/bias/mAdam/dense_67/kernel/mAdam/dense_67/bias/mAdam/dense_68/kernel/mAdam/dense_68/bias/mAdam/conv2d_61/kernel/vAdam/conv2d_61/bias/v#Adam/batch_normalization_61/gamma/v"Adam/batch_normalization_61/beta/vAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/v#Adam/batch_normalization_62/gamma/v"Adam/batch_normalization_62/beta/vAdam/conv2d_63/kernel/vAdam/conv2d_63/bias/v#Adam/batch_normalization_63/gamma/v"Adam/batch_normalization_63/beta/vAdam/dense_66/kernel/vAdam/dense_66/bias/vAdam/dense_67/kernel/vAdam/dense_67/bias/vAdam/dense_68/kernel/vAdam/dense_68/bias/v*Q
TinJ
H2F*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_55340??
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_53232

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_63_layer_call_fn_54822

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_532322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ӣ
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_54151

inputs,
(conv2d_61_conv2d_readvariableop_resource-
)conv2d_61_biasadd_readvariableop_resource2
.batch_normalization_61_readvariableop_resource4
0batch_normalization_61_readvariableop_1_resourceC
?batch_normalization_61_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_62_conv2d_readvariableop_resource-
)conv2d_62_biasadd_readvariableop_resource2
.batch_normalization_62_readvariableop_resource4
0batch_normalization_62_readvariableop_1_resourceC
?batch_normalization_62_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_63_conv2d_readvariableop_resource-
)conv2d_63_biasadd_readvariableop_resource2
.batch_normalization_63_readvariableop_resource4
0batch_normalization_63_readvariableop_1_resourceC
?batch_normalization_63_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource+
'dense_66_matmul_readvariableop_resource,
(dense_66_biasadd_readvariableop_resource+
'dense_67_matmul_readvariableop_resource,
(dense_67_biasadd_readvariableop_resource+
'dense_68_matmul_readvariableop_resource,
(dense_68_biasadd_readvariableop_resource
identity??%batch_normalization_61/AssignNewValue?'batch_normalization_61/AssignNewValue_1?6batch_normalization_61/FusedBatchNormV3/ReadVariableOp?8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_61/ReadVariableOp?'batch_normalization_61/ReadVariableOp_1?%batch_normalization_62/AssignNewValue?'batch_normalization_62/AssignNewValue_1?6batch_normalization_62/FusedBatchNormV3/ReadVariableOp?8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_62/ReadVariableOp?'batch_normalization_62/ReadVariableOp_1?%batch_normalization_63/AssignNewValue?'batch_normalization_63/AssignNewValue_1?6batch_normalization_63/FusedBatchNormV3/ReadVariableOp?8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_63/ReadVariableOp?'batch_normalization_63/ReadVariableOp_1? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2Dinputs'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_61/Relu?
max_pooling2d_61/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:?????????@@ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_61/MaxPool?
%batch_normalization_61/ReadVariableOpReadVariableOp.batch_normalization_61_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_61/ReadVariableOp?
'batch_normalization_61/ReadVariableOp_1ReadVariableOp0batch_normalization_61_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_61/ReadVariableOp_1?
6batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_61/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_61/MaxPool:output:0-batch_normalization_61/ReadVariableOp:value:0/batch_normalization_61/ReadVariableOp_1:value:0>batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@ : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_61/FusedBatchNormV3?
%batch_normalization_61/AssignNewValueAssignVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource4batch_normalization_61/FusedBatchNormV3:batch_mean:07^batch_normalization_61/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_61/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_61/AssignNewValue?
'batch_normalization_61/AssignNewValue_1AssignVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_61/FusedBatchNormV3:batch_variance:09^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_61/AssignNewValue_1?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2D+batch_normalization_61/FusedBatchNormV3:y:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_62/Relu?
max_pooling2d_62/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????@@@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_62/MaxPool?
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_62/ReadVariableOp?
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_62/ReadVariableOp_1?
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_62/MaxPool:output:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_62/FusedBatchNormV3?
%batch_normalization_62/AssignNewValueAssignVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource4batch_normalization_62/FusedBatchNormV3:batch_mean:07^batch_normalization_62/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_62/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_62/AssignNewValue?
'batch_normalization_62/AssignNewValue_1AssignVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_62/FusedBatchNormV3:batch_variance:09^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_62/AssignNewValue_1y
dropout_50/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_50/dropout/Const?
dropout_50/dropout/MulMul+batch_normalization_62/FusedBatchNormV3:y:0!dropout_50/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@@2
dropout_50/dropout/Mul?
dropout_50/dropout/ShapeShape+batch_normalization_62/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_50/dropout/Shape?
/dropout_50/dropout/random_uniform/RandomUniformRandomUniform!dropout_50/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@@*
dtype021
/dropout_50/dropout/random_uniform/RandomUniform?
!dropout_50/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_50/dropout/GreaterEqual/y?
dropout_50/dropout/GreaterEqualGreaterEqual8dropout_50/dropout/random_uniform/RandomUniform:output:0*dropout_50/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@@2!
dropout_50/dropout/GreaterEqual?
dropout_50/dropout/CastCast#dropout_50/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@@2
dropout_50/dropout/Cast?
dropout_50/dropout/Mul_1Muldropout_50/dropout/Mul:z:0dropout_50/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@@2
dropout_50/dropout/Mul_1?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2Ddropout_50/dropout/Mul_1:z:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????*
paddingVALID*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:???????????2
conv2d_63/Relu?
max_pooling2d_63/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_63/MaxPool?
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_63/ReadVariableOp?
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_63/ReadVariableOp_1?
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_63/MaxPool:output:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_63/FusedBatchNormV3?
%batch_normalization_63/AssignNewValueAssignVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource4batch_normalization_63/FusedBatchNormV3:batch_mean:07^batch_normalization_63/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_63/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_63/AssignNewValue?
'batch_normalization_63/AssignNewValue_1AssignVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_63/FusedBatchNormV3:batch_variance:09^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_63/AssignNewValue_1u
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????<  2
flatten_26/Const?
flatten_26/ReshapeReshape+batch_normalization_63/FusedBatchNormV3:y:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????x2
flatten_26/Reshape?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	?x@*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMulflatten_26/Reshape:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_66/BiasAdds
dense_66/ReluReludense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_66/Relu?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMuldense_66/Relu:activations:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_67/BiasAdds
dense_67/ReluReludense_67/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_67/Relu?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMuldense_67/Relu:activations:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/BiasAdd|
dense_68/SoftmaxSoftmaxdense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_68/Softmax?

IdentityIdentitydense_68/Softmax:softmax:0&^batch_normalization_61/AssignNewValue(^batch_normalization_61/AssignNewValue_17^batch_normalization_61/FusedBatchNormV3/ReadVariableOp9^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_61/ReadVariableOp(^batch_normalization_61/ReadVariableOp_1&^batch_normalization_62/AssignNewValue(^batch_normalization_62/AssignNewValue_17^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_1&^batch_normalization_63/AssignNewValue(^batch_normalization_63/AssignNewValue_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_1!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::2N
%batch_normalization_61/AssignNewValue%batch_normalization_61/AssignNewValue2R
'batch_normalization_61/AssignNewValue_1'batch_normalization_61/AssignNewValue_12p
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp6batch_normalization_61/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_18batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_61/ReadVariableOp%batch_normalization_61/ReadVariableOp2R
'batch_normalization_61/ReadVariableOp_1'batch_normalization_61/ReadVariableOp_12N
%batch_normalization_62/AssignNewValue%batch_normalization_62/AssignNewValue2R
'batch_normalization_62/AssignNewValue_1'batch_normalization_62/AssignNewValue_12p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12N
%batch_normalization_63/AssignNewValue%batch_normalization_63/AssignNewValue2R
'batch_normalization_63/AssignNewValue_1'batch_normalization_63/AssignNewValue_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_53133

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_26_layer_call_fn_54351

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_539302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_61_layer_call_fn_54422

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_529692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54714

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?|
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_54245

inputs,
(conv2d_61_conv2d_readvariableop_resource-
)conv2d_61_biasadd_readvariableop_resource2
.batch_normalization_61_readvariableop_resource4
0batch_normalization_61_readvariableop_1_resourceC
?batch_normalization_61_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_62_conv2d_readvariableop_resource-
)conv2d_62_biasadd_readvariableop_resource2
.batch_normalization_62_readvariableop_resource4
0batch_normalization_62_readvariableop_1_resourceC
?batch_normalization_62_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_63_conv2d_readvariableop_resource-
)conv2d_63_biasadd_readvariableop_resource2
.batch_normalization_63_readvariableop_resource4
0batch_normalization_63_readvariableop_1_resourceC
?batch_normalization_63_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource+
'dense_66_matmul_readvariableop_resource,
(dense_66_biasadd_readvariableop_resource+
'dense_67_matmul_readvariableop_resource,
(dense_67_biasadd_readvariableop_resource+
'dense_68_matmul_readvariableop_resource,
(dense_68_biasadd_readvariableop_resource
identity??6batch_normalization_61/FusedBatchNormV3/ReadVariableOp?8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_61/ReadVariableOp?'batch_normalization_61/ReadVariableOp_1?6batch_normalization_62/FusedBatchNormV3/ReadVariableOp?8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_62/ReadVariableOp?'batch_normalization_62/ReadVariableOp_1?6batch_normalization_63/FusedBatchNormV3/ReadVariableOp?8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_63/ReadVariableOp?'batch_normalization_63/ReadVariableOp_1? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2Dinputs'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_61/Relu?
max_pooling2d_61/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:?????????@@ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_61/MaxPool?
%batch_normalization_61/ReadVariableOpReadVariableOp.batch_normalization_61_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_61/ReadVariableOp?
'batch_normalization_61/ReadVariableOp_1ReadVariableOp0batch_normalization_61_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_61/ReadVariableOp_1?
6batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_61/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_61/MaxPool:output:0-batch_normalization_61/ReadVariableOp:value:0/batch_normalization_61/ReadVariableOp_1:value:0>batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@ : : : : :*
epsilon%o?:*
is_training( 2)
'batch_normalization_61/FusedBatchNormV3?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2D+batch_normalization_61/FusedBatchNormV3:y:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
conv2d_62/Relu?
max_pooling2d_62/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????@@@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_62/MaxPool?
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_62/ReadVariableOp?
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_62/ReadVariableOp_1?
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_62/MaxPool:output:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_62/FusedBatchNormV3?
dropout_50/IdentityIdentity+batch_normalization_62/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@@2
dropout_50/Identity?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2Ddropout_50/Identity:output:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????*
paddingVALID*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:???????????2
conv2d_63/Relu?
max_pooling2d_63/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_63/MaxPool?
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_63/ReadVariableOp?
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_63/ReadVariableOp_1?
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_63/MaxPool:output:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2)
'batch_normalization_63/FusedBatchNormV3u
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????<  2
flatten_26/Const?
flatten_26/ReshapeReshape+batch_normalization_63/FusedBatchNormV3:y:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????x2
flatten_26/Reshape?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	?x@*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMulflatten_26/Reshape:output:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_66/BiasAdds
dense_66/ReluReludense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_66/Relu?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMuldense_66/Relu:activations:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_67/BiasAdds
dense_67/ReluReludense_67/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_67/Relu?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMuldense_67/Relu:activations:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/BiasAdd|
dense_68/SoftmaxSoftmaxdense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_68/Softmax?
IdentityIdentitydense_68/Softmax:softmax:07^batch_normalization_61/FusedBatchNormV3/ReadVariableOp9^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_61/ReadVariableOp(^batch_normalization_61/ReadVariableOp_17^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_1!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::2p
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp6batch_normalization_61/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_18batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_61/ReadVariableOp%batch_normalization_61/ReadVariableOp2R
'batch_normalization_61/ReadVariableOp_1'batch_normalization_61/ReadVariableOp_12p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?F
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_53930

inputs
conv2d_61_53867
conv2d_61_53869 
batch_normalization_61_53873 
batch_normalization_61_53875 
batch_normalization_61_53877 
batch_normalization_61_53879
conv2d_62_53882
conv2d_62_53884 
batch_normalization_62_53888 
batch_normalization_62_53890 
batch_normalization_62_53892 
batch_normalization_62_53894
conv2d_63_53898
conv2d_63_53900 
batch_normalization_63_53904 
batch_normalization_63_53906 
batch_normalization_63_53908 
batch_normalization_63_53910
dense_66_53914
dense_66_53916
dense_67_53919
dense_67_53921
dense_68_53924
dense_68_53926
identity??.batch_normalization_61/StatefulPartitionedCall?.batch_normalization_62/StatefulPartitionedCall?.batch_normalization_63/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_61_53867conv2d_61_53869*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_532582#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_529012"
 max_pooling2d_61/PartitionedCall?
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_61/PartitionedCall:output:0batch_normalization_61_53873batch_normalization_61_53875batch_normalization_61_53877batch_normalization_61_53879*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_5331220
.batch_normalization_61/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0conv2d_62_53882conv2d_62_53884*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_533592#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_530172"
 max_pooling2d_62/PartitionedCall?
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0batch_normalization_62_53888batch_normalization_62_53890batch_normalization_62_53892batch_normalization_62_53894*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_5341320
.batch_normalization_62/StatefulPartitionedCall?
dropout_50/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_50_layer_call_and_return_conditional_losses_534662
dropout_50/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_50/PartitionedCall:output:0conv2d_63_53898conv2d_63_53900*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_534902#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_531332"
 max_pooling2d_63/PartitionedCall?
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0batch_normalization_63_53904batch_normalization_63_53906batch_normalization_63_53908batch_normalization_63_53910*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_5354420
.batch_normalization_63/StatefulPartitionedCall?
flatten_26/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_26_layer_call_and_return_conditional_losses_535862
flatten_26/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_66_53914dense_66_53916*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_66_layer_call_and_return_conditional_losses_536052"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_53919dense_67_53921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_67_layer_call_and_return_conditional_losses_536322"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_53924dense_68_53926*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_68_layer_call_and_return_conditional_losses_536592"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?	
?
C__inference_dense_68_layer_call_and_return_conditional_losses_54884

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54391

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54603

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_53526

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_50_layer_call_fn_54674

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_50_layer_call_and_return_conditional_losses_534662
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?	
?
C__inference_dense_66_layer_call_and_return_conditional_losses_53605

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????x
 
_user_specified_nameinputs
?
~
)__inference_conv2d_63_layer_call_fn_54694

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_534902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?	
?
C__inference_dense_66_layer_call_and_return_conditional_losses_54844

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????x
 
_user_specified_nameinputs
?	
?
C__inference_dense_68_layer_call_and_return_conditional_losses_53659

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_61_layer_call_fn_52907

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_529012
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_67_layer_call_and_return_conditional_losses_54864

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_53258

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_53000

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54778

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_50_layer_call_and_return_conditional_losses_53466

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@@@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@@@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
a
E__inference_flatten_26_layer_call_and_return_conditional_losses_53586

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????<  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????x2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????x2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54473

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@ : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_61_layer_call_fn_54486

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_532942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@ ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54409

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
C__inference_dense_67_layer_call_and_return_conditional_losses_53632

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_63_layer_call_fn_53139

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_531332
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54539

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_63_layer_call_fn_54809

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_532012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_61_layer_call_fn_54499

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_533122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@ ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_53017

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_62_layer_call_fn_54570

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_530852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?G
?	
H__inference_sequential_26_layer_call_and_return_conditional_losses_53676
conv2d_61_input
conv2d_61_53269
conv2d_61_53271 
batch_normalization_61_53339 
batch_normalization_61_53341 
batch_normalization_61_53343 
batch_normalization_61_53345
conv2d_62_53370
conv2d_62_53372 
batch_normalization_62_53440 
batch_normalization_62_53442 
batch_normalization_62_53444 
batch_normalization_62_53446
conv2d_63_53501
conv2d_63_53503 
batch_normalization_63_53571 
batch_normalization_63_53573 
batch_normalization_63_53575 
batch_normalization_63_53577
dense_66_53616
dense_66_53618
dense_67_53643
dense_67_53645
dense_68_53670
dense_68_53672
identity??.batch_normalization_61/StatefulPartitionedCall?.batch_normalization_62/StatefulPartitionedCall?.batch_normalization_63/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?"dropout_50/StatefulPartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCallconv2d_61_inputconv2d_61_53269conv2d_61_53271*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_532582#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_529012"
 max_pooling2d_61/PartitionedCall?
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_61/PartitionedCall:output:0batch_normalization_61_53339batch_normalization_61_53341batch_normalization_61_53343batch_normalization_61_53345*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_5329420
.batch_normalization_61/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0conv2d_62_53370conv2d_62_53372*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_533592#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_530172"
 max_pooling2d_62/PartitionedCall?
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0batch_normalization_62_53440batch_normalization_62_53442batch_normalization_62_53444batch_normalization_62_53446*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_5339520
.batch_normalization_62/StatefulPartitionedCall?
"dropout_50/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_50_layer_call_and_return_conditional_losses_534612$
"dropout_50/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_50/StatefulPartitionedCall:output:0conv2d_63_53501conv2d_63_53503*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_534902#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_531332"
 max_pooling2d_63/PartitionedCall?
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0batch_normalization_63_53571batch_normalization_63_53573batch_normalization_63_53575batch_normalization_63_53577*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_5352620
.batch_normalization_63/StatefulPartitionedCall?
flatten_26/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_26_layer_call_and_return_conditional_losses_535862
flatten_26/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_66_53616dense_66_53618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_66_layer_call_and_return_conditional_losses_536052"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_53643dense_67_53645*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_67_layer_call_and_return_conditional_losses_536322"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_53670dense_68_53672*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_68_layer_call_and_return_conditional_losses_536592"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall#^dropout_50/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2H
"dropout_50/StatefulPartitionedCall"dropout_50/StatefulPartitionedCall:` \
/
_output_shapes
:?????????@@
)
_user_specified_nameconv2d_61_input
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_53395

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
F
*__inference_flatten_26_layer_call_fn_54833

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_26_layer_call_and_return_conditional_losses_535862
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????x2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_53544

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_53312

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@ : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54557

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
-__inference_sequential_26_layer_call_fn_54298

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_538112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54732

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_54044
conv2d_61_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_61_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_528952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????@@
)
_user_specified_nameconv2d_61_input
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54455

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@ : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
-__inference_sequential_26_layer_call_fn_53862
conv2d_61_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_61_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_538112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????@@
)
_user_specified_nameconv2d_61_input
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54621

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_53085

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
c
E__inference_dropout_50_layer_call_and_return_conditional_losses_54664

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@@@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@@@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?

?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_53490

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_52969

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
d
E__inference_dropout_50_layer_call_and_return_conditional_losses_54659

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@@@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?

?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_54510

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_52901

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_53294

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@ : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_63_layer_call_fn_54758

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_535442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_62_layer_call_fn_53023

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_530172
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?F
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_53742
conv2d_61_input
conv2d_61_53679
conv2d_61_53681 
batch_normalization_61_53685 
batch_normalization_61_53687 
batch_normalization_61_53689 
batch_normalization_61_53691
conv2d_62_53694
conv2d_62_53696 
batch_normalization_62_53700 
batch_normalization_62_53702 
batch_normalization_62_53704 
batch_normalization_62_53706
conv2d_63_53710
conv2d_63_53712 
batch_normalization_63_53716 
batch_normalization_63_53718 
batch_normalization_63_53720 
batch_normalization_63_53722
dense_66_53726
dense_66_53728
dense_67_53731
dense_67_53733
dense_68_53736
dense_68_53738
identity??.batch_normalization_61/StatefulPartitionedCall?.batch_normalization_62/StatefulPartitionedCall?.batch_normalization_63/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCallconv2d_61_inputconv2d_61_53679conv2d_61_53681*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_532582#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_529012"
 max_pooling2d_61/PartitionedCall?
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_61/PartitionedCall:output:0batch_normalization_61_53685batch_normalization_61_53687batch_normalization_61_53689batch_normalization_61_53691*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_5331220
.batch_normalization_61/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0conv2d_62_53694conv2d_62_53696*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_533592#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_530172"
 max_pooling2d_62/PartitionedCall?
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0batch_normalization_62_53700batch_normalization_62_53702batch_normalization_62_53704batch_normalization_62_53706*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_5341320
.batch_normalization_62/StatefulPartitionedCall?
dropout_50/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_50_layer_call_and_return_conditional_losses_534662
dropout_50/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_50/PartitionedCall:output:0conv2d_63_53710conv2d_63_53712*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_534902#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_531332"
 max_pooling2d_63/PartitionedCall?
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0batch_normalization_63_53716batch_normalization_63_53718batch_normalization_63_53720batch_normalization_63_53722*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_5354420
.batch_normalization_63/StatefulPartitionedCall?
flatten_26/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_26_layer_call_and_return_conditional_losses_535862
flatten_26/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_66_53726dense_66_53728*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_66_layer_call_and_return_conditional_losses_536052"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_53731dense_67_53733*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_67_layer_call_and_return_conditional_losses_536322"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_53736dense_68_53738*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_68_layer_call_and_return_conditional_losses_536592"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:` \
/
_output_shapes
:?????????@@
)
_user_specified_nameconv2d_61_input
?
?
6__inference_batch_normalization_62_layer_call_fn_54647

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_534132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
c
*__inference_dropout_50_layer_call_fn_54669

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_50_layer_call_and_return_conditional_losses_534612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
??
?
__inference__traced_save_55123
file_prefix/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop;
7savev2_batch_normalization_61_gamma_read_readvariableop:
6savev2_batch_normalization_61_beta_read_readvariableopA
=savev2_batch_normalization_61_moving_mean_read_readvariableopE
Asavev2_batch_normalization_61_moving_variance_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop;
7savev2_batch_normalization_62_gamma_read_readvariableop:
6savev2_batch_normalization_62_beta_read_readvariableopA
=savev2_batch_normalization_62_moving_mean_read_readvariableopE
Asavev2_batch_normalization_62_moving_variance_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop;
7savev2_batch_normalization_63_gamma_read_readvariableop:
6savev2_batch_normalization_63_beta_read_readvariableopA
=savev2_batch_normalization_63_moving_mean_read_readvariableopE
Asavev2_batch_normalization_63_moving_variance_read_readvariableop.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_61_kernel_m_read_readvariableop4
0savev2_adam_conv2d_61_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_61_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_61_beta_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_62_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_62_beta_m_read_readvariableop6
2savev2_adam_conv2d_63_kernel_m_read_readvariableop4
0savev2_adam_conv2d_63_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_63_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_63_beta_m_read_readvariableop5
1savev2_adam_dense_66_kernel_m_read_readvariableop3
/savev2_adam_dense_66_bias_m_read_readvariableop5
1savev2_adam_dense_67_kernel_m_read_readvariableop3
/savev2_adam_dense_67_bias_m_read_readvariableop5
1savev2_adam_dense_68_kernel_m_read_readvariableop3
/savev2_adam_dense_68_bias_m_read_readvariableop6
2savev2_adam_conv2d_61_kernel_v_read_readvariableop4
0savev2_adam_conv2d_61_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_61_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_61_beta_v_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_62_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_62_beta_v_read_readvariableop6
2savev2_adam_conv2d_63_kernel_v_read_readvariableop4
0savev2_adam_conv2d_63_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_63_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_63_beta_v_read_readvariableop5
1savev2_adam_dense_66_kernel_v_read_readvariableop3
/savev2_adam_dense_66_bias_v_read_readvariableop5
1savev2_adam_dense_67_kernel_v_read_readvariableop3
/savev2_adam_dense_67_bias_v_read_readvariableop5
1savev2_adam_dense_68_kernel_v_read_readvariableop3
/savev2_adam_dense_68_bias_v_read_readvariableop
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
ShardedFilename?&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?%
value?%B?%FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?
value?B?FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop7savev2_batch_normalization_61_gamma_read_readvariableop6savev2_batch_normalization_61_beta_read_readvariableop=savev2_batch_normalization_61_moving_mean_read_readvariableopAsavev2_batch_normalization_61_moving_variance_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop7savev2_batch_normalization_62_gamma_read_readvariableop6savev2_batch_normalization_62_beta_read_readvariableop=savev2_batch_normalization_62_moving_mean_read_readvariableopAsavev2_batch_normalization_62_moving_variance_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop7savev2_batch_normalization_63_gamma_read_readvariableop6savev2_batch_normalization_63_beta_read_readvariableop=savev2_batch_normalization_63_moving_mean_read_readvariableopAsavev2_batch_normalization_63_moving_variance_read_readvariableop*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_61_kernel_m_read_readvariableop0savev2_adam_conv2d_61_bias_m_read_readvariableop>savev2_adam_batch_normalization_61_gamma_m_read_readvariableop=savev2_adam_batch_normalization_61_beta_m_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop>savev2_adam_batch_normalization_62_gamma_m_read_readvariableop=savev2_adam_batch_normalization_62_beta_m_read_readvariableop2savev2_adam_conv2d_63_kernel_m_read_readvariableop0savev2_adam_conv2d_63_bias_m_read_readvariableop>savev2_adam_batch_normalization_63_gamma_m_read_readvariableop=savev2_adam_batch_normalization_63_beta_m_read_readvariableop1savev2_adam_dense_66_kernel_m_read_readvariableop/savev2_adam_dense_66_bias_m_read_readvariableop1savev2_adam_dense_67_kernel_m_read_readvariableop/savev2_adam_dense_67_bias_m_read_readvariableop1savev2_adam_dense_68_kernel_m_read_readvariableop/savev2_adam_dense_68_bias_m_read_readvariableop2savev2_adam_conv2d_61_kernel_v_read_readvariableop0savev2_adam_conv2d_61_bias_v_read_readvariableop>savev2_adam_batch_normalization_61_gamma_v_read_readvariableop=savev2_adam_batch_normalization_61_beta_v_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop>savev2_adam_batch_normalization_62_gamma_v_read_readvariableop=savev2_adam_batch_normalization_62_beta_v_read_readvariableop2savev2_adam_conv2d_63_kernel_v_read_readvariableop0savev2_adam_conv2d_63_bias_v_read_readvariableop>savev2_adam_batch_normalization_63_gamma_v_read_readvariableop=savev2_adam_batch_normalization_63_beta_v_read_readvariableop1savev2_adam_dense_66_kernel_v_read_readvariableop/savev2_adam_dense_66_bias_v_read_readvariableop1savev2_adam_dense_67_kernel_v_read_readvariableop/savev2_adam_dense_67_bias_v_read_readvariableop1savev2_adam_dense_68_kernel_v_read_readvariableop/savev2_adam_dense_68_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *T
dtypesJ
H2F	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : @:@:@:@:@:@:@::::::	?x@:@:@ : : :: : : : : : : : : : : : : : @:@:@:@:@::::	?x@:@:@ : : :: : : : : @:@:@:@:@::::	?x@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?x@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :,"(
&
_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
: @: '

_output_shapes
:@: (

_output_shapes
:@: )

_output_shapes
:@:,*(
&
_output_shapes
:@: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::%.!

_output_shapes
:	?x@: /

_output_shapes
:@:$0 

_output_shapes

:@ : 1

_output_shapes
: :$2 

_output_shapes

: : 3

_output_shapes
::,4(
&
_output_shapes
: : 5

_output_shapes
: : 6

_output_shapes
: : 7

_output_shapes
: :,8(
&
_output_shapes
: @: 9

_output_shapes
:@: :

_output_shapes
:@: ;

_output_shapes
:@:,<(
&
_output_shapes
:@: =

_output_shapes
:: >

_output_shapes
:: ?

_output_shapes
::%@!

_output_shapes
:	?x@: A

_output_shapes
:@:$B 

_output_shapes

:@ : C

_output_shapes
: :$D 

_output_shapes

: : E

_output_shapes
::F

_output_shapes
: 
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_53201

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_62_layer_call_fn_54634

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_533952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
}
(__inference_dense_68_layer_call_fn_54893

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_68_layer_call_and_return_conditional_losses_536592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
~
)__inference_conv2d_61_layer_call_fn_54371

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_532582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
-__inference_sequential_26_layer_call_fn_53981
conv2d_61_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_61_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_539302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????@@
)
_user_specified_nameconv2d_61_input
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_53413

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_63_layer_call_fn_54745

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_535262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
ե
?&
!__inference__traced_restore_55340
file_prefix%
!assignvariableop_conv2d_61_kernel%
!assignvariableop_1_conv2d_61_bias3
/assignvariableop_2_batch_normalization_61_gamma2
.assignvariableop_3_batch_normalization_61_beta9
5assignvariableop_4_batch_normalization_61_moving_mean=
9assignvariableop_5_batch_normalization_61_moving_variance'
#assignvariableop_6_conv2d_62_kernel%
!assignvariableop_7_conv2d_62_bias3
/assignvariableop_8_batch_normalization_62_gamma2
.assignvariableop_9_batch_normalization_62_beta:
6assignvariableop_10_batch_normalization_62_moving_mean>
:assignvariableop_11_batch_normalization_62_moving_variance(
$assignvariableop_12_conv2d_63_kernel&
"assignvariableop_13_conv2d_63_bias4
0assignvariableop_14_batch_normalization_63_gamma3
/assignvariableop_15_batch_normalization_63_beta:
6assignvariableop_16_batch_normalization_63_moving_mean>
:assignvariableop_17_batch_normalization_63_moving_variance'
#assignvariableop_18_dense_66_kernel%
!assignvariableop_19_dense_66_bias'
#assignvariableop_20_dense_67_kernel%
!assignvariableop_21_dense_67_bias'
#assignvariableop_22_dense_68_kernel%
!assignvariableop_23_dense_68_bias!
assignvariableop_24_adam_iter#
assignvariableop_25_adam_beta_1#
assignvariableop_26_adam_beta_2"
assignvariableop_27_adam_decay*
&assignvariableop_28_adam_learning_rate
assignvariableop_29_total
assignvariableop_30_count
assignvariableop_31_total_1
assignvariableop_32_count_1/
+assignvariableop_33_adam_conv2d_61_kernel_m-
)assignvariableop_34_adam_conv2d_61_bias_m;
7assignvariableop_35_adam_batch_normalization_61_gamma_m:
6assignvariableop_36_adam_batch_normalization_61_beta_m/
+assignvariableop_37_adam_conv2d_62_kernel_m-
)assignvariableop_38_adam_conv2d_62_bias_m;
7assignvariableop_39_adam_batch_normalization_62_gamma_m:
6assignvariableop_40_adam_batch_normalization_62_beta_m/
+assignvariableop_41_adam_conv2d_63_kernel_m-
)assignvariableop_42_adam_conv2d_63_bias_m;
7assignvariableop_43_adam_batch_normalization_63_gamma_m:
6assignvariableop_44_adam_batch_normalization_63_beta_m.
*assignvariableop_45_adam_dense_66_kernel_m,
(assignvariableop_46_adam_dense_66_bias_m.
*assignvariableop_47_adam_dense_67_kernel_m,
(assignvariableop_48_adam_dense_67_bias_m.
*assignvariableop_49_adam_dense_68_kernel_m,
(assignvariableop_50_adam_dense_68_bias_m/
+assignvariableop_51_adam_conv2d_61_kernel_v-
)assignvariableop_52_adam_conv2d_61_bias_v;
7assignvariableop_53_adam_batch_normalization_61_gamma_v:
6assignvariableop_54_adam_batch_normalization_61_beta_v/
+assignvariableop_55_adam_conv2d_62_kernel_v-
)assignvariableop_56_adam_conv2d_62_bias_v;
7assignvariableop_57_adam_batch_normalization_62_gamma_v:
6assignvariableop_58_adam_batch_normalization_62_beta_v/
+assignvariableop_59_adam_conv2d_63_kernel_v-
)assignvariableop_60_adam_conv2d_63_bias_v;
7assignvariableop_61_adam_batch_normalization_63_gamma_v:
6assignvariableop_62_adam_batch_normalization_63_beta_v.
*assignvariableop_63_adam_dense_66_kernel_v,
(assignvariableop_64_adam_dense_66_bias_v.
*assignvariableop_65_adam_dense_67_kernel_v,
(assignvariableop_66_adam_dense_67_bias_v.
*assignvariableop_67_adam_dense_68_kernel_v,
(assignvariableop_68_adam_dense_68_bias_v
identity_70??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?%
value?%B?%FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?
value?B?FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_61_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_61_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_61_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_61_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_61_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_61_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_62_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_62_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_62_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_62_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_62_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_62_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_63_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_63_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_63_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_63_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_63_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_63_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_66_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_66_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_67_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_67_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_68_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_68_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_beta_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_61_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_61_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adam_batch_normalization_61_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_batch_normalization_61_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_62_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_62_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp7assignvariableop_39_adam_batch_normalization_62_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_batch_normalization_62_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_63_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_63_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_batch_normalization_63_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_63_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_66_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_66_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_67_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_67_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_68_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_68_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_61_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_61_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_batch_normalization_61_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_batch_normalization_61_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_62_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_62_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_batch_normalization_62_gamma_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_batch_normalization_62_beta_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_63_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_63_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_batch_normalization_63_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_63_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_dense_66_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_dense_66_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_67_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_67_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_68_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_68_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_689
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_69Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_69?
Identity_70IdentityIdentity_69:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_70"#
identity_70Identity_70:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
~
)__inference_conv2d_62_layer_call_fn_54519

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_533592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?G
?	
H__inference_sequential_26_layer_call_and_return_conditional_losses_53811

inputs
conv2d_61_53748
conv2d_61_53750 
batch_normalization_61_53754 
batch_normalization_61_53756 
batch_normalization_61_53758 
batch_normalization_61_53760
conv2d_62_53763
conv2d_62_53765 
batch_normalization_62_53769 
batch_normalization_62_53771 
batch_normalization_62_53773 
batch_normalization_62_53775
conv2d_63_53779
conv2d_63_53781 
batch_normalization_63_53785 
batch_normalization_63_53787 
batch_normalization_63_53789 
batch_normalization_63_53791
dense_66_53795
dense_66_53797
dense_67_53800
dense_67_53802
dense_68_53805
dense_68_53807
identity??.batch_normalization_61/StatefulPartitionedCall?.batch_normalization_62/StatefulPartitionedCall?.batch_normalization_63/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall? dense_66/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?"dropout_50/StatefulPartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_61_53748conv2d_61_53750*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_532582#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_61/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_529012"
 max_pooling2d_61/PartitionedCall?
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_61/PartitionedCall:output:0batch_normalization_61_53754batch_normalization_61_53756batch_normalization_61_53758batch_normalization_61_53760*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_5329420
.batch_normalization_61/StatefulPartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0conv2d_62_53763conv2d_62_53765*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_533592#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_62/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_530172"
 max_pooling2d_62/PartitionedCall?
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_62/PartitionedCall:output:0batch_normalization_62_53769batch_normalization_62_53771batch_normalization_62_53773batch_normalization_62_53775*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_5339520
.batch_normalization_62/StatefulPartitionedCall?
"dropout_50/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_50_layer_call_and_return_conditional_losses_534612$
"dropout_50/StatefulPartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_50/StatefulPartitionedCall:output:0conv2d_63_53779conv2d_63_53781*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_534902#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_63/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_531332"
 max_pooling2d_63/PartitionedCall?
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_63/PartitionedCall:output:0batch_normalization_63_53785batch_normalization_63_53787batch_normalization_63_53789batch_normalization_63_53791*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_5352620
.batch_normalization_63/StatefulPartitionedCall?
flatten_26/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_26_layer_call_and_return_conditional_losses_535862
flatten_26/PartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_66_53795dense_66_53797*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_66_layer_call_and_return_conditional_losses_536052"
 dense_66/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_53800dense_67_53802*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_67_layer_call_and_return_conditional_losses_536322"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_53805dense_68_53807*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_68_layer_call_and_return_conditional_losses_536592"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_66/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall#^dropout_50/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2H
"dropout_50/StatefulPartitionedCall"dropout_50/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_62_layer_call_fn_54583

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_531162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_54685

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
a
E__inference_flatten_26_layer_call_and_return_conditional_losses_54828

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????<  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????x2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????x2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_52895
conv2d_61_input:
6sequential_26_conv2d_61_conv2d_readvariableop_resource;
7sequential_26_conv2d_61_biasadd_readvariableop_resource@
<sequential_26_batch_normalization_61_readvariableop_resourceB
>sequential_26_batch_normalization_61_readvariableop_1_resourceQ
Msequential_26_batch_normalization_61_fusedbatchnormv3_readvariableop_resourceS
Osequential_26_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:
6sequential_26_conv2d_62_conv2d_readvariableop_resource;
7sequential_26_conv2d_62_biasadd_readvariableop_resource@
<sequential_26_batch_normalization_62_readvariableop_resourceB
>sequential_26_batch_normalization_62_readvariableop_1_resourceQ
Msequential_26_batch_normalization_62_fusedbatchnormv3_readvariableop_resourceS
Osequential_26_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:
6sequential_26_conv2d_63_conv2d_readvariableop_resource;
7sequential_26_conv2d_63_biasadd_readvariableop_resource@
<sequential_26_batch_normalization_63_readvariableop_resourceB
>sequential_26_batch_normalization_63_readvariableop_1_resourceQ
Msequential_26_batch_normalization_63_fusedbatchnormv3_readvariableop_resourceS
Osequential_26_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource9
5sequential_26_dense_66_matmul_readvariableop_resource:
6sequential_26_dense_66_biasadd_readvariableop_resource9
5sequential_26_dense_67_matmul_readvariableop_resource:
6sequential_26_dense_67_biasadd_readvariableop_resource9
5sequential_26_dense_68_matmul_readvariableop_resource:
6sequential_26_dense_68_biasadd_readvariableop_resource
identity??Dsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp?Fsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1?3sequential_26/batch_normalization_61/ReadVariableOp?5sequential_26/batch_normalization_61/ReadVariableOp_1?Dsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp?Fsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1?3sequential_26/batch_normalization_62/ReadVariableOp?5sequential_26/batch_normalization_62/ReadVariableOp_1?Dsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp?Fsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1?3sequential_26/batch_normalization_63/ReadVariableOp?5sequential_26/batch_normalization_63/ReadVariableOp_1?.sequential_26/conv2d_61/BiasAdd/ReadVariableOp?-sequential_26/conv2d_61/Conv2D/ReadVariableOp?.sequential_26/conv2d_62/BiasAdd/ReadVariableOp?-sequential_26/conv2d_62/Conv2D/ReadVariableOp?.sequential_26/conv2d_63/BiasAdd/ReadVariableOp?-sequential_26/conv2d_63/Conv2D/ReadVariableOp?-sequential_26/dense_66/BiasAdd/ReadVariableOp?,sequential_26/dense_66/MatMul/ReadVariableOp?-sequential_26/dense_67/BiasAdd/ReadVariableOp?,sequential_26/dense_67/MatMul/ReadVariableOp?-sequential_26/dense_68/BiasAdd/ReadVariableOp?,sequential_26/dense_68/MatMul/ReadVariableOp?
-sequential_26/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_26/conv2d_61/Conv2D/ReadVariableOp?
sequential_26/conv2d_61/Conv2DConv2Dconv2d_61_input5sequential_26/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2 
sequential_26/conv2d_61/Conv2D?
.sequential_26/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_26/conv2d_61/BiasAdd/ReadVariableOp?
sequential_26/conv2d_61/BiasAddBiasAdd'sequential_26/conv2d_61/Conv2D:output:06sequential_26/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2!
sequential_26/conv2d_61/BiasAdd?
sequential_26/conv2d_61/ReluRelu(sequential_26/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
sequential_26/conv2d_61/Relu?
&sequential_26/max_pooling2d_61/MaxPoolMaxPool*sequential_26/conv2d_61/Relu:activations:0*/
_output_shapes
:?????????@@ *
ksize
*
paddingSAME*
strides
2(
&sequential_26/max_pooling2d_61/MaxPool?
3sequential_26/batch_normalization_61/ReadVariableOpReadVariableOp<sequential_26_batch_normalization_61_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_26/batch_normalization_61/ReadVariableOp?
5sequential_26/batch_normalization_61/ReadVariableOp_1ReadVariableOp>sequential_26_batch_normalization_61_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_26/batch_normalization_61/ReadVariableOp_1?
Dsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_26_batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp?
Fsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_26_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1?
5sequential_26/batch_normalization_61/FusedBatchNormV3FusedBatchNormV3/sequential_26/max_pooling2d_61/MaxPool:output:0;sequential_26/batch_normalization_61/ReadVariableOp:value:0=sequential_26/batch_normalization_61/ReadVariableOp_1:value:0Lsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@ : : : : :*
epsilon%o?:*
is_training( 27
5sequential_26/batch_normalization_61/FusedBatchNormV3?
-sequential_26/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_26/conv2d_62/Conv2D/ReadVariableOp?
sequential_26/conv2d_62/Conv2DConv2D9sequential_26/batch_normalization_61/FusedBatchNormV3:y:05sequential_26/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2 
sequential_26/conv2d_62/Conv2D?
.sequential_26/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_26/conv2d_62/BiasAdd/ReadVariableOp?
sequential_26/conv2d_62/BiasAddBiasAdd'sequential_26/conv2d_62/Conv2D:output:06sequential_26/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2!
sequential_26/conv2d_62/BiasAdd?
sequential_26/conv2d_62/ReluRelu(sequential_26/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
sequential_26/conv2d_62/Relu?
&sequential_26/max_pooling2d_62/MaxPoolMaxPool*sequential_26/conv2d_62/Relu:activations:0*/
_output_shapes
:?????????@@@*
ksize
*
paddingSAME*
strides
2(
&sequential_26/max_pooling2d_62/MaxPool?
3sequential_26/batch_normalization_62/ReadVariableOpReadVariableOp<sequential_26_batch_normalization_62_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_26/batch_normalization_62/ReadVariableOp?
5sequential_26/batch_normalization_62/ReadVariableOp_1ReadVariableOp>sequential_26_batch_normalization_62_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_26/batch_normalization_62/ReadVariableOp_1?
Dsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_26_batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp?
Fsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_26_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1?
5sequential_26/batch_normalization_62/FusedBatchNormV3FusedBatchNormV3/sequential_26/max_pooling2d_62/MaxPool:output:0;sequential_26/batch_normalization_62/ReadVariableOp:value:0=sequential_26/batch_normalization_62/ReadVariableOp_1:value:0Lsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_26/batch_normalization_62/FusedBatchNormV3?
!sequential_26/dropout_50/IdentityIdentity9sequential_26/batch_normalization_62/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@@2#
!sequential_26/dropout_50/Identity?
-sequential_26/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_26/conv2d_63/Conv2D/ReadVariableOp?
sequential_26/conv2d_63/Conv2DConv2D*sequential_26/dropout_50/Identity:output:05sequential_26/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????*
paddingVALID*
strides
2 
sequential_26/conv2d_63/Conv2D?
.sequential_26/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_26/conv2d_63/BiasAdd/ReadVariableOp?
sequential_26/conv2d_63/BiasAddBiasAdd'sequential_26/conv2d_63/Conv2D:output:06sequential_26/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:???????????2!
sequential_26/conv2d_63/BiasAdd?
sequential_26/conv2d_63/ReluRelu(sequential_26/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:???????????2
sequential_26/conv2d_63/Relu?
&sequential_26/max_pooling2d_63/MaxPoolMaxPool*sequential_26/conv2d_63/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2(
&sequential_26/max_pooling2d_63/MaxPool?
3sequential_26/batch_normalization_63/ReadVariableOpReadVariableOp<sequential_26_batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential_26/batch_normalization_63/ReadVariableOp?
5sequential_26/batch_normalization_63/ReadVariableOp_1ReadVariableOp>sequential_26_batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype027
5sequential_26/batch_normalization_63/ReadVariableOp_1?
Dsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_26_batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp?
Fsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_26_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02H
Fsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1?
5sequential_26/batch_normalization_63/FusedBatchNormV3FusedBatchNormV3/sequential_26/max_pooling2d_63/MaxPool:output:0;sequential_26/batch_normalization_63/ReadVariableOp:value:0=sequential_26/batch_normalization_63/ReadVariableOp_1:value:0Lsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 27
5sequential_26/batch_normalization_63/FusedBatchNormV3?
sequential_26/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????<  2 
sequential_26/flatten_26/Const?
 sequential_26/flatten_26/ReshapeReshape9sequential_26/batch_normalization_63/FusedBatchNormV3:y:0'sequential_26/flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????x2"
 sequential_26/flatten_26/Reshape?
,sequential_26/dense_66/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_66_matmul_readvariableop_resource*
_output_shapes
:	?x@*
dtype02.
,sequential_26/dense_66/MatMul/ReadVariableOp?
sequential_26/dense_66/MatMulMatMul)sequential_26/flatten_26/Reshape:output:04sequential_26/dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_26/dense_66/MatMul?
-sequential_26/dense_66/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_66_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_26/dense_66/BiasAdd/ReadVariableOp?
sequential_26/dense_66/BiasAddBiasAdd'sequential_26/dense_66/MatMul:product:05sequential_26/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_26/dense_66/BiasAdd?
sequential_26/dense_66/ReluRelu'sequential_26/dense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_26/dense_66/Relu?
,sequential_26/dense_67/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_67_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02.
,sequential_26/dense_67/MatMul/ReadVariableOp?
sequential_26/dense_67/MatMulMatMul)sequential_26/dense_66/Relu:activations:04sequential_26/dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_26/dense_67/MatMul?
-sequential_26/dense_67/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_67_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_26/dense_67/BiasAdd/ReadVariableOp?
sequential_26/dense_67/BiasAddBiasAdd'sequential_26/dense_67/MatMul:product:05sequential_26/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_26/dense_67/BiasAdd?
sequential_26/dense_67/ReluRelu'sequential_26/dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_26/dense_67/Relu?
,sequential_26/dense_68/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_68_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_26/dense_68/MatMul/ReadVariableOp?
sequential_26/dense_68/MatMulMatMul)sequential_26/dense_67/Relu:activations:04sequential_26/dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_26/dense_68/MatMul?
-sequential_26/dense_68/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_68/BiasAdd/ReadVariableOp?
sequential_26/dense_68/BiasAddBiasAdd'sequential_26/dense_68/MatMul:product:05sequential_26/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_26/dense_68/BiasAdd?
sequential_26/dense_68/SoftmaxSoftmax'sequential_26/dense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_26/dense_68/Softmax?
IdentityIdentity(sequential_26/dense_68/Softmax:softmax:0E^sequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOpG^sequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_14^sequential_26/batch_normalization_61/ReadVariableOp6^sequential_26/batch_normalization_61/ReadVariableOp_1E^sequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOpG^sequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_14^sequential_26/batch_normalization_62/ReadVariableOp6^sequential_26/batch_normalization_62/ReadVariableOp_1E^sequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOpG^sequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_14^sequential_26/batch_normalization_63/ReadVariableOp6^sequential_26/batch_normalization_63/ReadVariableOp_1/^sequential_26/conv2d_61/BiasAdd/ReadVariableOp.^sequential_26/conv2d_61/Conv2D/ReadVariableOp/^sequential_26/conv2d_62/BiasAdd/ReadVariableOp.^sequential_26/conv2d_62/Conv2D/ReadVariableOp/^sequential_26/conv2d_63/BiasAdd/ReadVariableOp.^sequential_26/conv2d_63/Conv2D/ReadVariableOp.^sequential_26/dense_66/BiasAdd/ReadVariableOp-^sequential_26/dense_66/MatMul/ReadVariableOp.^sequential_26/dense_67/BiasAdd/ReadVariableOp-^sequential_26/dense_67/MatMul/ReadVariableOp.^sequential_26/dense_68/BiasAdd/ReadVariableOp-^sequential_26/dense_68/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes}
{:?????????@@::::::::::::::::::::::::2?
Dsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOpDsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp2?
Fsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1Fsequential_26/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12j
3sequential_26/batch_normalization_61/ReadVariableOp3sequential_26/batch_normalization_61/ReadVariableOp2n
5sequential_26/batch_normalization_61/ReadVariableOp_15sequential_26/batch_normalization_61/ReadVariableOp_12?
Dsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOpDsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp2?
Fsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1Fsequential_26/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12j
3sequential_26/batch_normalization_62/ReadVariableOp3sequential_26/batch_normalization_62/ReadVariableOp2n
5sequential_26/batch_normalization_62/ReadVariableOp_15sequential_26/batch_normalization_62/ReadVariableOp_12?
Dsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOpDsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp2?
Fsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1Fsequential_26/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12j
3sequential_26/batch_normalization_63/ReadVariableOp3sequential_26/batch_normalization_63/ReadVariableOp2n
5sequential_26/batch_normalization_63/ReadVariableOp_15sequential_26/batch_normalization_63/ReadVariableOp_12`
.sequential_26/conv2d_61/BiasAdd/ReadVariableOp.sequential_26/conv2d_61/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_61/Conv2D/ReadVariableOp-sequential_26/conv2d_61/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_62/BiasAdd/ReadVariableOp.sequential_26/conv2d_62/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_62/Conv2D/ReadVariableOp-sequential_26/conv2d_62/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_63/BiasAdd/ReadVariableOp.sequential_26/conv2d_63/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_63/Conv2D/ReadVariableOp-sequential_26/conv2d_63/Conv2D/ReadVariableOp2^
-sequential_26/dense_66/BiasAdd/ReadVariableOp-sequential_26/dense_66/BiasAdd/ReadVariableOp2\
,sequential_26/dense_66/MatMul/ReadVariableOp,sequential_26/dense_66/MatMul/ReadVariableOp2^
-sequential_26/dense_67/BiasAdd/ReadVariableOp-sequential_26/dense_67/BiasAdd/ReadVariableOp2\
,sequential_26/dense_67/MatMul/ReadVariableOp,sequential_26/dense_67/MatMul/ReadVariableOp2^
-sequential_26/dense_68/BiasAdd/ReadVariableOp-sequential_26/dense_68/BiasAdd/ReadVariableOp2\
,sequential_26/dense_68/MatMul/ReadVariableOp,sequential_26/dense_68/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????@@
)
_user_specified_nameconv2d_61_input
?
?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_53116

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
E__inference_dropout_50_layer_call_and_return_conditional_losses_53461

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@@@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@@:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_61_layer_call_fn_54435

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_530002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_53359

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54796

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
}
(__inference_dense_67_layer_call_fn_54873

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_67_layer_call_and_return_conditional_losses_536322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
}
(__inference_dense_66_layer_call_fn_54853

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_66_layer_call_and_return_conditional_losses_536052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????x::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????x
 
_user_specified_nameinputs
?

?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_54362

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_61_input@
!serving_default_conv2d_61_input:0?????????@@<
dense_680
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?q
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?l
_tf_keras_sequential?l{"class_name": "Sequential", "name": "sequential_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_61_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_61", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_61", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_62", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_50", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_63", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_26", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_66", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_61_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_61", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_61", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_62", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_50", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_63", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_26", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_66", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_61", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_61", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
axis
	 gamma
!beta
"moving_mean
#moving_variance
$trainable_variables
%	variables
&regularization_losses
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_61", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_61", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 32]}}
?	

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 32]}}
?
.trainable_variables
/	variables
0regularization_losses
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_62", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [1, 1]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7trainable_variables
8	variables
9regularization_losses
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_62", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_62", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
?
;trainable_variables
<	variables
=regularization_losses
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_50", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_50", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

?kernel
@bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
?
Etrainable_variables
F	variables
Gregularization_losses
H	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_63", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_63", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_63", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 16]}}
?
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_26", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

Vkernel
Wbias
Xtrainable_variables
Y	variables
Zregularization_losses
[	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_66", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_66", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15376}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15376]}}
?

\kernel
]bias
^trainable_variables
_	variables
`regularization_losses
a	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_67", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

bkernel
cbias
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_68", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
hiter

ibeta_1

jbeta_2
	kdecay
llearning_ratem?m? m?!m?(m?)m?3m?4m??m?@m?Jm?Km?Vm?Wm?\m?]m?bm?cm?v?v? v?!v?(v?)v?3v?4v??v?@v?Jv?Kv?Vv?Wv?\v?]v?bv?cv?"
	optimizer
?
0
1
 2
!3
(4
)5
36
47
?8
@9
J10
K11
V12
W13
\14
]15
b16
c17"
trackable_list_wrapper
?
0
1
 2
!3
"4
#5
(6
)7
38
49
510
611
?12
@13
J14
K15
L16
M17
V18
W19
\20
]21
b22
c23"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables

mlayers
nnon_trainable_variables
olayer_metrics
	variables
player_regularization_losses
regularization_losses
qmetrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_61/kernel
: 2conv2d_61/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
rmetrics

slayers
tlayer_metrics
	variables
ulayer_regularization_losses
regularization_losses
vnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
wmetrics

xlayers
ylayer_metrics
	variables
zlayer_regularization_losses
regularization_losses
{non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_61/gamma
):' 2batch_normalization_61/beta
2:0  (2"batch_normalization_61/moving_mean
6:4  (2&batch_normalization_61/moving_variance
.
 0
!1"
trackable_list_wrapper
<
 0
!1
"2
#3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
$trainable_variables
|metrics

}layers
~layer_metrics
%	variables
layer_regularization_losses
&regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_62/kernel
:@2conv2d_62/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*trainable_variables
?metrics
?layers
?layer_metrics
+	variables
 ?layer_regularization_losses
,regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
.trainable_variables
?metrics
?layers
?layer_metrics
/	variables
 ?layer_regularization_losses
0regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_62/gamma
):'@2batch_normalization_62/beta
2:0@ (2"batch_normalization_62/moving_mean
6:4@ (2&batch_normalization_62/moving_variance
.
30
41"
trackable_list_wrapper
<
30
41
52
63"
trackable_list_wrapper
 "
trackable_list_wrapper
?
7trainable_variables
?metrics
?layers
?layer_metrics
8	variables
 ?layer_regularization_losses
9regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
;trainable_variables
?metrics
?layers
?layer_metrics
<	variables
 ?layer_regularization_losses
=regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@2conv2d_63/kernel
:2conv2d_63/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Atrainable_variables
?metrics
?layers
?layer_metrics
B	variables
 ?layer_regularization_losses
Cregularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Etrainable_variables
?metrics
?layers
?layer_metrics
F	variables
 ?layer_regularization_losses
Gregularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_63/gamma
):'2batch_normalization_63/beta
2:0 (2"batch_normalization_63/moving_mean
6:4 (2&batch_normalization_63/moving_variance
.
J0
K1"
trackable_list_wrapper
<
J0
K1
L2
M3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ntrainable_variables
?metrics
?layers
?layer_metrics
O	variables
 ?layer_regularization_losses
Pregularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rtrainable_variables
?metrics
?layers
?layer_metrics
S	variables
 ?layer_regularization_losses
Tregularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?x@2dense_66/kernel
:@2dense_66/bias
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xtrainable_variables
?metrics
?layers
?layer_metrics
Y	variables
 ?layer_regularization_losses
Zregularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_67/kernel
: 2dense_67/bias
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^trainable_variables
?metrics
?layers
?layer_metrics
_	variables
 ?layer_regularization_losses
`regularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_68/kernel
:2dense_68/bias
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
dtrainable_variables
?metrics
?layers
?layer_metrics
e	variables
 ?layer_regularization_losses
fregularization_losses
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
J
"0
#1
52
63
L4
M5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
 "
trackable_list_wrapper
.
"0
#1"
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
 "
trackable_list_wrapper
.
50
61"
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
.
L0
M1"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:- 2Adam/conv2d_61/kernel/m
!: 2Adam/conv2d_61/bias/m
/:- 2#Adam/batch_normalization_61/gamma/m
.:, 2"Adam/batch_normalization_61/beta/m
/:- @2Adam/conv2d_62/kernel/m
!:@2Adam/conv2d_62/bias/m
/:-@2#Adam/batch_normalization_62/gamma/m
.:,@2"Adam/batch_normalization_62/beta/m
/:-@2Adam/conv2d_63/kernel/m
!:2Adam/conv2d_63/bias/m
/:-2#Adam/batch_normalization_63/gamma/m
.:,2"Adam/batch_normalization_63/beta/m
':%	?x@2Adam/dense_66/kernel/m
 :@2Adam/dense_66/bias/m
&:$@ 2Adam/dense_67/kernel/m
 : 2Adam/dense_67/bias/m
&:$ 2Adam/dense_68/kernel/m
 :2Adam/dense_68/bias/m
/:- 2Adam/conv2d_61/kernel/v
!: 2Adam/conv2d_61/bias/v
/:- 2#Adam/batch_normalization_61/gamma/v
.:, 2"Adam/batch_normalization_61/beta/v
/:- @2Adam/conv2d_62/kernel/v
!:@2Adam/conv2d_62/bias/v
/:-@2#Adam/batch_normalization_62/gamma/v
.:,@2"Adam/batch_normalization_62/beta/v
/:-@2Adam/conv2d_63/kernel/v
!:2Adam/conv2d_63/bias/v
/:-2#Adam/batch_normalization_63/gamma/v
.:,2"Adam/batch_normalization_63/beta/v
':%	?x@2Adam/dense_66/kernel/v
 :@2Adam/dense_66/bias/v
&:$@ 2Adam/dense_67/kernel/v
 : 2Adam/dense_67/bias/v
&:$ 2Adam/dense_68/kernel/v
 :2Adam/dense_68/bias/v
?2?
H__inference_sequential_26_layer_call_and_return_conditional_losses_53676
H__inference_sequential_26_layer_call_and_return_conditional_losses_53742
H__inference_sequential_26_layer_call_and_return_conditional_losses_54151
H__inference_sequential_26_layer_call_and_return_conditional_losses_54245?
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
?2?
 __inference__wrapped_model_52895?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *6?3
1?.
conv2d_61_input?????????@@
?2?
-__inference_sequential_26_layer_call_fn_54351
-__inference_sequential_26_layer_call_fn_53981
-__inference_sequential_26_layer_call_fn_53862
-__inference_sequential_26_layer_call_fn_54298?
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
?2?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_54362?
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
)__inference_conv2d_61_layer_call_fn_54371?
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
?2?
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_52901?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_61_layer_call_fn_52907?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54455
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54473
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54391
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54409?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
6__inference_batch_normalization_61_layer_call_fn_54422
6__inference_batch_normalization_61_layer_call_fn_54499
6__inference_batch_normalization_61_layer_call_fn_54486
6__inference_batch_normalization_61_layer_call_fn_54435?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_54510?
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
)__inference_conv2d_62_layer_call_fn_54519?
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
?2?
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_53017?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_62_layer_call_fn_53023?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54539
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54557
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54621
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54603?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
6__inference_batch_normalization_62_layer_call_fn_54634
6__inference_batch_normalization_62_layer_call_fn_54583
6__inference_batch_normalization_62_layer_call_fn_54647
6__inference_batch_normalization_62_layer_call_fn_54570?
???
FullArgSpec)
args!?
jself
jinputs

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
E__inference_dropout_50_layer_call_and_return_conditional_losses_54664
E__inference_dropout_50_layer_call_and_return_conditional_losses_54659?
???
FullArgSpec)
args!?
jself
jinputs

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
*__inference_dropout_50_layer_call_fn_54669
*__inference_dropout_50_layer_call_fn_54674?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_54685?
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
)__inference_conv2d_63_layer_call_fn_54694?
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
?2?
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_53133?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_63_layer_call_fn_53139?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54778
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54796
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54732
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54714?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
6__inference_batch_normalization_63_layer_call_fn_54822
6__inference_batch_normalization_63_layer_call_fn_54745
6__inference_batch_normalization_63_layer_call_fn_54758
6__inference_batch_normalization_63_layer_call_fn_54809?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
E__inference_flatten_26_layer_call_and_return_conditional_losses_54828?
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
*__inference_flatten_26_layer_call_fn_54833?
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
C__inference_dense_66_layer_call_and_return_conditional_losses_54844?
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
(__inference_dense_66_layer_call_fn_54853?
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
C__inference_dense_67_layer_call_and_return_conditional_losses_54864?
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
(__inference_dense_67_layer_call_fn_54873?
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
C__inference_dense_68_layer_call_and_return_conditional_losses_54884?
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
(__inference_dense_68_layer_call_fn_54893?
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
#__inference_signature_wrapper_54044conv2d_61_input"?
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
 ?
 __inference__wrapped_model_52895? !"#()3456?@JKLMVW\]bc@?=
6?3
1?.
conv2d_61_input?????????@@
? "3?0
.
dense_68"?
dense_68??????????
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54391? !"#M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54409? !"#M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54455r !"#;?8
1?.
(?%
inputs?????????@@ 
p
? "-?*
#? 
0?????????@@ 
? ?
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_54473r !"#;?8
1?.
(?%
inputs?????????@@ 
p 
? "-?*
#? 
0?????????@@ 
? ?
6__inference_batch_normalization_61_layer_call_fn_54422? !"#M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
6__inference_batch_normalization_61_layer_call_fn_54435? !"#M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
6__inference_batch_normalization_61_layer_call_fn_54486e !"#;?8
1?.
(?%
inputs?????????@@ 
p
? " ??????????@@ ?
6__inference_batch_normalization_61_layer_call_fn_54499e !"#;?8
1?.
(?%
inputs?????????@@ 
p 
? " ??????????@@ ?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54539?3456M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54557?3456M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54603r3456;?8
1?.
(?%
inputs?????????@@@
p
? "-?*
#? 
0?????????@@@
? ?
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_54621r3456;?8
1?.
(?%
inputs?????????@@@
p 
? "-?*
#? 
0?????????@@@
? ?
6__inference_batch_normalization_62_layer_call_fn_54570?3456M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
6__inference_batch_normalization_62_layer_call_fn_54583?3456M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
6__inference_batch_normalization_62_layer_call_fn_54634e3456;?8
1?.
(?%
inputs?????????@@@
p
? " ??????????@@@?
6__inference_batch_normalization_62_layer_call_fn_54647e3456;?8
1?.
(?%
inputs?????????@@@
p 
? " ??????????@@@?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54714rJKLM;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54732rJKLM;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54778?JKLMM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_54796?JKLMM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
6__inference_batch_normalization_63_layer_call_fn_54745eJKLM;?8
1?.
(?%
inputs?????????
p
? " ???????????
6__inference_batch_normalization_63_layer_call_fn_54758eJKLM;?8
1?.
(?%
inputs?????????
p 
? " ???????????
6__inference_batch_normalization_63_layer_call_fn_54809?JKLMM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
6__inference_batch_normalization_63_layer_call_fn_54822?JKLMM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
D__inference_conv2d_61_layer_call_and_return_conditional_losses_54362l7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@ 
? ?
)__inference_conv2d_61_layer_call_fn_54371_7?4
-?*
(?%
inputs?????????@@
? " ??????????@@ ?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_54510l()7?4
-?*
(?%
inputs?????????@@ 
? "-?*
#? 
0?????????@@@
? ?
)__inference_conv2d_62_layer_call_fn_54519_()7?4
-?*
(?%
inputs?????????@@ 
? " ??????????@@@?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_54685l?@7?4
-?*
(?%
inputs?????????@@@
? "-?*
#? 
0???????????
? ?
)__inference_conv2d_63_layer_call_fn_54694_?@7?4
-?*
(?%
inputs?????????@@@
? " ?????????????
C__inference_dense_66_layer_call_and_return_conditional_losses_54844]VW0?-
&?#
!?
inputs??????????x
? "%?"
?
0?????????@
? |
(__inference_dense_66_layer_call_fn_54853PVW0?-
&?#
!?
inputs??????????x
? "??????????@?
C__inference_dense_67_layer_call_and_return_conditional_losses_54864\\]/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? {
(__inference_dense_67_layer_call_fn_54873O\]/?,
%?"
 ?
inputs?????????@
? "?????????? ?
C__inference_dense_68_layer_call_and_return_conditional_losses_54884\bc/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_dense_68_layer_call_fn_54893Obc/?,
%?"
 ?
inputs????????? 
? "???????????
E__inference_dropout_50_layer_call_and_return_conditional_losses_54659l;?8
1?.
(?%
inputs?????????@@@
p
? "-?*
#? 
0?????????@@@
? ?
E__inference_dropout_50_layer_call_and_return_conditional_losses_54664l;?8
1?.
(?%
inputs?????????@@@
p 
? "-?*
#? 
0?????????@@@
? ?
*__inference_dropout_50_layer_call_fn_54669_;?8
1?.
(?%
inputs?????????@@@
p
? " ??????????@@@?
*__inference_dropout_50_layer_call_fn_54674_;?8
1?.
(?%
inputs?????????@@@
p 
? " ??????????@@@?
E__inference_flatten_26_layer_call_and_return_conditional_losses_54828a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????x
? ?
*__inference_flatten_26_layer_call_fn_54833T7?4
-?*
(?%
inputs?????????
? "???????????x?
K__inference_max_pooling2d_61_layer_call_and_return_conditional_losses_52901?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_61_layer_call_fn_52907?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_62_layer_call_and_return_conditional_losses_53017?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_62_layer_call_fn_53023?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_63_layer_call_and_return_conditional_losses_53133?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_63_layer_call_fn_53139?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_26_layer_call_and_return_conditional_losses_53676? !"#()3456?@JKLMVW\]bcH?E
>?;
1?.
conv2d_61_input?????????@@
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_26_layer_call_and_return_conditional_losses_53742? !"#()3456?@JKLMVW\]bcH?E
>?;
1?.
conv2d_61_input?????????@@
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_26_layer_call_and_return_conditional_losses_54151? !"#()3456?@JKLMVW\]bc??<
5?2
(?%
inputs?????????@@
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_26_layer_call_and_return_conditional_losses_54245? !"#()3456?@JKLMVW\]bc??<
5?2
(?%
inputs?????????@@
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_26_layer_call_fn_53862~ !"#()3456?@JKLMVW\]bcH?E
>?;
1?.
conv2d_61_input?????????@@
p

 
? "???????????
-__inference_sequential_26_layer_call_fn_53981~ !"#()3456?@JKLMVW\]bcH?E
>?;
1?.
conv2d_61_input?????????@@
p 

 
? "???????????
-__inference_sequential_26_layer_call_fn_54298u !"#()3456?@JKLMVW\]bc??<
5?2
(?%
inputs?????????@@
p

 
? "???????????
-__inference_sequential_26_layer_call_fn_54351u !"#()3456?@JKLMVW\]bc??<
5?2
(?%
inputs?????????@@
p 

 
? "???????????
#__inference_signature_wrapper_54044? !"#()3456?@JKLMVW\]bcS?P
? 
I?F
D
conv2d_61_input1?.
conv2d_61_input?????????@@"3?0
.
dense_68"?
dense_68?????????