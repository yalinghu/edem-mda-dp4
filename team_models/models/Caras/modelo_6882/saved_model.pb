ЕЫ,
╨ж
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
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
;
Elu
features"T
activations"T"
Ttype:
2
·
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
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
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
В
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
╛
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718Ж░%
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
Г
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@А*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_5/kernel
}
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_5/bias
l
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes	
:А*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
АHА*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
Ш
 module_wrapper/batchnorm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" module_wrapper/batchnorm_1/gamma
С
4module_wrapper/batchnorm_1/gamma/Read/ReadVariableOpReadVariableOp module_wrapper/batchnorm_1/gamma*
_output_shapes
:@*
dtype0
Ц
module_wrapper/batchnorm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!module_wrapper/batchnorm_1/beta
П
3module_wrapper/batchnorm_1/beta/Read/ReadVariableOpReadVariableOpmodule_wrapper/batchnorm_1/beta*
_output_shapes
:@*
dtype0
д
&module_wrapper/batchnorm_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&module_wrapper/batchnorm_1/moving_mean
Э
:module_wrapper/batchnorm_1/moving_mean/Read/ReadVariableOpReadVariableOp&module_wrapper/batchnorm_1/moving_mean*
_output_shapes
:@*
dtype0
м
*module_wrapper/batchnorm_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*module_wrapper/batchnorm_1/moving_variance
е
>module_wrapper/batchnorm_1/moving_variance/Read/ReadVariableOpReadVariableOp*module_wrapper/batchnorm_1/moving_variance*
_output_shapes
:@*
dtype0
Ь
"module_wrapper_1/batchnorm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"module_wrapper_1/batchnorm_2/gamma
Х
6module_wrapper_1/batchnorm_2/gamma/Read/ReadVariableOpReadVariableOp"module_wrapper_1/batchnorm_2/gamma*
_output_shapes
:@*
dtype0
Ъ
!module_wrapper_1/batchnorm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!module_wrapper_1/batchnorm_2/beta
У
5module_wrapper_1/batchnorm_2/beta/Read/ReadVariableOpReadVariableOp!module_wrapper_1/batchnorm_2/beta*
_output_shapes
:@*
dtype0
и
(module_wrapper_1/batchnorm_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(module_wrapper_1/batchnorm_2/moving_mean
б
<module_wrapper_1/batchnorm_2/moving_mean/Read/ReadVariableOpReadVariableOp(module_wrapper_1/batchnorm_2/moving_mean*
_output_shapes
:@*
dtype0
░
,module_wrapper_1/batchnorm_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,module_wrapper_1/batchnorm_2/moving_variance
й
@module_wrapper_1/batchnorm_2/moving_variance/Read/ReadVariableOpReadVariableOp,module_wrapper_1/batchnorm_2/moving_variance*
_output_shapes
:@*
dtype0
Э
"module_wrapper_3/batchnorm_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"module_wrapper_3/batchnorm_3/gamma
Ц
6module_wrapper_3/batchnorm_3/gamma/Read/ReadVariableOpReadVariableOp"module_wrapper_3/batchnorm_3/gamma*
_output_shapes	
:А*
dtype0
Ы
!module_wrapper_3/batchnorm_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!module_wrapper_3/batchnorm_3/beta
Ф
5module_wrapper_3/batchnorm_3/beta/Read/ReadVariableOpReadVariableOp!module_wrapper_3/batchnorm_3/beta*
_output_shapes	
:А*
dtype0
й
(module_wrapper_3/batchnorm_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(module_wrapper_3/batchnorm_3/moving_mean
в
<module_wrapper_3/batchnorm_3/moving_mean/Read/ReadVariableOpReadVariableOp(module_wrapper_3/batchnorm_3/moving_mean*
_output_shapes	
:А*
dtype0
▒
,module_wrapper_3/batchnorm_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,module_wrapper_3/batchnorm_3/moving_variance
к
@module_wrapper_3/batchnorm_3/moving_variance/Read/ReadVariableOpReadVariableOp,module_wrapper_3/batchnorm_3/moving_variance*
_output_shapes	
:А*
dtype0
Э
"module_wrapper_4/batchnorm_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"module_wrapper_4/batchnorm_4/gamma
Ц
6module_wrapper_4/batchnorm_4/gamma/Read/ReadVariableOpReadVariableOp"module_wrapper_4/batchnorm_4/gamma*
_output_shapes	
:А*
dtype0
Ы
!module_wrapper_4/batchnorm_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!module_wrapper_4/batchnorm_4/beta
Ф
5module_wrapper_4/batchnorm_4/beta/Read/ReadVariableOpReadVariableOp!module_wrapper_4/batchnorm_4/beta*
_output_shapes	
:А*
dtype0
й
(module_wrapper_4/batchnorm_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(module_wrapper_4/batchnorm_4/moving_mean
в
<module_wrapper_4/batchnorm_4/moving_mean/Read/ReadVariableOpReadVariableOp(module_wrapper_4/batchnorm_4/moving_mean*
_output_shapes	
:А*
dtype0
▒
,module_wrapper_4/batchnorm_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,module_wrapper_4/batchnorm_4/moving_variance
к
@module_wrapper_4/batchnorm_4/moving_variance/Read/ReadVariableOpReadVariableOp,module_wrapper_4/batchnorm_4/moving_variance*
_output_shapes	
:А*
dtype0
Э
"module_wrapper_6/batchnorm_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"module_wrapper_6/batchnorm_5/gamma
Ц
6module_wrapper_6/batchnorm_5/gamma/Read/ReadVariableOpReadVariableOp"module_wrapper_6/batchnorm_5/gamma*
_output_shapes	
:А*
dtype0
Ы
!module_wrapper_6/batchnorm_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!module_wrapper_6/batchnorm_5/beta
Ф
5module_wrapper_6/batchnorm_5/beta/Read/ReadVariableOpReadVariableOp!module_wrapper_6/batchnorm_5/beta*
_output_shapes	
:А*
dtype0
й
(module_wrapper_6/batchnorm_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(module_wrapper_6/batchnorm_5/moving_mean
в
<module_wrapper_6/batchnorm_5/moving_mean/Read/ReadVariableOpReadVariableOp(module_wrapper_6/batchnorm_5/moving_mean*
_output_shapes	
:А*
dtype0
▒
,module_wrapper_6/batchnorm_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,module_wrapper_6/batchnorm_5/moving_variance
к
@module_wrapper_6/batchnorm_5/moving_variance/Read/ReadVariableOpReadVariableOp,module_wrapper_6/batchnorm_5/moving_variance*
_output_shapes	
:А*
dtype0
Э
"module_wrapper_7/batchnorm_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"module_wrapper_7/batchnorm_6/gamma
Ц
6module_wrapper_7/batchnorm_6/gamma/Read/ReadVariableOpReadVariableOp"module_wrapper_7/batchnorm_6/gamma*
_output_shapes	
:А*
dtype0
Ы
!module_wrapper_7/batchnorm_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!module_wrapper_7/batchnorm_6/beta
Ф
5module_wrapper_7/batchnorm_6/beta/Read/ReadVariableOpReadVariableOp!module_wrapper_7/batchnorm_6/beta*
_output_shapes	
:А*
dtype0
й
(module_wrapper_7/batchnorm_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(module_wrapper_7/batchnorm_6/moving_mean
в
<module_wrapper_7/batchnorm_6/moving_mean/Read/ReadVariableOpReadVariableOp(module_wrapper_7/batchnorm_6/moving_mean*
_output_shapes	
:А*
dtype0
▒
,module_wrapper_7/batchnorm_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,module_wrapper_7/batchnorm_6/moving_variance
к
@module_wrapper_7/batchnorm_6/moving_variance/Read/ReadVariableOpReadVariableOp,module_wrapper_7/batchnorm_6/moving_variance*
_output_shapes	
:А*
dtype0
Э
"module_wrapper_9/batchnorm_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"module_wrapper_9/batchnorm_7/gamma
Ц
6module_wrapper_9/batchnorm_7/gamma/Read/ReadVariableOpReadVariableOp"module_wrapper_9/batchnorm_7/gamma*
_output_shapes	
:А*
dtype0
Ы
!module_wrapper_9/batchnorm_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!module_wrapper_9/batchnorm_7/beta
Ф
5module_wrapper_9/batchnorm_7/beta/Read/ReadVariableOpReadVariableOp!module_wrapper_9/batchnorm_7/beta*
_output_shapes	
:А*
dtype0
й
(module_wrapper_9/batchnorm_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(module_wrapper_9/batchnorm_7/moving_mean
в
<module_wrapper_9/batchnorm_7/moving_mean/Read/ReadVariableOpReadVariableOp(module_wrapper_9/batchnorm_7/moving_mean*
_output_shapes	
:А*
dtype0
▒
,module_wrapper_9/batchnorm_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,module_wrapper_9/batchnorm_7/moving_variance
к
@module_wrapper_9/batchnorm_7/moving_variance/Read/ReadVariableOpReadVariableOp,module_wrapper_9/batchnorm_7/moving_variance*
_output_shapes	
:А*
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
М
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/m
Е
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:@*
dtype0
Р
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_1/kernel/m
Й
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:@@*
dtype0
А
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
С
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2d_2/kernel/m
К
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*'
_output_shapes
:@А*
dtype0
Б
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:А*
dtype0
Т
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/conv2d_3/kernel/m
Л
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*(
_output_shapes
:АА*
dtype0
Б
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:А*
dtype0
Т
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/conv2d_4/kernel/m
Л
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*(
_output_shapes
:АА*
dtype0
Б
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_4/bias/m
z
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes	
:А*
dtype0
Т
Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/conv2d_5/kernel/m
Л
*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*(
_output_shapes
:АА*
dtype0
Б
Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_5/bias/m
z
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes	
:А*
dtype0
Д
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
АHА*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_1/kernel/m
А
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	А*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
ж
'Adam/module_wrapper/batchnorm_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/module_wrapper/batchnorm_1/gamma/m
Я
;Adam/module_wrapper/batchnorm_1/gamma/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper/batchnorm_1/gamma/m*
_output_shapes
:@*
dtype0
д
&Adam/module_wrapper/batchnorm_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/module_wrapper/batchnorm_1/beta/m
Э
:Adam/module_wrapper/batchnorm_1/beta/m/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper/batchnorm_1/beta/m*
_output_shapes
:@*
dtype0
к
)Adam/module_wrapper_1/batchnorm_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/module_wrapper_1/batchnorm_2/gamma/m
г
=Adam/module_wrapper_1/batchnorm_2/gamma/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_1/batchnorm_2/gamma/m*
_output_shapes
:@*
dtype0
и
(Adam/module_wrapper_1/batchnorm_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/module_wrapper_1/batchnorm_2/beta/m
б
<Adam/module_wrapper_1/batchnorm_2/beta/m/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_1/batchnorm_2/beta/m*
_output_shapes
:@*
dtype0
л
)Adam/module_wrapper_3/batchnorm_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_3/batchnorm_3/gamma/m
д
=Adam/module_wrapper_3/batchnorm_3/gamma/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_3/batchnorm_3/gamma/m*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_3/batchnorm_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_3/batchnorm_3/beta/m
в
<Adam/module_wrapper_3/batchnorm_3/beta/m/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_3/batchnorm_3/beta/m*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_4/batchnorm_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_4/batchnorm_4/gamma/m
д
=Adam/module_wrapper_4/batchnorm_4/gamma/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_4/batchnorm_4/gamma/m*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_4/batchnorm_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_4/batchnorm_4/beta/m
в
<Adam/module_wrapper_4/batchnorm_4/beta/m/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_4/batchnorm_4/beta/m*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_6/batchnorm_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_6/batchnorm_5/gamma/m
д
=Adam/module_wrapper_6/batchnorm_5/gamma/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_6/batchnorm_5/gamma/m*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_6/batchnorm_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_6/batchnorm_5/beta/m
в
<Adam/module_wrapper_6/batchnorm_5/beta/m/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_6/batchnorm_5/beta/m*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_7/batchnorm_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_7/batchnorm_6/gamma/m
д
=Adam/module_wrapper_7/batchnorm_6/gamma/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_7/batchnorm_6/gamma/m*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_7/batchnorm_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_7/batchnorm_6/beta/m
в
<Adam/module_wrapper_7/batchnorm_6/beta/m/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_7/batchnorm_6/beta/m*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_9/batchnorm_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_9/batchnorm_7/gamma/m
д
=Adam/module_wrapper_9/batchnorm_7/gamma/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_9/batchnorm_7/gamma/m*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_9/batchnorm_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_9/batchnorm_7/beta/m
в
<Adam/module_wrapper_9/batchnorm_7/beta/m/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_9/batchnorm_7/beta/m*
_output_shapes	
:А*
dtype0
М
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/v
Е
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:@*
dtype0
Р
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_1/kernel/v
Й
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:@@*
dtype0
А
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
С
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2d_2/kernel/v
К
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*'
_output_shapes
:@А*
dtype0
Б
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:А*
dtype0
Т
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/conv2d_3/kernel/v
Л
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*(
_output_shapes
:АА*
dtype0
Б
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:А*
dtype0
Т
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/conv2d_4/kernel/v
Л
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*(
_output_shapes
:АА*
dtype0
Б
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_4/bias/v
z
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes	
:А*
dtype0
Т
Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/conv2d_5/kernel/v
Л
*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*(
_output_shapes
:АА*
dtype0
Б
Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_5/bias/v
z
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes	
:А*
dtype0
Д
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
АHА*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_1/kernel/v
А
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
ж
'Adam/module_wrapper/batchnorm_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/module_wrapper/batchnorm_1/gamma/v
Я
;Adam/module_wrapper/batchnorm_1/gamma/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper/batchnorm_1/gamma/v*
_output_shapes
:@*
dtype0
д
&Adam/module_wrapper/batchnorm_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/module_wrapper/batchnorm_1/beta/v
Э
:Adam/module_wrapper/batchnorm_1/beta/v/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper/batchnorm_1/beta/v*
_output_shapes
:@*
dtype0
к
)Adam/module_wrapper_1/batchnorm_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/module_wrapper_1/batchnorm_2/gamma/v
г
=Adam/module_wrapper_1/batchnorm_2/gamma/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_1/batchnorm_2/gamma/v*
_output_shapes
:@*
dtype0
и
(Adam/module_wrapper_1/batchnorm_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/module_wrapper_1/batchnorm_2/beta/v
б
<Adam/module_wrapper_1/batchnorm_2/beta/v/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_1/batchnorm_2/beta/v*
_output_shapes
:@*
dtype0
л
)Adam/module_wrapper_3/batchnorm_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_3/batchnorm_3/gamma/v
д
=Adam/module_wrapper_3/batchnorm_3/gamma/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_3/batchnorm_3/gamma/v*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_3/batchnorm_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_3/batchnorm_3/beta/v
в
<Adam/module_wrapper_3/batchnorm_3/beta/v/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_3/batchnorm_3/beta/v*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_4/batchnorm_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_4/batchnorm_4/gamma/v
д
=Adam/module_wrapper_4/batchnorm_4/gamma/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_4/batchnorm_4/gamma/v*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_4/batchnorm_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_4/batchnorm_4/beta/v
в
<Adam/module_wrapper_4/batchnorm_4/beta/v/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_4/batchnorm_4/beta/v*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_6/batchnorm_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_6/batchnorm_5/gamma/v
д
=Adam/module_wrapper_6/batchnorm_5/gamma/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_6/batchnorm_5/gamma/v*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_6/batchnorm_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_6/batchnorm_5/beta/v
в
<Adam/module_wrapper_6/batchnorm_5/beta/v/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_6/batchnorm_5/beta/v*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_7/batchnorm_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_7/batchnorm_6/gamma/v
д
=Adam/module_wrapper_7/batchnorm_6/gamma/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_7/batchnorm_6/gamma/v*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_7/batchnorm_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_7/batchnorm_6/beta/v
в
<Adam/module_wrapper_7/batchnorm_6/beta/v/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_7/batchnorm_6/beta/v*
_output_shapes	
:А*
dtype0
л
)Adam/module_wrapper_9/batchnorm_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)Adam/module_wrapper_9/batchnorm_7/gamma/v
д
=Adam/module_wrapper_9/batchnorm_7/gamma/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_9/batchnorm_7/gamma/v*
_output_shapes	
:А*
dtype0
й
(Adam/module_wrapper_9/batchnorm_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(Adam/module_wrapper_9/batchnorm_7/beta/v
в
<Adam/module_wrapper_9/batchnorm_7/beta/v/Read/ReadVariableOpReadVariableOp(Adam/module_wrapper_9/batchnorm_7/beta/v*
_output_shapes	
:А*
dtype0

NoOpNoOp
м╒
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ц╘
value█╘B╫╘ B╧╘
┤
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
_
$_module
%regularization_losses
&	variables
'trainable_variables
(	keras_api
h

)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
_
/_module
0regularization_losses
1	variables
2trainable_variables
3	keras_api
R
4regularization_losses
5	variables
6trainable_variables
7	keras_api
_
8_module
9regularization_losses
:	variables
;trainable_variables
<	keras_api
h

=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
_
C_module
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
h

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
_
N_module
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
R
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
_
W_module
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
h

\kernel
]bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
_
b_module
cregularization_losses
d	variables
etrainable_variables
f	keras_api
h

gkernel
hbias
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
_
m_module
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
R
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
_
v_module
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
R
{regularization_losses
|	variables
}trainable_variables
~	keras_api
m

kernel
	Аbias
Бregularization_losses
В	variables
Гtrainable_variables
Д	keras_api
d
Е_module
Жregularization_losses
З	variables
Иtrainable_variables
Й	keras_api
d
К_module
Лregularization_losses
М	variables
Нtrainable_variables
О	keras_api
n
Пkernel
	Рbias
Сregularization_losses
Т	variables
Уtrainable_variables
Ф	keras_api
┐
	Хiter
Цbeta_1
Чbeta_2

Шdecay
Щlearning_ratemгmд)mе*mж=mз>mиHmйImк\mл]mмgmнhmоmп	Аm░	Пm▒	Рm▓	Ъm│	Ыm┤	Юm╡	Яm╢	вm╖	гm╕	жm╣	зm║	кm╗	лm╝	оm╜	пm╛	▓m┐	│m└v┴v┬)v├*v─=v┼>v╞Hv╟Iv╚\v╔]v╩gv╦hv╠v═	Аv╬	Пv╧	Рv╨	Ъv╤	Ыv╥	Юv╙	Яv╘	вv╒	гv╓	жv╫	зv╪	кv┘	лv┌	оv█	пv▄	▓v▌	│v▐
 
ї
0
1
Ъ2
Ы3
Ь4
Э5
)6
*7
Ю8
Я9
а10
б11
=12
>13
в14
г15
д16
е17
H18
I19
ж20
з21
и22
й23
\24
]25
к26
л27
м28
н29
g30
h31
о32
п33
░34
▒35
36
А37
▓38
│39
┤40
╡41
П42
Р43
ў
0
1
Ъ2
Ы3
)4
*5
Ю6
Я7
=8
>9
в10
г11
H12
I13
ж14
з15
\16
]17
к18
л19
g20
h21
о22
п23
24
А25
▓26
│27
П28
Р29
▓
╢non_trainable_variables
╖layers
╕layer_metrics
regularization_losses
╣metrics
 ║layer_regularization_losses
	variables
trainable_variables
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
▓
╗non_trainable_variables
╝layer_metrics
╜layers
 regularization_losses
╛metrics
 ┐layer_regularization_losses
!	variables
"trainable_variables
а
	└axis

Ъgamma
	Ыbeta
Ьmoving_mean
Эmoving_variance
┴regularization_losses
┬	variables
├trainable_variables
─	keras_api
 
 
Ъ0
Ы1
Ь2
Э3

Ъ0
Ы1
▓
┼non_trainable_variables
╞layer_metrics
╟layers
%regularization_losses
╚metrics
 ╔layer_regularization_losses
&	variables
'trainable_variables
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
▓
╩non_trainable_variables
╦layer_metrics
╠layers
+regularization_losses
═metrics
 ╬layer_regularization_losses
,	variables
-trainable_variables
а
	╧axis

Юgamma
	Яbeta
аmoving_mean
бmoving_variance
╨regularization_losses
╤	variables
╥trainable_variables
╙	keras_api
 
 
Ю0
Я1
а2
б3

Ю0
Я1
▓
╘non_trainable_variables
╒layer_metrics
╓layers
0regularization_losses
╫metrics
 ╪layer_regularization_losses
1	variables
2trainable_variables
 
 
 
▓
┘non_trainable_variables
┌layer_metrics
█layers
4regularization_losses
▄metrics
 ▌layer_regularization_losses
5	variables
6trainable_variables
V
▐regularization_losses
▀	variables
рtrainable_variables
с	keras_api
 
 
 
▓
тnon_trainable_variables
уlayer_metrics
фlayers
9regularization_losses
хmetrics
 цlayer_regularization_losses
:	variables
;trainable_variables
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

=0
>1
▓
чnon_trainable_variables
шlayer_metrics
щlayers
?regularization_losses
ъmetrics
 ыlayer_regularization_losses
@	variables
Atrainable_variables
а
	ьaxis

вgamma
	гbeta
дmoving_mean
еmoving_variance
эregularization_losses
ю	variables
яtrainable_variables
Ё	keras_api
 
 
в0
г1
д2
е3

в0
г1
▓
ёnon_trainable_variables
Єlayer_metrics
єlayers
Dregularization_losses
Їmetrics
 їlayer_regularization_losses
E	variables
Ftrainable_variables
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

H0
I1
▓
Ўnon_trainable_variables
ўlayer_metrics
°layers
Jregularization_losses
∙metrics
 ·layer_regularization_losses
K	variables
Ltrainable_variables
а
	√axis

жgamma
	зbeta
иmoving_mean
йmoving_variance
№regularization_losses
¤	variables
■trainable_variables
 	keras_api
 
 
ж0
з1
и2
й3

ж0
з1
▓
Аnon_trainable_variables
Бlayer_metrics
Вlayers
Oregularization_losses
Гmetrics
 Дlayer_regularization_losses
P	variables
Qtrainable_variables
 
 
 
▓
Еnon_trainable_variables
Жlayer_metrics
Зlayers
Sregularization_losses
Иmetrics
 Йlayer_regularization_losses
T	variables
Utrainable_variables
V
Кregularization_losses
Л	variables
Мtrainable_variables
Н	keras_api
 
 
 
▓
Оnon_trainable_variables
Пlayer_metrics
Рlayers
Xregularization_losses
Сmetrics
 Тlayer_regularization_losses
Y	variables
Ztrainable_variables
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

\0
]1

\0
]1
▓
Уnon_trainable_variables
Фlayer_metrics
Хlayers
^regularization_losses
Цmetrics
 Чlayer_regularization_losses
_	variables
`trainable_variables
а
	Шaxis

кgamma
	лbeta
мmoving_mean
нmoving_variance
Щregularization_losses
Ъ	variables
Ыtrainable_variables
Ь	keras_api
 
 
к0
л1
м2
н3

к0
л1
▓
Эnon_trainable_variables
Юlayer_metrics
Яlayers
cregularization_losses
аmetrics
 бlayer_regularization_losses
d	variables
etrainable_variables
\Z
VARIABLE_VALUEconv2d_5/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_5/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1

g0
h1
▓
вnon_trainable_variables
гlayer_metrics
дlayers
iregularization_losses
еmetrics
 жlayer_regularization_losses
j	variables
ktrainable_variables
а
	зaxis

оgamma
	пbeta
░moving_mean
▒moving_variance
иregularization_losses
й	variables
кtrainable_variables
л	keras_api
 
 
о0
п1
░2
▒3

о0
п1
▓
мnon_trainable_variables
нlayer_metrics
оlayers
nregularization_losses
пmetrics
 ░layer_regularization_losses
o	variables
ptrainable_variables
 
 
 
▓
▒non_trainable_variables
▓layer_metrics
│layers
rregularization_losses
┤metrics
 ╡layer_regularization_losses
s	variables
ttrainable_variables
V
╢regularization_losses
╖	variables
╕trainable_variables
╣	keras_api
 
 
 
▓
║non_trainable_variables
╗layer_metrics
╝layers
wregularization_losses
╜metrics
 ╛layer_regularization_losses
x	variables
ytrainable_variables
 
 
 
▓
┐non_trainable_variables
└layer_metrics
┴layers
{regularization_losses
┬metrics
 ├layer_regularization_losses
|	variables
}trainable_variables
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
А1

0
А1
╡
─non_trainable_variables
┼layer_metrics
╞layers
Бregularization_losses
╟metrics
 ╚layer_regularization_losses
В	variables
Гtrainable_variables
а
	╔axis

▓gamma
	│beta
┤moving_mean
╡moving_variance
╩regularization_losses
╦	variables
╠trainable_variables
═	keras_api
 
 
▓0
│1
┤2
╡3

▓0
│1
╡
╬non_trainable_variables
╧layer_metrics
╨layers
Жregularization_losses
╤metrics
 ╥layer_regularization_losses
З	variables
Иtrainable_variables
V
╙regularization_losses
╘	variables
╒trainable_variables
╓	keras_api
 
 
 
╡
╫non_trainable_variables
╪layer_metrics
┘layers
Лregularization_losses
┌metrics
 █layer_regularization_losses
М	variables
Нtrainable_variables
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

П0
Р1

П0
Р1
╡
▄non_trainable_variables
▌layer_metrics
▐layers
Сregularization_losses
▀metrics
 рlayer_regularization_losses
Т	variables
Уtrainable_variables
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
\Z
VARIABLE_VALUE module_wrapper/batchnorm_1/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEmodule_wrapper/batchnorm_1/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&module_wrapper/batchnorm_1/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*module_wrapper/batchnorm_1/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE"module_wrapper_1/batchnorm_2/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!module_wrapper_1/batchnorm_2/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(module_wrapper_1/batchnorm_2/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,module_wrapper_1/batchnorm_2/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_3/batchnorm_3/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!module_wrapper_3/batchnorm_3/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(module_wrapper_3/batchnorm_3/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,module_wrapper_3/batchnorm_3/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_4/batchnorm_4/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!module_wrapper_4/batchnorm_4/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(module_wrapper_4/batchnorm_4/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,module_wrapper_4/batchnorm_4/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_6/batchnorm_5/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!module_wrapper_6/batchnorm_5/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(module_wrapper_6/batchnorm_5/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,module_wrapper_6/batchnorm_5/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_7/batchnorm_6/gamma'variables/32/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!module_wrapper_7/batchnorm_6/beta'variables/33/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(module_wrapper_7/batchnorm_6/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,module_wrapper_7/batchnorm_6/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_9/batchnorm_7/gamma'variables/38/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!module_wrapper_9/batchnorm_7/beta'variables/39/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(module_wrapper_9/batchnorm_7/moving_mean'variables/40/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,module_wrapper_9/batchnorm_7/moving_variance'variables/41/.ATTRIBUTES/VARIABLE_VALUE
t
Ь0
Э1
а2
б3
д4
е5
и6
й7
м8
н9
░10
▒11
┤12
╡13
о
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
14
15
16
17
18
19
20
21
22
 

с0
т1
 
 
 
 
 
 
 
 
 
Ъ0
Ы1
Ь2
Э3

Ъ0
Ы1
╡
уnon_trainable_variables
фlayer_metrics
хlayers
┴regularization_losses
цmetrics
 чlayer_regularization_losses
┬	variables
├trainable_variables

Ь0
Э1
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
 
Ю0
Я1
а2
б3

Ю0
Я1
╡
шnon_trainable_variables
щlayer_metrics
ъlayers
╨regularization_losses
ыmetrics
 ьlayer_regularization_losses
╤	variables
╥trainable_variables

а0
б1
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
╡
эnon_trainable_variables
юlayer_metrics
яlayers
▐regularization_losses
Ёmetrics
 ёlayer_regularization_losses
▀	variables
рtrainable_variables
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
 
в0
г1
д2
е3

в0
г1
╡
Єnon_trainable_variables
єlayer_metrics
Їlayers
эregularization_losses
їmetrics
 Ўlayer_regularization_losses
ю	variables
яtrainable_variables

д0
е1
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
 
ж0
з1
и2
й3

ж0
з1
╡
ўnon_trainable_variables
°layer_metrics
∙layers
№regularization_losses
·metrics
 √layer_regularization_losses
¤	variables
■trainable_variables

и0
й1
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
╡
№non_trainable_variables
¤layer_metrics
■layers
Кregularization_losses
 metrics
 Аlayer_regularization_losses
Л	variables
Мtrainable_variables
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
 
к0
л1
м2
н3

к0
л1
╡
Бnon_trainable_variables
Вlayer_metrics
Гlayers
Щregularization_losses
Дmetrics
 Еlayer_regularization_losses
Ъ	variables
Ыtrainable_variables

м0
н1
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
 
о0
п1
░2
▒3

о0
п1
╡
Жnon_trainable_variables
Зlayer_metrics
Иlayers
иregularization_losses
Йmetrics
 Кlayer_regularization_losses
й	variables
кtrainable_variables

░0
▒1
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
╡
Лnon_trainable_variables
Мlayer_metrics
Нlayers
╢regularization_losses
Оmetrics
 Пlayer_regularization_losses
╖	variables
╕trainable_variables
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
 
▓0
│1
┤2
╡3

▓0
│1
╡
Рnon_trainable_variables
Сlayer_metrics
Тlayers
╩regularization_losses
Уmetrics
 Фlayer_regularization_losses
╦	variables
╠trainable_variables

┤0
╡1
 
 
 
 
 
 
 
╡
Хnon_trainable_variables
Цlayer_metrics
Чlayers
╙regularization_losses
Шmetrics
 Щlayer_regularization_losses
╘	variables
╒trainable_variables
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

Ъtotal

Ыcount
Ь	variables
Э	keras_api
I

Юtotal

Яcount
а
_fn_kwargs
б	variables
в	keras_api

Ь0
Э1
 
 
 
 

а0
б1
 
 
 
 
 
 
 
 
 

д0
е1
 
 
 
 

и0
й1
 
 
 
 
 
 
 
 
 

м0
н1
 
 
 
 

░0
▒1
 
 
 
 
 
 
 
 
 

┤0
╡1
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ъ0
Ы1

Ь	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ю0
Я1

б	variables
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_5/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_5/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper/batchnorm_1/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/module_wrapper/batchnorm_1/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE)Adam/module_wrapper_1/batchnorm_2/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE(Adam/module_wrapper_1/batchnorm_2/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_3/batchnorm_3/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_3/batchnorm_3/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_4/batchnorm_4/gamma/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_4/batchnorm_4/beta/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_6/batchnorm_5/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_6/batchnorm_5/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_7/batchnorm_6/gamma/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_7/batchnorm_6/beta/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_9/batchnorm_7/gamma/mCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_9/batchnorm_7/beta/mCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_5/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_5/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/module_wrapper/batchnorm_1/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/module_wrapper/batchnorm_1/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE)Adam/module_wrapper_1/batchnorm_2/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE(Adam/module_wrapper_1/batchnorm_2/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_3/batchnorm_3/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_3/batchnorm_3/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_4/batchnorm_4/gamma/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_4/batchnorm_4/beta/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_6/batchnorm_5/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_6/batchnorm_5/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_7/batchnorm_6/gamma/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_7/batchnorm_6/beta/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE)Adam/module_wrapper_9/batchnorm_7/gamma/vCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE(Adam/module_wrapper_9/batchnorm_7/beta/vCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
П
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:         00*
dtype0*$
shape:         00
╫
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/bias module_wrapper/batchnorm_1/gammamodule_wrapper/batchnorm_1/beta&module_wrapper/batchnorm_1/moving_mean*module_wrapper/batchnorm_1/moving_varianceconv2d_1/kernelconv2d_1/bias"module_wrapper_1/batchnorm_2/gamma!module_wrapper_1/batchnorm_2/beta(module_wrapper_1/batchnorm_2/moving_mean,module_wrapper_1/batchnorm_2/moving_varianceconv2d_2/kernelconv2d_2/bias"module_wrapper_3/batchnorm_3/gamma!module_wrapper_3/batchnorm_3/beta(module_wrapper_3/batchnorm_3/moving_mean,module_wrapper_3/batchnorm_3/moving_varianceconv2d_3/kernelconv2d_3/bias"module_wrapper_4/batchnorm_4/gamma!module_wrapper_4/batchnorm_4/beta(module_wrapper_4/batchnorm_4/moving_mean,module_wrapper_4/batchnorm_4/moving_varianceconv2d_4/kernelconv2d_4/bias"module_wrapper_6/batchnorm_5/gamma!module_wrapper_6/batchnorm_5/beta(module_wrapper_6/batchnorm_5/moving_mean,module_wrapper_6/batchnorm_5/moving_varianceconv2d_5/kernelconv2d_5/bias"module_wrapper_7/batchnorm_6/gamma!module_wrapper_7/batchnorm_6/beta(module_wrapper_7/batchnorm_6/moving_mean,module_wrapper_7/batchnorm_6/moving_variancedense/kernel
dense/bias,module_wrapper_9/batchnorm_7/moving_variance"module_wrapper_9/batchnorm_7/gamma(module_wrapper_9/batchnorm_7/moving_mean!module_wrapper_9/batchnorm_7/betadense_1/kerneldense_1/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_137136
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
є.
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp4module_wrapper/batchnorm_1/gamma/Read/ReadVariableOp3module_wrapper/batchnorm_1/beta/Read/ReadVariableOp:module_wrapper/batchnorm_1/moving_mean/Read/ReadVariableOp>module_wrapper/batchnorm_1/moving_variance/Read/ReadVariableOp6module_wrapper_1/batchnorm_2/gamma/Read/ReadVariableOp5module_wrapper_1/batchnorm_2/beta/Read/ReadVariableOp<module_wrapper_1/batchnorm_2/moving_mean/Read/ReadVariableOp@module_wrapper_1/batchnorm_2/moving_variance/Read/ReadVariableOp6module_wrapper_3/batchnorm_3/gamma/Read/ReadVariableOp5module_wrapper_3/batchnorm_3/beta/Read/ReadVariableOp<module_wrapper_3/batchnorm_3/moving_mean/Read/ReadVariableOp@module_wrapper_3/batchnorm_3/moving_variance/Read/ReadVariableOp6module_wrapper_4/batchnorm_4/gamma/Read/ReadVariableOp5module_wrapper_4/batchnorm_4/beta/Read/ReadVariableOp<module_wrapper_4/batchnorm_4/moving_mean/Read/ReadVariableOp@module_wrapper_4/batchnorm_4/moving_variance/Read/ReadVariableOp6module_wrapper_6/batchnorm_5/gamma/Read/ReadVariableOp5module_wrapper_6/batchnorm_5/beta/Read/ReadVariableOp<module_wrapper_6/batchnorm_5/moving_mean/Read/ReadVariableOp@module_wrapper_6/batchnorm_5/moving_variance/Read/ReadVariableOp6module_wrapper_7/batchnorm_6/gamma/Read/ReadVariableOp5module_wrapper_7/batchnorm_6/beta/Read/ReadVariableOp<module_wrapper_7/batchnorm_6/moving_mean/Read/ReadVariableOp@module_wrapper_7/batchnorm_6/moving_variance/Read/ReadVariableOp6module_wrapper_9/batchnorm_7/gamma/Read/ReadVariableOp5module_wrapper_9/batchnorm_7/beta/Read/ReadVariableOp<module_wrapper_9/batchnorm_7/moving_mean/Read/ReadVariableOp@module_wrapper_9/batchnorm_7/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp;Adam/module_wrapper/batchnorm_1/gamma/m/Read/ReadVariableOp:Adam/module_wrapper/batchnorm_1/beta/m/Read/ReadVariableOp=Adam/module_wrapper_1/batchnorm_2/gamma/m/Read/ReadVariableOp<Adam/module_wrapper_1/batchnorm_2/beta/m/Read/ReadVariableOp=Adam/module_wrapper_3/batchnorm_3/gamma/m/Read/ReadVariableOp<Adam/module_wrapper_3/batchnorm_3/beta/m/Read/ReadVariableOp=Adam/module_wrapper_4/batchnorm_4/gamma/m/Read/ReadVariableOp<Adam/module_wrapper_4/batchnorm_4/beta/m/Read/ReadVariableOp=Adam/module_wrapper_6/batchnorm_5/gamma/m/Read/ReadVariableOp<Adam/module_wrapper_6/batchnorm_5/beta/m/Read/ReadVariableOp=Adam/module_wrapper_7/batchnorm_6/gamma/m/Read/ReadVariableOp<Adam/module_wrapper_7/batchnorm_6/beta/m/Read/ReadVariableOp=Adam/module_wrapper_9/batchnorm_7/gamma/m/Read/ReadVariableOp<Adam/module_wrapper_9/batchnorm_7/beta/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp;Adam/module_wrapper/batchnorm_1/gamma/v/Read/ReadVariableOp:Adam/module_wrapper/batchnorm_1/beta/v/Read/ReadVariableOp=Adam/module_wrapper_1/batchnorm_2/gamma/v/Read/ReadVariableOp<Adam/module_wrapper_1/batchnorm_2/beta/v/Read/ReadVariableOp=Adam/module_wrapper_3/batchnorm_3/gamma/v/Read/ReadVariableOp<Adam/module_wrapper_3/batchnorm_3/beta/v/Read/ReadVariableOp=Adam/module_wrapper_4/batchnorm_4/gamma/v/Read/ReadVariableOp<Adam/module_wrapper_4/batchnorm_4/beta/v/Read/ReadVariableOp=Adam/module_wrapper_6/batchnorm_5/gamma/v/Read/ReadVariableOp<Adam/module_wrapper_6/batchnorm_5/beta/v/Read/ReadVariableOp=Adam/module_wrapper_7/batchnorm_6/gamma/v/Read/ReadVariableOp<Adam/module_wrapper_7/batchnorm_6/beta/v/Read/ReadVariableOp=Adam/module_wrapper_9/batchnorm_7/gamma/v/Read/ReadVariableOp<Adam/module_wrapper_9/batchnorm_7/beta/v/Read/ReadVariableOpConst*~
Tinw
u2s	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_140166
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate module_wrapper/batchnorm_1/gammamodule_wrapper/batchnorm_1/beta&module_wrapper/batchnorm_1/moving_mean*module_wrapper/batchnorm_1/moving_variance"module_wrapper_1/batchnorm_2/gamma!module_wrapper_1/batchnorm_2/beta(module_wrapper_1/batchnorm_2/moving_mean,module_wrapper_1/batchnorm_2/moving_variance"module_wrapper_3/batchnorm_3/gamma!module_wrapper_3/batchnorm_3/beta(module_wrapper_3/batchnorm_3/moving_mean,module_wrapper_3/batchnorm_3/moving_variance"module_wrapper_4/batchnorm_4/gamma!module_wrapper_4/batchnorm_4/beta(module_wrapper_4/batchnorm_4/moving_mean,module_wrapper_4/batchnorm_4/moving_variance"module_wrapper_6/batchnorm_5/gamma!module_wrapper_6/batchnorm_5/beta(module_wrapper_6/batchnorm_5/moving_mean,module_wrapper_6/batchnorm_5/moving_variance"module_wrapper_7/batchnorm_6/gamma!module_wrapper_7/batchnorm_6/beta(module_wrapper_7/batchnorm_6/moving_mean,module_wrapper_7/batchnorm_6/moving_variance"module_wrapper_9/batchnorm_7/gamma!module_wrapper_9/batchnorm_7/beta(module_wrapper_9/batchnorm_7/moving_mean,module_wrapper_9/batchnorm_7/moving_variancetotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m'Adam/module_wrapper/batchnorm_1/gamma/m&Adam/module_wrapper/batchnorm_1/beta/m)Adam/module_wrapper_1/batchnorm_2/gamma/m(Adam/module_wrapper_1/batchnorm_2/beta/m)Adam/module_wrapper_3/batchnorm_3/gamma/m(Adam/module_wrapper_3/batchnorm_3/beta/m)Adam/module_wrapper_4/batchnorm_4/gamma/m(Adam/module_wrapper_4/batchnorm_4/beta/m)Adam/module_wrapper_6/batchnorm_5/gamma/m(Adam/module_wrapper_6/batchnorm_5/beta/m)Adam/module_wrapper_7/batchnorm_6/gamma/m(Adam/module_wrapper_7/batchnorm_6/beta/m)Adam/module_wrapper_9/batchnorm_7/gamma/m(Adam/module_wrapper_9/batchnorm_7/beta/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v'Adam/module_wrapper/batchnorm_1/gamma/v&Adam/module_wrapper/batchnorm_1/beta/v)Adam/module_wrapper_1/batchnorm_2/gamma/v(Adam/module_wrapper_1/batchnorm_2/beta/v)Adam/module_wrapper_3/batchnorm_3/gamma/v(Adam/module_wrapper_3/batchnorm_3/beta/v)Adam/module_wrapper_4/batchnorm_4/gamma/v(Adam/module_wrapper_4/batchnorm_4/beta/v)Adam/module_wrapper_6/batchnorm_5/gamma/v(Adam/module_wrapper_6/batchnorm_5/beta/v)Adam/module_wrapper_7/batchnorm_6/gamma/v(Adam/module_wrapper_7/batchnorm_6/beta/v)Adam/module_wrapper_9/batchnorm_7/gamma/v(Adam/module_wrapper_9/batchnorm_7/beta/v*}
Tinv
t2r*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_140515∙■ 
┤v
╡
F__inference_sequential_layer_call_and_return_conditional_losses_135811

inputs'
conv2d_135449:@
conv2d_135451:@#
module_wrapper_135473:@#
module_wrapper_135475:@#
module_wrapper_135477:@#
module_wrapper_135479:@)
conv2d_1_135494:@@
conv2d_1_135496:@%
module_wrapper_1_135518:@%
module_wrapper_1_135520:@%
module_wrapper_1_135522:@%
module_wrapper_1_135524:@*
conv2d_2_135547:@А
conv2d_2_135549:	А&
module_wrapper_3_135571:	А&
module_wrapper_3_135573:	А&
module_wrapper_3_135575:	А&
module_wrapper_3_135577:	А+
conv2d_3_135592:АА
conv2d_3_135594:	А&
module_wrapper_4_135616:	А&
module_wrapper_4_135618:	А&
module_wrapper_4_135620:	А&
module_wrapper_4_135622:	А+
conv2d_4_135645:АА
conv2d_4_135647:	А&
module_wrapper_6_135669:	А&
module_wrapper_6_135671:	А&
module_wrapper_6_135673:	А&
module_wrapper_6_135675:	А+
conv2d_5_135690:АА
conv2d_5_135692:	А&
module_wrapper_7_135714:	А&
module_wrapper_7_135716:	А&
module_wrapper_7_135718:	А&
module_wrapper_7_135720:	А 
dense_135751:
АHА
dense_135753:	А&
module_wrapper_9_135777:	А&
module_wrapper_9_135779:	А&
module_wrapper_9_135781:	А&
module_wrapper_9_135783:	А!
dense_1_135805:	А
dense_1_135807:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallв&module_wrapper/StatefulPartitionedCallв(module_wrapper_1/StatefulPartitionedCallв(module_wrapper_3/StatefulPartitionedCallв(module_wrapper_4/StatefulPartitionedCallв(module_wrapper_6/StatefulPartitionedCallв(module_wrapper_7/StatefulPartitionedCallв(module_wrapper_9/StatefulPartitionedCallХ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_135449conv2d_135451*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1354482 
conv2d/StatefulPartitionedCallР
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0module_wrapper_135473module_wrapper_135475module_wrapper_135477module_wrapper_135479*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_1354722(
&module_wrapper/StatefulPartitionedCall╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0conv2d_1_135494conv2d_1_135496*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1354932"
 conv2d_1/StatefulPartitionedCallа
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0module_wrapper_1_135518module_wrapper_1_135520module_wrapper_1_135522module_wrapper_1_135524*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1355172*
(module_wrapper_1/StatefulPartitionedCallЩ
max_pooling2d/PartitionedCallPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1354002
max_pooling2d/PartitionedCallЧ
 module_wrapper_2/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1355332"
 module_wrapper_2/PartitionedCall├
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_2/PartitionedCall:output:0conv2d_2_135547conv2d_2_135549*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1355462"
 conv2d_2/StatefulPartitionedCallб
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0module_wrapper_3_135571module_wrapper_3_135573module_wrapper_3_135575module_wrapper_3_135577*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1355702*
(module_wrapper_3/StatefulPartitionedCall╦
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0conv2d_3_135592conv2d_3_135594*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1355912"
 conv2d_3/StatefulPartitionedCallб
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0module_wrapper_4_135616module_wrapper_4_135618module_wrapper_4_135620module_wrapper_4_135622*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1356152*
(module_wrapper_4/StatefulPartitionedCallа
max_pooling2d_1/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1354122!
max_pooling2d_1/PartitionedCallЪ
 module_wrapper_5/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1356312"
 module_wrapper_5/PartitionedCall├
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0conv2d_4_135645conv2d_4_135647*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1356442"
 conv2d_4/StatefulPartitionedCallб
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0module_wrapper_6_135669module_wrapper_6_135671module_wrapper_6_135673module_wrapper_6_135675*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1356682*
(module_wrapper_6/StatefulPartitionedCall╦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0conv2d_5_135690conv2d_5_135692*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1356892"
 conv2d_5/StatefulPartitionedCallб
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0module_wrapper_7_135714module_wrapper_7_135716module_wrapper_7_135718module_wrapper_7_135720*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1357132*
(module_wrapper_7/StatefulPartitionedCallа
max_pooling2d_2/PartitionedCallPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1354242!
max_pooling2d_2/PartitionedCallЪ
 module_wrapper_8/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1357292"
 module_wrapper_8/PartitionedCall°
flatten/PartitionedCallPartitionedCall)module_wrapper_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1357372
flatten/PartitionedCallг
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_135751dense_135753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1357502
dense/StatefulPartitionedCallЦ
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0module_wrapper_9_135777module_wrapper_9_135779module_wrapper_9_135781module_wrapper_9_135783*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1357762*
(module_wrapper_9/StatefulPartitionedCallЮ
!module_wrapper_10/PartitionedCallPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1357912#
!module_wrapper_10/PartitionedCall╢
dense_1/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_10/PartitionedCall:output:0dense_1_135805dense_1_135807*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1358042!
dense_1/StatefulPartitionedCall╣
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
°
╦
,__inference_batchnorm_7_layer_call_fn_139737

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_1379172
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
═
б
)__inference_conv2d_4_layer_call_fn_139012

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1356442
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
р
╦
,__inference_batchnorm_3_layer_call_fn_139489

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_1374112
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
з
h
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_138800

args_0
identityr
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:         @2
dropout/Identityu
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameargs_0
й
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_135400

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ю
▒
J__inference_module_wrapper_layer_call_and_return_conditional_losses_136390

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identityИвbatchnorm_1/AssignNewValueвbatchnorm_1/AssignNewValue_1в+batchnorm_1/FusedBatchNormV3/ReadVariableOpв-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_1/ReadVariableOpвbatchnorm_1/ReadVariableOp_1Ш
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOpЮ
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1╦
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1а
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_1/FusedBatchNormV3■
batchnorm_1/AssignNewValueAssignVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource)batchnorm_1/FusedBatchNormV3:batch_mean:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValueК
batchnorm_1/AssignNewValue_1AssignVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource-batchnorm_1/FusedBatchNormV3:batch_variance:0.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValue_1╥
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0^batchnorm_1/AssignNewValue^batchnorm_1/AssignNewValue_1,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 28
batchnorm_1/AssignNewValuebatchnorm_1/AssignNewValue2<
batchnorm_1/AssignNewValue_1batchnorm_1/AssignNewValue_12Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
╢
k
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_138812

args_0
identityИs
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/dropout/ConstУ
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Mul_1u
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameargs_0
в
╨
1__inference_module_wrapper_3_layer_call_fn_138845

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1355702
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
с
k
2__inference_module_wrapper_10_layer_call_fn_139315

args_0
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1359322
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
д
√
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_139149

args_02
#batchnorm_6_readvariableop_resource:	А4
%batchnorm_6_readvariableop_1_resource:	АC
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_6/FusedBatchNormV3/ReadVariableOpв-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_6/ReadVariableOpвbatchnorm_6/ReadVariableOp_1Щ
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOpЯ
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOp_1╠
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_6/FusedBatchNormV3Ч
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
Ш
 
D__inference_conv2d_2_layer_call_and_return_conditional_losses_138832

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
З*
ф
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_139804

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayе
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayл
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOpб
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1М
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
д
√
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_135668

args_02
#batchnorm_5_readvariableop_resource:	А4
%batchnorm_5_readvariableop_1_resource:	АC
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_5/FusedBatchNormV3/ReadVariableOpв-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_5/ReadVariableOpвbatchnorm_5/ReadVariableOp_1Щ
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOpЯ
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOp_1╠
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_5/FusedBatchNormV3Ч
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
╡
╢
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_139414

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ь
А
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135644

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
я
M
1__inference_module_wrapper_2_layer_call_fn_138790

args_0
identity╒
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1355332
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameargs_0
а
╨
1__inference_module_wrapper_6_layer_call_fn_139049

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1361242
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
░
╖
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_136069

args_02
#batchnorm_6_readvariableop_resource:	А4
%batchnorm_6_readvariableop_1_resource:	АC
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_6/AssignNewValueвbatchnorm_6/AssignNewValue_1в+batchnorm_6/FusedBatchNormV3/ReadVariableOpв-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_6/ReadVariableOpвbatchnorm_6/ReadVariableOp_1Щ
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOpЯ
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOp_1╠
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_6/FusedBatchNormV3■
batchnorm_6/AssignNewValueAssignVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource)batchnorm_6/FusedBatchNormV3:batch_mean:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValueК
batchnorm_6/AssignNewValue_1AssignVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource-batchnorm_6/FusedBatchNormV3:batch_variance:0.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValue_1╙
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0^batchnorm_6/AssignNewValue^batchnorm_6/AssignNewValue_1,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_6/AssignNewValuebatchnorm_6/AssignNewValue2<
batchnorm_6/AssignNewValue_1batchnorm_6/AssignNewValue_12Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
°
╚

+__inference_sequential_layer_call_fn_136805
conv2d_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
АHА

unknown_36:	А

unknown_37:	А

unknown_38:	А

unknown_39:	А

unknown_40:	А

unknown_41:	А

unknown_42:
identityИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
 !"%&)*+,*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1366212
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         00
&
_user_specified_nameconv2d_input
 
j
1__inference_module_wrapper_8_layer_call_fn_139177

args_0
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1360322
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
є
M
1__inference_module_wrapper_5_layer_call_fn_138981

args_0
identity╓
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1356312
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
▒
h
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_135631

args_0
identityw
dropout_1/IdentityIdentityargs_0*
T0*0
_output_shapes
:         А2
dropout_1/Identityx
IdentityIdentitydropout_1/Identity:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
┼
║
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_139538

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╡
╢
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_137329

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
▐
╦
,__inference_batchnorm_6_layer_call_fn_139688

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_1378332
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╩
а
)__inference_conv2d_2_layer_call_fn_138821

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1355462
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▒
h
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_135729

args_0
identityw
dropout_2/IdentityIdentityargs_0*
T0*0
_output_shapes
:         А2
dropout_2/Identityx
IdentityIdentitydropout_2/Identity:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
л
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_135424

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
║
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_139724

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
А
╨
1__inference_module_wrapper_9_layer_call_fn_139251

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1359852
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
Ё█
л6
__inference__traced_save_140166
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop?
;savev2_module_wrapper_batchnorm_1_gamma_read_readvariableop>
:savev2_module_wrapper_batchnorm_1_beta_read_readvariableopE
Asavev2_module_wrapper_batchnorm_1_moving_mean_read_readvariableopI
Esavev2_module_wrapper_batchnorm_1_moving_variance_read_readvariableopA
=savev2_module_wrapper_1_batchnorm_2_gamma_read_readvariableop@
<savev2_module_wrapper_1_batchnorm_2_beta_read_readvariableopG
Csavev2_module_wrapper_1_batchnorm_2_moving_mean_read_readvariableopK
Gsavev2_module_wrapper_1_batchnorm_2_moving_variance_read_readvariableopA
=savev2_module_wrapper_3_batchnorm_3_gamma_read_readvariableop@
<savev2_module_wrapper_3_batchnorm_3_beta_read_readvariableopG
Csavev2_module_wrapper_3_batchnorm_3_moving_mean_read_readvariableopK
Gsavev2_module_wrapper_3_batchnorm_3_moving_variance_read_readvariableopA
=savev2_module_wrapper_4_batchnorm_4_gamma_read_readvariableop@
<savev2_module_wrapper_4_batchnorm_4_beta_read_readvariableopG
Csavev2_module_wrapper_4_batchnorm_4_moving_mean_read_readvariableopK
Gsavev2_module_wrapper_4_batchnorm_4_moving_variance_read_readvariableopA
=savev2_module_wrapper_6_batchnorm_5_gamma_read_readvariableop@
<savev2_module_wrapper_6_batchnorm_5_beta_read_readvariableopG
Csavev2_module_wrapper_6_batchnorm_5_moving_mean_read_readvariableopK
Gsavev2_module_wrapper_6_batchnorm_5_moving_variance_read_readvariableopA
=savev2_module_wrapper_7_batchnorm_6_gamma_read_readvariableop@
<savev2_module_wrapper_7_batchnorm_6_beta_read_readvariableopG
Csavev2_module_wrapper_7_batchnorm_6_moving_mean_read_readvariableopK
Gsavev2_module_wrapper_7_batchnorm_6_moving_variance_read_readvariableopA
=savev2_module_wrapper_9_batchnorm_7_gamma_read_readvariableop@
<savev2_module_wrapper_9_batchnorm_7_beta_read_readvariableopG
Csavev2_module_wrapper_9_batchnorm_7_moving_mean_read_readvariableopK
Gsavev2_module_wrapper_9_batchnorm_7_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_batchnorm_1_gamma_m_read_readvariableopE
Asavev2_adam_module_wrapper_batchnorm_1_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_1_batchnorm_2_gamma_m_read_readvariableopG
Csavev2_adam_module_wrapper_1_batchnorm_2_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_3_batchnorm_3_gamma_m_read_readvariableopG
Csavev2_adam_module_wrapper_3_batchnorm_3_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_4_batchnorm_4_gamma_m_read_readvariableopG
Csavev2_adam_module_wrapper_4_batchnorm_4_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_6_batchnorm_5_gamma_m_read_readvariableopG
Csavev2_adam_module_wrapper_6_batchnorm_5_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_7_batchnorm_6_gamma_m_read_readvariableopG
Csavev2_adam_module_wrapper_7_batchnorm_6_beta_m_read_readvariableopH
Dsavev2_adam_module_wrapper_9_batchnorm_7_gamma_m_read_readvariableopG
Csavev2_adam_module_wrapper_9_batchnorm_7_beta_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_batchnorm_1_gamma_v_read_readvariableopE
Asavev2_adam_module_wrapper_batchnorm_1_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_1_batchnorm_2_gamma_v_read_readvariableopG
Csavev2_adam_module_wrapper_1_batchnorm_2_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_3_batchnorm_3_gamma_v_read_readvariableopG
Csavev2_adam_module_wrapper_3_batchnorm_3_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_4_batchnorm_4_gamma_v_read_readvariableopG
Csavev2_adam_module_wrapper_4_batchnorm_4_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_6_batchnorm_5_gamma_v_read_readvariableopG
Csavev2_adam_module_wrapper_6_batchnorm_5_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_7_batchnorm_6_gamma_v_read_readvariableopG
Csavev2_adam_module_wrapper_7_batchnorm_6_beta_v_read_readvariableopH
Dsavev2_adam_module_wrapper_9_batchnorm_7_gamma_v_read_readvariableopG
Csavev2_adam_module_wrapper_9_batchnorm_7_beta_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename║8
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*╠7
value┬7B┐7rB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesя
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*∙
valueяBьrB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesз4
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop;savev2_module_wrapper_batchnorm_1_gamma_read_readvariableop:savev2_module_wrapper_batchnorm_1_beta_read_readvariableopAsavev2_module_wrapper_batchnorm_1_moving_mean_read_readvariableopEsavev2_module_wrapper_batchnorm_1_moving_variance_read_readvariableop=savev2_module_wrapper_1_batchnorm_2_gamma_read_readvariableop<savev2_module_wrapper_1_batchnorm_2_beta_read_readvariableopCsavev2_module_wrapper_1_batchnorm_2_moving_mean_read_readvariableopGsavev2_module_wrapper_1_batchnorm_2_moving_variance_read_readvariableop=savev2_module_wrapper_3_batchnorm_3_gamma_read_readvariableop<savev2_module_wrapper_3_batchnorm_3_beta_read_readvariableopCsavev2_module_wrapper_3_batchnorm_3_moving_mean_read_readvariableopGsavev2_module_wrapper_3_batchnorm_3_moving_variance_read_readvariableop=savev2_module_wrapper_4_batchnorm_4_gamma_read_readvariableop<savev2_module_wrapper_4_batchnorm_4_beta_read_readvariableopCsavev2_module_wrapper_4_batchnorm_4_moving_mean_read_readvariableopGsavev2_module_wrapper_4_batchnorm_4_moving_variance_read_readvariableop=savev2_module_wrapper_6_batchnorm_5_gamma_read_readvariableop<savev2_module_wrapper_6_batchnorm_5_beta_read_readvariableopCsavev2_module_wrapper_6_batchnorm_5_moving_mean_read_readvariableopGsavev2_module_wrapper_6_batchnorm_5_moving_variance_read_readvariableop=savev2_module_wrapper_7_batchnorm_6_gamma_read_readvariableop<savev2_module_wrapper_7_batchnorm_6_beta_read_readvariableopCsavev2_module_wrapper_7_batchnorm_6_moving_mean_read_readvariableopGsavev2_module_wrapper_7_batchnorm_6_moving_variance_read_readvariableop=savev2_module_wrapper_9_batchnorm_7_gamma_read_readvariableop<savev2_module_wrapper_9_batchnorm_7_beta_read_readvariableopCsavev2_module_wrapper_9_batchnorm_7_moving_mean_read_readvariableopGsavev2_module_wrapper_9_batchnorm_7_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableopBsavev2_adam_module_wrapper_batchnorm_1_gamma_m_read_readvariableopAsavev2_adam_module_wrapper_batchnorm_1_beta_m_read_readvariableopDsavev2_adam_module_wrapper_1_batchnorm_2_gamma_m_read_readvariableopCsavev2_adam_module_wrapper_1_batchnorm_2_beta_m_read_readvariableopDsavev2_adam_module_wrapper_3_batchnorm_3_gamma_m_read_readvariableopCsavev2_adam_module_wrapper_3_batchnorm_3_beta_m_read_readvariableopDsavev2_adam_module_wrapper_4_batchnorm_4_gamma_m_read_readvariableopCsavev2_adam_module_wrapper_4_batchnorm_4_beta_m_read_readvariableopDsavev2_adam_module_wrapper_6_batchnorm_5_gamma_m_read_readvariableopCsavev2_adam_module_wrapper_6_batchnorm_5_beta_m_read_readvariableopDsavev2_adam_module_wrapper_7_batchnorm_6_gamma_m_read_readvariableopCsavev2_adam_module_wrapper_7_batchnorm_6_beta_m_read_readvariableopDsavev2_adam_module_wrapper_9_batchnorm_7_gamma_m_read_readvariableopCsavev2_adam_module_wrapper_9_batchnorm_7_beta_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopBsavev2_adam_module_wrapper_batchnorm_1_gamma_v_read_readvariableopAsavev2_adam_module_wrapper_batchnorm_1_beta_v_read_readvariableopDsavev2_adam_module_wrapper_1_batchnorm_2_gamma_v_read_readvariableopCsavev2_adam_module_wrapper_1_batchnorm_2_beta_v_read_readvariableopDsavev2_adam_module_wrapper_3_batchnorm_3_gamma_v_read_readvariableopCsavev2_adam_module_wrapper_3_batchnorm_3_beta_v_read_readvariableopDsavev2_adam_module_wrapper_4_batchnorm_4_gamma_v_read_readvariableopCsavev2_adam_module_wrapper_4_batchnorm_4_beta_v_read_readvariableopDsavev2_adam_module_wrapper_6_batchnorm_5_gamma_v_read_readvariableopCsavev2_adam_module_wrapper_6_batchnorm_5_beta_v_read_readvariableopDsavev2_adam_module_wrapper_7_batchnorm_6_gamma_v_read_readvariableopCsavev2_adam_module_wrapper_7_batchnorm_6_beta_v_read_readvariableopDsavev2_adam_module_wrapper_9_batchnorm_7_gamma_v_read_readvariableopCsavev2_adam_module_wrapper_9_batchnorm_7_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *А
dtypesv
t2r	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*р
_input_shapes╬
╦: :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АHА:А:	А:: : : : : :@:@:@:@:@:@:@:@:А:А:А:А:А:А:А:А:А:А:А:А:А:А:А:А:А:А:А:А: : : : :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АHА:А:	А::@:@:@:@:А:А:А:А:А:А:А:А:А:А:@:@:@@:@:@А:А:АА:А:АА:А:АА:А:
АHА:А:	А::@:@:@:@:А:А:А:А:А:А:А:А:А:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АHА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::
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
: :

_output_shapes
: : 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:!

_output_shapes	
:А:!

_output_shapes	
:А:! 

_output_shapes	
:А:!!

_output_shapes	
:А:!"

_output_shapes	
:А:!#

_output_shapes	
:А:!$

_output_shapes	
:А:!%

_output_shapes	
:А:!&

_output_shapes	
:А:!'

_output_shapes	
:А:!(

_output_shapes	
:А:!)

_output_shapes	
:А:!*

_output_shapes	
:А:!+

_output_shapes	
:А:!,

_output_shapes	
:А:!-

_output_shapes	
:А:!.

_output_shapes	
:А:!/

_output_shapes	
:А:!0

_output_shapes	
:А:!1

_output_shapes	
:А:2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :,6(
&
_output_shapes
:@: 7

_output_shapes
:@:,8(
&
_output_shapes
:@@: 9

_output_shapes
:@:-:)
'
_output_shapes
:@А:!;

_output_shapes	
:А:.<*
(
_output_shapes
:АА:!=

_output_shapes	
:А:.>*
(
_output_shapes
:АА:!?

_output_shapes	
:А:.@*
(
_output_shapes
:АА:!A

_output_shapes	
:А:&B"
 
_output_shapes
:
АHА:!C

_output_shapes	
:А:%D!

_output_shapes
:	А: E

_output_shapes
:: F

_output_shapes
:@: G

_output_shapes
:@: H

_output_shapes
:@: I

_output_shapes
:@:!J

_output_shapes	
:А:!K

_output_shapes	
:А:!L

_output_shapes	
:А:!M

_output_shapes	
:А:!N

_output_shapes	
:А:!O

_output_shapes	
:А:!P

_output_shapes	
:А:!Q

_output_shapes	
:А:!R

_output_shapes	
:А:!S

_output_shapes	
:А:,T(
&
_output_shapes
:@: U

_output_shapes
:@:,V(
&
_output_shapes
:@@: W

_output_shapes
:@:-X)
'
_output_shapes
:@А:!Y

_output_shapes	
:А:.Z*
(
_output_shapes
:АА:![

_output_shapes	
:А:.\*
(
_output_shapes
:АА:!]

_output_shapes	
:А:.^*
(
_output_shapes
:АА:!_

_output_shapes	
:А:&`"
 
_output_shapes
:
АHА:!a

_output_shapes	
:А:%b!

_output_shapes
:	А: c

_output_shapes
:: d

_output_shapes
:@: e

_output_shapes
:@: f

_output_shapes
:@: g

_output_shapes
:@:!h

_output_shapes	
:А:!i

_output_shapes	
:А:!j

_output_shapes	
:А:!k

_output_shapes	
:А:!l

_output_shapes	
:А:!m

_output_shapes	
:А:!n

_output_shapes	
:А:!o

_output_shapes	
:А:!p

_output_shapes	
:А:!q

_output_shapes	
:А:r

_output_shapes
: 
╞
Ю
)__inference_conv2d_1_layer_call_fn_138712

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1354932
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
р
╦
,__inference_batchnorm_5_layer_call_fn_139613

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_1376632
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
д
√
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_135570

args_02
#batchnorm_3_readvariableop_resource:	А4
%batchnorm_3_readvariableop_1_resource:	АC
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_3/FusedBatchNormV3/ReadVariableOpв-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_3/ReadVariableOpвbatchnorm_3/ReadVariableOp_1Щ
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOpЯ
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOp_1╠
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_3/FusedBatchNormV3Ч
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
ю
k
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_139003

args_0
identityИw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout_1/dropout/ConstЪ
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mulh
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape█
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_1/dropout/GreaterEqual/yя
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_1/dropout/GreaterEqualж
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_1/dropout/Castл
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mul_1x
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
╓
╟
,__inference_batchnorm_1_layer_call_fn_139378

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_1372032
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╓
J
.__inference_max_pooling2d_layer_call_fn_135406

inputs
identityэ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1354002
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░
╖
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_136257

args_02
#batchnorm_3_readvariableop_resource:	А4
%batchnorm_3_readvariableop_1_resource:	АC
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_3/AssignNewValueвbatchnorm_3/AssignNewValue_1в+batchnorm_3/FusedBatchNormV3/ReadVariableOpв-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_3/ReadVariableOpвbatchnorm_3/ReadVariableOp_1Щ
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOpЯ
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOp_1╠
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_3/FusedBatchNormV3■
batchnorm_3/AssignNewValueAssignVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource)batchnorm_3/FusedBatchNormV3:batch_mean:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValueК
batchnorm_3/AssignNewValue_1AssignVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource-batchnorm_3/FusedBatchNormV3:batch_variance:0.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValue_1╙
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0^batchnorm_3/AssignNewValue^batchnorm_3/AssignNewValue_1,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_3/AssignNewValuebatchnorm_3/AssignNewValue2<
batchnorm_3/AssignNewValue_1batchnorm_3/AssignNewValue_12Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
Б
Т
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_137285

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
С
Ц
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_137663

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Й
П
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_135776

args_0<
-batchnorm_7_batchnorm_readvariableop_resource:	А@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	А>
/batchnorm_7_batchnorm_readvariableop_1_resource:	А>
/batchnorm_7_batchnorm_readvariableop_2_resource:	А
identityИв$batchnorm_7/batchnorm/ReadVariableOpв&batchnorm_7/batchnorm/ReadVariableOp_1в&batchnorm_7/batchnorm/ReadVariableOp_2в(batchnorm_7/batchnorm/mul/ReadVariableOp╖
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm_7/batchnorm/add/y╣
batchnorm_7/batchnorm/addAddV2,batchnorm_7/batchnorm/ReadVariableOp:value:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/addИ
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/Rsqrt├
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp╢
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mulЫ
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/mul_1╜
&batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_1╢
batchnorm_7/batchnorm/mul_2Mul.batchnorm_7/batchnorm/ReadVariableOp_1:value:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mul_2╜
&batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_2┤
batchnorm_7/batchnorm/subSub.batchnorm_7/batchnorm/ReadVariableOp_2:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/sub╢
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/add_1Ш
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0%^batchnorm_7/batchnorm/ReadVariableOp'^batchnorm_7/batchnorm/ReadVariableOp_1'^batchnorm_7/batchnorm/ReadVariableOp_2)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2P
&batchnorm_7/batchnorm/ReadVariableOp_1&batchnorm_7/batchnorm/ReadVariableOp_12P
&batchnorm_7/batchnorm/ReadVariableOp_2&batchnorm_7/batchnorm/ReadVariableOp_22T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
┼
║
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_139662

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
О
√
B__inference_conv2d_layer_call_and_return_conditional_losses_135448

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:         00@2
EluЮ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
▒
h
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_138991

args_0
identityw
dropout_1/IdentityIdentityargs_0*
T0*0
_output_shapes
:         А2
dropout_1/Identityx
IdentityIdentitydropout_1/Identity:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
┼
║
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_137455

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╪
╟
,__inference_batchnorm_2_layer_call_fn_139427

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_1372852
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┐Б
Д/
F__inference_sequential_layer_call_and_return_conditional_losses_138621

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@@
2module_wrapper_batchnorm_1_readvariableop_resource:@B
4module_wrapper_batchnorm_1_readvariableop_1_resource:@Q
Cmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_resource:@S
Emodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@@6
(conv2d_1_biasadd_readvariableop_resource:@B
4module_wrapper_1_batchnorm_2_readvariableop_resource:@D
6module_wrapper_1_batchnorm_2_readvariableop_1_resource:@S
Emodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_resource:@U
Gmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
4module_wrapper_3_batchnorm_3_readvariableop_resource:	АE
6module_wrapper_3_batchnorm_3_readvariableop_1_resource:	АT
Emodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
4module_wrapper_4_batchnorm_4_readvariableop_resource:	АE
6module_wrapper_4_batchnorm_4_readvariableop_1_resource:	АT
Emodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	АC
4module_wrapper_6_batchnorm_5_readvariableop_resource:	АE
6module_wrapper_6_batchnorm_5_readvariableop_1_resource:	АT
Emodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_5_conv2d_readvariableop_resource:АА7
(conv2d_5_biasadd_readvariableop_resource:	АC
4module_wrapper_7_batchnorm_6_readvariableop_resource:	АE
6module_wrapper_7_batchnorm_6_readvariableop_1_resource:	АT
Emodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	А8
$dense_matmul_readvariableop_resource:
АHА4
%dense_biasadd_readvariableop_resource:	АS
Dmodule_wrapper_9_batchnorm_7_assignmovingavg_readvariableop_resource:	АU
Fmodule_wrapper_9_batchnorm_7_assignmovingavg_1_readvariableop_resource:	АQ
Bmodule_wrapper_9_batchnorm_7_batchnorm_mul_readvariableop_resource:	АM
>module_wrapper_9_batchnorm_7_batchnorm_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	А5
'dense_1_biasadd_readvariableop_resource:
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpв)module_wrapper/batchnorm_1/AssignNewValueв+module_wrapper/batchnorm_1/AssignNewValue_1в:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpв<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1в)module_wrapper/batchnorm_1/ReadVariableOpв+module_wrapper/batchnorm_1/ReadVariableOp_1в+module_wrapper_1/batchnorm_2/AssignNewValueв-module_wrapper_1/batchnorm_2/AssignNewValue_1в<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpв>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_1/batchnorm_2/ReadVariableOpв-module_wrapper_1/batchnorm_2/ReadVariableOp_1в+module_wrapper_3/batchnorm_3/AssignNewValueв-module_wrapper_3/batchnorm_3/AssignNewValue_1в<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpв>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_3/batchnorm_3/ReadVariableOpв-module_wrapper_3/batchnorm_3/ReadVariableOp_1в+module_wrapper_4/batchnorm_4/AssignNewValueв-module_wrapper_4/batchnorm_4/AssignNewValue_1в<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpв>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_4/batchnorm_4/ReadVariableOpв-module_wrapper_4/batchnorm_4/ReadVariableOp_1в+module_wrapper_6/batchnorm_5/AssignNewValueв-module_wrapper_6/batchnorm_5/AssignNewValue_1в<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpв>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_6/batchnorm_5/ReadVariableOpв-module_wrapper_6/batchnorm_5/ReadVariableOp_1в+module_wrapper_7/batchnorm_6/AssignNewValueв-module_wrapper_7/batchnorm_6/AssignNewValue_1в<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpв>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_7/batchnorm_6/ReadVariableOpв-module_wrapper_7/batchnorm_6/ReadVariableOp_1в,module_wrapper_9/batchnorm_7/AssignMovingAvgв;module_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOpв.module_wrapper_9/batchnorm_7/AssignMovingAvg_1в=module_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOpв5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpв9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
conv2d/BiasAddr

conv2d/EluEluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2

conv2d/Elu┼
)module_wrapper/batchnorm_1/ReadVariableOpReadVariableOp2module_wrapper_batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02+
)module_wrapper/batchnorm_1/ReadVariableOp╦
+module_wrapper/batchnorm_1/ReadVariableOp_1ReadVariableOp4module_wrapper_batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02-
+module_wrapper/batchnorm_1/ReadVariableOp_1°
:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOpCmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02<
:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp■
<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02>
<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1М
+module_wrapper/batchnorm_1/FusedBatchNormV3FusedBatchNormV3conv2d/Elu:activations:01module_wrapper/batchnorm_1/ReadVariableOp:value:03module_wrapper/batchnorm_1/ReadVariableOp_1:value:0Bmodule_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:0Dmodule_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2-
+module_wrapper/batchnorm_1/FusedBatchNormV3╔
)module_wrapper/batchnorm_1/AssignNewValueAssignVariableOpCmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_resource8module_wrapper/batchnorm_1/FusedBatchNormV3:batch_mean:0;^module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02+
)module_wrapper/batchnorm_1/AssignNewValue╒
+module_wrapper/batchnorm_1/AssignNewValue_1AssignVariableOpEmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource<module_wrapper/batchnorm_1/FusedBatchNormV3:batch_variance:0=^module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02-
+module_wrapper/batchnorm_1/AssignNewValue_1░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_1/Conv2D/ReadVariableOpч
conv2d_1/Conv2DConv2D/module_wrapper/batchnorm_1/FusedBatchNormV3:y:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
conv2d_1/Conv2Dз
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpм
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
conv2d_1/BiasAddx
conv2d_1/EluEluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2
conv2d_1/Elu╦
+module_wrapper_1/batchnorm_2/ReadVariableOpReadVariableOp4module_wrapper_1_batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02-
+module_wrapper_1/batchnorm_2/ReadVariableOp╤
-module_wrapper_1/batchnorm_2/ReadVariableOp_1ReadVariableOp6module_wrapper_1_batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-module_wrapper_1/batchnorm_2/ReadVariableOp_1■
<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02>
<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpД
>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02@
>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1Ъ
-module_wrapper_1/batchnorm_2/FusedBatchNormV3FusedBatchNormV3conv2d_1/Elu:activations:03module_wrapper_1/batchnorm_2/ReadVariableOp:value:05module_wrapper_1/batchnorm_2/ReadVariableOp_1:value:0Dmodule_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2/
-module_wrapper_1/batchnorm_2/FusedBatchNormV3╙
+module_wrapper_1/batchnorm_2/AssignNewValueAssignVariableOpEmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_resource:module_wrapper_1/batchnorm_2/FusedBatchNormV3:batch_mean:0=^module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02-
+module_wrapper_1/batchnorm_2/AssignNewValue▀
-module_wrapper_1/batchnorm_2/AssignNewValue_1AssignVariableOpGmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource>module_wrapper_1/batchnorm_2/FusedBatchNormV3:batch_variance:0?^module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02/
-module_wrapper_1/batchnorm_2/AssignNewValue_1┘
max_pooling2d/MaxPoolMaxPool1module_wrapper_1/batchnorm_2/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolХ
&module_wrapper_2/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2(
&module_wrapper_2/dropout/dropout/Const▐
$module_wrapper_2/dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0/module_wrapper_2/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2&
$module_wrapper_2/dropout/dropout/MulЮ
&module_wrapper_2/dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2(
&module_wrapper_2/dropout/dropout/ShapeЗ
=module_wrapper_2/dropout/dropout/random_uniform/RandomUniformRandomUniform/module_wrapper_2/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02?
=module_wrapper_2/dropout/dropout/random_uniform/RandomUniformз
/module_wrapper_2/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>21
/module_wrapper_2/dropout/dropout/GreaterEqual/yк
-module_wrapper_2/dropout/dropout/GreaterEqualGreaterEqualFmodule_wrapper_2/dropout/dropout/random_uniform/RandomUniform:output:08module_wrapper_2/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2/
-module_wrapper_2/dropout/dropout/GreaterEqual╥
%module_wrapper_2/dropout/dropout/CastCast1module_wrapper_2/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2'
%module_wrapper_2/dropout/dropout/Castц
&module_wrapper_2/dropout/dropout/Mul_1Mul(module_wrapper_2/dropout/dropout/Mul:z:0)module_wrapper_2/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2(
&module_wrapper_2/dropout/dropout/Mul_1▒
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_2/Conv2D/ReadVariableOpу
conv2d_2/Conv2DConv2D*module_wrapper_2/dropout/dropout/Mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_2/Conv2Dи
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpн
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_2/BiasAddy
conv2d_2/EluEluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_2/Elu╠
+module_wrapper_3/batchnorm_3/ReadVariableOpReadVariableOp4module_wrapper_3_batchnorm_3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_3/batchnorm_3/ReadVariableOp╥
-module_wrapper_3/batchnorm_3/ReadVariableOp_1ReadVariableOp6module_wrapper_3_batchnorm_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_3/batchnorm_3/ReadVariableOp_1 
<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1Я
-module_wrapper_3/batchnorm_3/FusedBatchNormV3FusedBatchNormV3conv2d_2/Elu:activations:03module_wrapper_3/batchnorm_3/ReadVariableOp:value:05module_wrapper_3/batchnorm_3/ReadVariableOp_1:value:0Dmodule_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2/
-module_wrapper_3/batchnorm_3/FusedBatchNormV3╙
+module_wrapper_3/batchnorm_3/AssignNewValueAssignVariableOpEmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_resource:module_wrapper_3/batchnorm_3/FusedBatchNormV3:batch_mean:0=^module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02-
+module_wrapper_3/batchnorm_3/AssignNewValue▀
-module_wrapper_3/batchnorm_3/AssignNewValue_1AssignVariableOpGmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource>module_wrapper_3/batchnorm_3/FusedBatchNormV3:batch_variance:0?^module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02/
-module_wrapper_3/batchnorm_3/AssignNewValue_1▓
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_3/Conv2D/ReadVariableOpъ
conv2d_3/Conv2DConv2D1module_wrapper_3/batchnorm_3/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_3/Conv2Dи
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpн
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_3/BiasAddy
conv2d_3/EluEluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_3/Elu╠
+module_wrapper_4/batchnorm_4/ReadVariableOpReadVariableOp4module_wrapper_4_batchnorm_4_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_4/batchnorm_4/ReadVariableOp╥
-module_wrapper_4/batchnorm_4/ReadVariableOp_1ReadVariableOp6module_wrapper_4_batchnorm_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_4/batchnorm_4/ReadVariableOp_1 
<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1Я
-module_wrapper_4/batchnorm_4/FusedBatchNormV3FusedBatchNormV3conv2d_3/Elu:activations:03module_wrapper_4/batchnorm_4/ReadVariableOp:value:05module_wrapper_4/batchnorm_4/ReadVariableOp_1:value:0Dmodule_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2/
-module_wrapper_4/batchnorm_4/FusedBatchNormV3╙
+module_wrapper_4/batchnorm_4/AssignNewValueAssignVariableOpEmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_resource:module_wrapper_4/batchnorm_4/FusedBatchNormV3:batch_mean:0=^module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02-
+module_wrapper_4/batchnorm_4/AssignNewValue▀
-module_wrapper_4/batchnorm_4/AssignNewValue_1AssignVariableOpGmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource>module_wrapper_4/batchnorm_4/FusedBatchNormV3:batch_variance:0?^module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02/
-module_wrapper_4/batchnorm_4/AssignNewValue_1▐
max_pooling2d_1/MaxPoolMaxPool1module_wrapper_4/batchnorm_4/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolЩ
(module_wrapper_5/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2*
(module_wrapper_5/dropout_1/dropout/Constч
&module_wrapper_5/dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:01module_wrapper_5/dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2(
&module_wrapper_5/dropout_1/dropout/Mulд
(module_wrapper_5/dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2*
(module_wrapper_5/dropout_1/dropout/ShapeО
?module_wrapper_5/dropout_1/dropout/random_uniform/RandomUniformRandomUniform1module_wrapper_5/dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02A
?module_wrapper_5/dropout_1/dropout/random_uniform/RandomUniformл
1module_wrapper_5/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>23
1module_wrapper_5/dropout_1/dropout/GreaterEqual/y│
/module_wrapper_5/dropout_1/dropout/GreaterEqualGreaterEqualHmodule_wrapper_5/dropout_1/dropout/random_uniform/RandomUniform:output:0:module_wrapper_5/dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А21
/module_wrapper_5/dropout_1/dropout/GreaterEqual┘
'module_wrapper_5/dropout_1/dropout/CastCast3module_wrapper_5/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2)
'module_wrapper_5/dropout_1/dropout/Castя
(module_wrapper_5/dropout_1/dropout/Mul_1Mul*module_wrapper_5/dropout_1/dropout/Mul:z:0+module_wrapper_5/dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2*
(module_wrapper_5/dropout_1/dropout/Mul_1▓
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_4/Conv2D/ReadVariableOpх
conv2d_4/Conv2DConv2D,module_wrapper_5/dropout_1/dropout/Mul_1:z:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_4/Conv2Dи
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpн
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_4/BiasAddy
conv2d_4/EluEluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_4/Elu╠
+module_wrapper_6/batchnorm_5/ReadVariableOpReadVariableOp4module_wrapper_6_batchnorm_5_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_6/batchnorm_5/ReadVariableOp╥
-module_wrapper_6/batchnorm_5/ReadVariableOp_1ReadVariableOp6module_wrapper_6_batchnorm_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_6/batchnorm_5/ReadVariableOp_1 
<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1Я
-module_wrapper_6/batchnorm_5/FusedBatchNormV3FusedBatchNormV3conv2d_4/Elu:activations:03module_wrapper_6/batchnorm_5/ReadVariableOp:value:05module_wrapper_6/batchnorm_5/ReadVariableOp_1:value:0Dmodule_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2/
-module_wrapper_6/batchnorm_5/FusedBatchNormV3╙
+module_wrapper_6/batchnorm_5/AssignNewValueAssignVariableOpEmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_resource:module_wrapper_6/batchnorm_5/FusedBatchNormV3:batch_mean:0=^module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02-
+module_wrapper_6/batchnorm_5/AssignNewValue▀
-module_wrapper_6/batchnorm_5/AssignNewValue_1AssignVariableOpGmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource>module_wrapper_6/batchnorm_5/FusedBatchNormV3:batch_variance:0?^module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02/
-module_wrapper_6/batchnorm_5/AssignNewValue_1▓
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_5/Conv2D/ReadVariableOpъ
conv2d_5/Conv2DConv2D1module_wrapper_6/batchnorm_5/FusedBatchNormV3:y:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_5/Conv2Dи
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpн
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_5/BiasAddy
conv2d_5/EluEluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_5/Elu╠
+module_wrapper_7/batchnorm_6/ReadVariableOpReadVariableOp4module_wrapper_7_batchnorm_6_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_7/batchnorm_6/ReadVariableOp╥
-module_wrapper_7/batchnorm_6/ReadVariableOp_1ReadVariableOp6module_wrapper_7_batchnorm_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_7/batchnorm_6/ReadVariableOp_1 
<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1Я
-module_wrapper_7/batchnorm_6/FusedBatchNormV3FusedBatchNormV3conv2d_5/Elu:activations:03module_wrapper_7/batchnorm_6/ReadVariableOp:value:05module_wrapper_7/batchnorm_6/ReadVariableOp_1:value:0Dmodule_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2/
-module_wrapper_7/batchnorm_6/FusedBatchNormV3╙
+module_wrapper_7/batchnorm_6/AssignNewValueAssignVariableOpEmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_resource:module_wrapper_7/batchnorm_6/FusedBatchNormV3:batch_mean:0=^module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02-
+module_wrapper_7/batchnorm_6/AssignNewValue▀
-module_wrapper_7/batchnorm_6/AssignNewValue_1AssignVariableOpGmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource>module_wrapper_7/batchnorm_6/FusedBatchNormV3:batch_variance:0?^module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02/
-module_wrapper_7/batchnorm_6/AssignNewValue_1▐
max_pooling2d_2/MaxPoolMaxPool1module_wrapper_7/batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolЩ
(module_wrapper_8/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(module_wrapper_8/dropout_2/dropout/Constч
&module_wrapper_8/dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:01module_wrapper_8/dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:         А2(
&module_wrapper_8/dropout_2/dropout/Mulд
(module_wrapper_8/dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2*
(module_wrapper_8/dropout_2/dropout/ShapeО
?module_wrapper_8/dropout_2/dropout/random_uniform/RandomUniformRandomUniform1module_wrapper_8/dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02A
?module_wrapper_8/dropout_2/dropout/random_uniform/RandomUniformл
1module_wrapper_8/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1module_wrapper_8/dropout_2/dropout/GreaterEqual/y│
/module_wrapper_8/dropout_2/dropout/GreaterEqualGreaterEqualHmodule_wrapper_8/dropout_2/dropout/random_uniform/RandomUniform:output:0:module_wrapper_8/dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А21
/module_wrapper_8/dropout_2/dropout/GreaterEqual┘
'module_wrapper_8/dropout_2/dropout/CastCast3module_wrapper_8/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2)
'module_wrapper_8/dropout_2/dropout/Castя
(module_wrapper_8/dropout_2/dropout/Mul_1Mul*module_wrapper_8/dropout_2/dropout/Mul:z:0+module_wrapper_8/dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2*
(module_wrapper_8/dropout_2/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  2
flatten/Constж
flatten/ReshapeReshape,module_wrapper_8/dropout_2/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         АH2
flatten/Reshapeб
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/BiasAddh
	dense/EluEludense/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
	dense/Elu─
;module_wrapper_9/batchnorm_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2=
;module_wrapper_9/batchnorm_7/moments/mean/reduction_indices°
)module_wrapper_9/batchnorm_7/moments/meanMeandense/Elu:activations:0Dmodule_wrapper_9/batchnorm_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2+
)module_wrapper_9/batchnorm_7/moments/mean╘
1module_wrapper_9/batchnorm_7/moments/StopGradientStopGradient2module_wrapper_9/batchnorm_7/moments/mean:output:0*
T0*
_output_shapes
:	А23
1module_wrapper_9/batchnorm_7/moments/StopGradientН
6module_wrapper_9/batchnorm_7/moments/SquaredDifferenceSquaredDifferencedense/Elu:activations:0:module_wrapper_9/batchnorm_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:         А28
6module_wrapper_9/batchnorm_7/moments/SquaredDifference╠
?module_wrapper_9/batchnorm_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2A
?module_wrapper_9/batchnorm_7/moments/variance/reduction_indicesз
-module_wrapper_9/batchnorm_7/moments/varianceMean:module_wrapper_9/batchnorm_7/moments/SquaredDifference:z:0Hmodule_wrapper_9/batchnorm_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2/
-module_wrapper_9/batchnorm_7/moments/variance╪
,module_wrapper_9/batchnorm_7/moments/SqueezeSqueeze2module_wrapper_9/batchnorm_7/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2.
,module_wrapper_9/batchnorm_7/moments/Squeezeр
.module_wrapper_9/batchnorm_7/moments/Squeeze_1Squeeze6module_wrapper_9/batchnorm_7/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 20
.module_wrapper_9/batchnorm_7/moments/Squeeze_1н
2module_wrapper_9/batchnorm_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<24
2module_wrapper_9/batchnorm_7/AssignMovingAvg/decay№
;module_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOpReadVariableOpDmodule_wrapper_9_batchnorm_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype02=
;module_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOpН
0module_wrapper_9/batchnorm_7/AssignMovingAvg/subSubCmodule_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOp:value:05module_wrapper_9/batchnorm_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:А22
0module_wrapper_9/batchnorm_7/AssignMovingAvg/subД
0module_wrapper_9/batchnorm_7/AssignMovingAvg/mulMul4module_wrapper_9/batchnorm_7/AssignMovingAvg/sub:z:0;module_wrapper_9/batchnorm_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А22
0module_wrapper_9/batchnorm_7/AssignMovingAvg/mul╨
,module_wrapper_9/batchnorm_7/AssignMovingAvgAssignSubVariableOpDmodule_wrapper_9_batchnorm_7_assignmovingavg_readvariableop_resource4module_wrapper_9/batchnorm_7/AssignMovingAvg/mul:z:0<^module_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02.
,module_wrapper_9/batchnorm_7/AssignMovingAvg▒
4module_wrapper_9/batchnorm_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<26
4module_wrapper_9/batchnorm_7/AssignMovingAvg_1/decayВ
=module_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOpReadVariableOpFmodule_wrapper_9_batchnorm_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02?
=module_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOpХ
2module_wrapper_9/batchnorm_7/AssignMovingAvg_1/subSubEmodule_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOp:value:07module_wrapper_9/batchnorm_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А24
2module_wrapper_9/batchnorm_7/AssignMovingAvg_1/subМ
2module_wrapper_9/batchnorm_7/AssignMovingAvg_1/mulMul6module_wrapper_9/batchnorm_7/AssignMovingAvg_1/sub:z:0=module_wrapper_9/batchnorm_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А24
2module_wrapper_9/batchnorm_7/AssignMovingAvg_1/mul┌
.module_wrapper_9/batchnorm_7/AssignMovingAvg_1AssignSubVariableOpFmodule_wrapper_9_batchnorm_7_assignmovingavg_1_readvariableop_resource6module_wrapper_9/batchnorm_7/AssignMovingAvg_1/mul:z:0>^module_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype020
.module_wrapper_9/batchnorm_7/AssignMovingAvg_1б
,module_wrapper_9/batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,module_wrapper_9/batchnorm_7/batchnorm/add/yў
*module_wrapper_9/batchnorm_7/batchnorm/addAddV27module_wrapper_9/batchnorm_7/moments/Squeeze_1:output:05module_wrapper_9/batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2,
*module_wrapper_9/batchnorm_7/batchnorm/add╗
,module_wrapper_9/batchnorm_7/batchnorm/RsqrtRsqrt.module_wrapper_9/batchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:А2.
,module_wrapper_9/batchnorm_7/batchnorm/RsqrtЎ
9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOpBmodule_wrapper_9_batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp·
*module_wrapper_9/batchnorm_7/batchnorm/mulMul0module_wrapper_9/batchnorm_7/batchnorm/Rsqrt:y:0Amodule_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2,
*module_wrapper_9/batchnorm_7/batchnorm/mul▀
,module_wrapper_9/batchnorm_7/batchnorm/mul_1Muldense/Elu:activations:0.module_wrapper_9/batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2.
,module_wrapper_9/batchnorm_7/batchnorm/mul_1Ё
,module_wrapper_9/batchnorm_7/batchnorm/mul_2Mul5module_wrapper_9/batchnorm_7/moments/Squeeze:output:0.module_wrapper_9/batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2.
,module_wrapper_9/batchnorm_7/batchnorm/mul_2ъ
5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpReadVariableOp>module_wrapper_9_batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype027
5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpЎ
*module_wrapper_9/batchnorm_7/batchnorm/subSub=module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp:value:00module_wrapper_9/batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2,
*module_wrapper_9/batchnorm_7/batchnorm/sub·
,module_wrapper_9/batchnorm_7/batchnorm/add_1AddV20module_wrapper_9/batchnorm_7/batchnorm/mul_1:z:0.module_wrapper_9/batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2.
,module_wrapper_9/batchnorm_7/batchnorm/add_1Ы
)module_wrapper_10/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)module_wrapper_10/dropout_3/dropout/ConstЄ
'module_wrapper_10/dropout_3/dropout/MulMul0module_wrapper_9/batchnorm_7/batchnorm/add_1:z:02module_wrapper_10/dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:         А2)
'module_wrapper_10/dropout_3/dropout/Mul╢
)module_wrapper_10/dropout_3/dropout/ShapeShape0module_wrapper_9/batchnorm_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)module_wrapper_10/dropout_3/dropout/ShapeЙ
@module_wrapper_10/dropout_3/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_10/dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02B
@module_wrapper_10/dropout_3/dropout/random_uniform/RandomUniformн
2module_wrapper_10/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ?24
2module_wrapper_10/dropout_3/dropout/GreaterEqual/yп
0module_wrapper_10/dropout_3/dropout/GreaterEqualGreaterEqualImodule_wrapper_10/dropout_3/dropout/random_uniform/RandomUniform:output:0;module_wrapper_10/dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А22
0module_wrapper_10/dropout_3/dropout/GreaterEqual╘
(module_wrapper_10/dropout_3/dropout/CastCast4module_wrapper_10/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2*
(module_wrapper_10/dropout_3/dropout/Castы
)module_wrapper_10/dropout_3/dropout/Mul_1Mul+module_wrapper_10/dropout_3/dropout/Mul:z:0,module_wrapper_10/dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2+
)module_wrapper_10/dropout_3/dropout/Mul_1ж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOp▓
dense_1/MatMulMatMul-module_wrapper_10/dropout_3/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Softmaxз
IdentityIdentitydense_1/Softmax:softmax:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^module_wrapper/batchnorm_1/AssignNewValue,^module_wrapper/batchnorm_1/AssignNewValue_1;^module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp=^module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*^module_wrapper/batchnorm_1/ReadVariableOp,^module_wrapper/batchnorm_1/ReadVariableOp_1,^module_wrapper_1/batchnorm_2/AssignNewValue.^module_wrapper_1/batchnorm_2/AssignNewValue_1=^module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp?^module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_1/batchnorm_2/ReadVariableOp.^module_wrapper_1/batchnorm_2/ReadVariableOp_1,^module_wrapper_3/batchnorm_3/AssignNewValue.^module_wrapper_3/batchnorm_3/AssignNewValue_1=^module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp?^module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_3/batchnorm_3/ReadVariableOp.^module_wrapper_3/batchnorm_3/ReadVariableOp_1,^module_wrapper_4/batchnorm_4/AssignNewValue.^module_wrapper_4/batchnorm_4/AssignNewValue_1=^module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp?^module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_4/batchnorm_4/ReadVariableOp.^module_wrapper_4/batchnorm_4/ReadVariableOp_1,^module_wrapper_6/batchnorm_5/AssignNewValue.^module_wrapper_6/batchnorm_5/AssignNewValue_1=^module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp?^module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_6/batchnorm_5/ReadVariableOp.^module_wrapper_6/batchnorm_5/ReadVariableOp_1,^module_wrapper_7/batchnorm_6/AssignNewValue.^module_wrapper_7/batchnorm_6/AssignNewValue_1=^module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp?^module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_7/batchnorm_6/ReadVariableOp.^module_wrapper_7/batchnorm_6/ReadVariableOp_1-^module_wrapper_9/batchnorm_7/AssignMovingAvg<^module_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOp/^module_wrapper_9/batchnorm_7/AssignMovingAvg_1>^module_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOp6^module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp:^module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)module_wrapper/batchnorm_1/AssignNewValue)module_wrapper/batchnorm_1/AssignNewValue2Z
+module_wrapper/batchnorm_1/AssignNewValue_1+module_wrapper/batchnorm_1/AssignNewValue_12x
:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp2|
<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_12V
)module_wrapper/batchnorm_1/ReadVariableOp)module_wrapper/batchnorm_1/ReadVariableOp2Z
+module_wrapper/batchnorm_1/ReadVariableOp_1+module_wrapper/batchnorm_1/ReadVariableOp_12Z
+module_wrapper_1/batchnorm_2/AssignNewValue+module_wrapper_1/batchnorm_2/AssignNewValue2^
-module_wrapper_1/batchnorm_2/AssignNewValue_1-module_wrapper_1/batchnorm_2/AssignNewValue_12|
<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_1/batchnorm_2/ReadVariableOp+module_wrapper_1/batchnorm_2/ReadVariableOp2^
-module_wrapper_1/batchnorm_2/ReadVariableOp_1-module_wrapper_1/batchnorm_2/ReadVariableOp_12Z
+module_wrapper_3/batchnorm_3/AssignNewValue+module_wrapper_3/batchnorm_3/AssignNewValue2^
-module_wrapper_3/batchnorm_3/AssignNewValue_1-module_wrapper_3/batchnorm_3/AssignNewValue_12|
<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_3/batchnorm_3/ReadVariableOp+module_wrapper_3/batchnorm_3/ReadVariableOp2^
-module_wrapper_3/batchnorm_3/ReadVariableOp_1-module_wrapper_3/batchnorm_3/ReadVariableOp_12Z
+module_wrapper_4/batchnorm_4/AssignNewValue+module_wrapper_4/batchnorm_4/AssignNewValue2^
-module_wrapper_4/batchnorm_4/AssignNewValue_1-module_wrapper_4/batchnorm_4/AssignNewValue_12|
<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_4/batchnorm_4/ReadVariableOp+module_wrapper_4/batchnorm_4/ReadVariableOp2^
-module_wrapper_4/batchnorm_4/ReadVariableOp_1-module_wrapper_4/batchnorm_4/ReadVariableOp_12Z
+module_wrapper_6/batchnorm_5/AssignNewValue+module_wrapper_6/batchnorm_5/AssignNewValue2^
-module_wrapper_6/batchnorm_5/AssignNewValue_1-module_wrapper_6/batchnorm_5/AssignNewValue_12|
<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_6/batchnorm_5/ReadVariableOp+module_wrapper_6/batchnorm_5/ReadVariableOp2^
-module_wrapper_6/batchnorm_5/ReadVariableOp_1-module_wrapper_6/batchnorm_5/ReadVariableOp_12Z
+module_wrapper_7/batchnorm_6/AssignNewValue+module_wrapper_7/batchnorm_6/AssignNewValue2^
-module_wrapper_7/batchnorm_6/AssignNewValue_1-module_wrapper_7/batchnorm_6/AssignNewValue_12|
<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_7/batchnorm_6/ReadVariableOp+module_wrapper_7/batchnorm_6/ReadVariableOp2^
-module_wrapper_7/batchnorm_6/ReadVariableOp_1-module_wrapper_7/batchnorm_6/ReadVariableOp_12\
,module_wrapper_9/batchnorm_7/AssignMovingAvg,module_wrapper_9/batchnorm_7/AssignMovingAvg2z
;module_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOp;module_wrapper_9/batchnorm_7/AssignMovingAvg/ReadVariableOp2`
.module_wrapper_9/batchnorm_7/AssignMovingAvg_1.module_wrapper_9/batchnorm_7/AssignMovingAvg_12~
=module_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOp=module_wrapper_9/batchnorm_7/AssignMovingAvg_1/ReadVariableOp2n
5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp2v
9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
ж
к
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_139770

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╖

ї
C__inference_dense_1_layer_call_and_return_conditional_losses_135804

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ь
А
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135689

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
█}
т
F__inference_sequential_layer_call_and_return_conditional_losses_136621

inputs'
conv2d_136509:@
conv2d_136511:@#
module_wrapper_136514:@#
module_wrapper_136516:@#
module_wrapper_136518:@#
module_wrapper_136520:@)
conv2d_1_136523:@@
conv2d_1_136525:@%
module_wrapper_1_136528:@%
module_wrapper_1_136530:@%
module_wrapper_1_136532:@%
module_wrapper_1_136534:@*
conv2d_2_136539:@А
conv2d_2_136541:	А&
module_wrapper_3_136544:	А&
module_wrapper_3_136546:	А&
module_wrapper_3_136548:	А&
module_wrapper_3_136550:	А+
conv2d_3_136553:АА
conv2d_3_136555:	А&
module_wrapper_4_136558:	А&
module_wrapper_4_136560:	А&
module_wrapper_4_136562:	А&
module_wrapper_4_136564:	А+
conv2d_4_136569:АА
conv2d_4_136571:	А&
module_wrapper_6_136574:	А&
module_wrapper_6_136576:	А&
module_wrapper_6_136578:	А&
module_wrapper_6_136580:	А+
conv2d_5_136583:АА
conv2d_5_136585:	А&
module_wrapper_7_136588:	А&
module_wrapper_7_136590:	А&
module_wrapper_7_136592:	А&
module_wrapper_7_136594:	А 
dense_136600:
АHА
dense_136602:	А&
module_wrapper_9_136605:	А&
module_wrapper_9_136607:	А&
module_wrapper_9_136609:	А&
module_wrapper_9_136611:	А!
dense_1_136615:	А
dense_1_136617:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallв&module_wrapper/StatefulPartitionedCallв(module_wrapper_1/StatefulPartitionedCallв)module_wrapper_10/StatefulPartitionedCallв(module_wrapper_2/StatefulPartitionedCallв(module_wrapper_3/StatefulPartitionedCallв(module_wrapper_4/StatefulPartitionedCallв(module_wrapper_5/StatefulPartitionedCallв(module_wrapper_6/StatefulPartitionedCallв(module_wrapper_7/StatefulPartitionedCallв(module_wrapper_8/StatefulPartitionedCallв(module_wrapper_9/StatefulPartitionedCallХ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_136509conv2d_136511*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1354482 
conv2d/StatefulPartitionedCallО
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0module_wrapper_136514module_wrapper_136516module_wrapper_136518module_wrapper_136520*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_1363902(
&module_wrapper/StatefulPartitionedCall╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0conv2d_1_136523conv2d_1_136525*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1354932"
 conv2d_1/StatefulPartitionedCallЮ
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0module_wrapper_1_136528module_wrapper_1_136530module_wrapper_1_136532module_wrapper_1_136534*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1363352*
(module_wrapper_1/StatefulPartitionedCallЩ
max_pooling2d/PartitionedCallPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1354002
max_pooling2d/PartitionedCallп
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1362982*
(module_wrapper_2/StatefulPartitionedCall╦
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0conv2d_2_136539conv2d_2_136541*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1355462"
 conv2d_2/StatefulPartitionedCallЯ
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0module_wrapper_3_136544module_wrapper_3_136546module_wrapper_3_136548module_wrapper_3_136550*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1362572*
(module_wrapper_3/StatefulPartitionedCall╦
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0conv2d_3_136553conv2d_3_136555*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1355912"
 conv2d_3/StatefulPartitionedCallЯ
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0module_wrapper_4_136558module_wrapper_4_136560module_wrapper_4_136562module_wrapper_4_136564*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1362022*
(module_wrapper_4/StatefulPartitionedCallа
max_pooling2d_1/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1354122!
max_pooling2d_1/PartitionedCall▌
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0)^module_wrapper_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1361652*
(module_wrapper_5/StatefulPartitionedCall╦
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_5/StatefulPartitionedCall:output:0conv2d_4_136569conv2d_4_136571*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1356442"
 conv2d_4/StatefulPartitionedCallЯ
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0module_wrapper_6_136574module_wrapper_6_136576module_wrapper_6_136578module_wrapper_6_136580*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1361242*
(module_wrapper_6/StatefulPartitionedCall╦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0conv2d_5_136583conv2d_5_136585*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1356892"
 conv2d_5/StatefulPartitionedCallЯ
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0module_wrapper_7_136588module_wrapper_7_136590module_wrapper_7_136592module_wrapper_7_136594*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1360692*
(module_wrapper_7/StatefulPartitionedCallа
max_pooling2d_2/PartitionedCallPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1354242!
max_pooling2d_2/PartitionedCall▌
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0)^module_wrapper_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1360322*
(module_wrapper_8/StatefulPartitionedCallА
flatten/PartitionedCallPartitionedCall1module_wrapper_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1357372
flatten/PartitionedCallг
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_136600dense_136602*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1357502
dense/StatefulPartitionedCallФ
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0module_wrapper_9_136605module_wrapper_9_136607module_wrapper_9_136609module_wrapper_9_136611*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1359852*
(module_wrapper_9/StatefulPartitionedCallс
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0)^module_wrapper_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1359322+
)module_wrapper_10/StatefulPartitionedCall╛
dense_1/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0dense_1_136615dense_1_136617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1358042!
dense_1/StatefulPartitionedCallц
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
Й
П
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_139271

args_0<
-batchnorm_7_batchnorm_readvariableop_resource:	А@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	А>
/batchnorm_7_batchnorm_readvariableop_1_resource:	А>
/batchnorm_7_batchnorm_readvariableop_2_resource:	А
identityИв$batchnorm_7/batchnorm/ReadVariableOpв&batchnorm_7/batchnorm/ReadVariableOp_1в&batchnorm_7/batchnorm/ReadVariableOp_2в(batchnorm_7/batchnorm/mul/ReadVariableOp╖
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm_7/batchnorm/add/y╣
batchnorm_7/batchnorm/addAddV2,batchnorm_7/batchnorm/ReadVariableOp:value:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/addИ
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/Rsqrt├
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp╢
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mulЫ
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/mul_1╜
&batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_1╢
batchnorm_7/batchnorm/mul_2Mul.batchnorm_7/batchnorm/ReadVariableOp_1:value:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mul_2╜
&batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_2┤
batchnorm_7/batchnorm/subSub.batchnorm_7/batchnorm/ReadVariableOp_2:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/sub╢
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/add_1Ш
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0%^batchnorm_7/batchnorm/ReadVariableOp'^batchnorm_7/batchnorm/ReadVariableOp_1'^batchnorm_7/batchnorm/ReadVariableOp_2)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2P
&batchnorm_7/batchnorm/ReadVariableOp_1&batchnorm_7/batchnorm/ReadVariableOp_12P
&batchnorm_7/batchnorm/ReadVariableOp_2&batchnorm_7/batchnorm/ReadVariableOp_22T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
С
Ц
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_139520

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Т
i
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_135791

args_0
identityo
dropout_3/IdentityIdentityargs_0*
T0*(
_output_shapes
:         А2
dropout_3/Identityp
IdentityIdentitydropout_3/Identity:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
Т
ї
J__inference_module_wrapper_layer_call_and_return_conditional_losses_138685

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identityИв+batchnorm_1/FusedBatchNormV3/ReadVariableOpв-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_1/ReadVariableOpвbatchnorm_1/ReadVariableOp_1Ш
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOpЮ
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1╦
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1Т
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
batchnorm_1/FusedBatchNormV3Ц
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 2Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
Ї
┬

+__inference_sequential_layer_call_fn_138148

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
АHА

unknown_36:	А

unknown_37:	А

unknown_38:	А

unknown_39:	А

unknown_40:	А

unknown_41:	А

unknown_42:
identityИвStatefulPartitionedCall╝
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
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1358112
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
д
√
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_138876

args_02
#batchnorm_3_readvariableop_resource:	А4
%batchnorm_3_readvariableop_1_resource:	АC
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_3/FusedBatchNormV3/ReadVariableOpв-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_3/ReadVariableOpвbatchnorm_3/ReadVariableOp_1Щ
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOpЯ
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOp_1╠
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_3/FusedBatchNormV3Ч
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
╓
╟
,__inference_batchnorm_2_layer_call_fn_139440

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_1373292
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╞v
╗
F__inference_sequential_layer_call_and_return_conditional_losses_136920
conv2d_input'
conv2d_136808:@
conv2d_136810:@#
module_wrapper_136813:@#
module_wrapper_136815:@#
module_wrapper_136817:@#
module_wrapper_136819:@)
conv2d_1_136822:@@
conv2d_1_136824:@%
module_wrapper_1_136827:@%
module_wrapper_1_136829:@%
module_wrapper_1_136831:@%
module_wrapper_1_136833:@*
conv2d_2_136838:@А
conv2d_2_136840:	А&
module_wrapper_3_136843:	А&
module_wrapper_3_136845:	А&
module_wrapper_3_136847:	А&
module_wrapper_3_136849:	А+
conv2d_3_136852:АА
conv2d_3_136854:	А&
module_wrapper_4_136857:	А&
module_wrapper_4_136859:	А&
module_wrapper_4_136861:	А&
module_wrapper_4_136863:	А+
conv2d_4_136868:АА
conv2d_4_136870:	А&
module_wrapper_6_136873:	А&
module_wrapper_6_136875:	А&
module_wrapper_6_136877:	А&
module_wrapper_6_136879:	А+
conv2d_5_136882:АА
conv2d_5_136884:	А&
module_wrapper_7_136887:	А&
module_wrapper_7_136889:	А&
module_wrapper_7_136891:	А&
module_wrapper_7_136893:	А 
dense_136899:
АHА
dense_136901:	А&
module_wrapper_9_136904:	А&
module_wrapper_9_136906:	А&
module_wrapper_9_136908:	А&
module_wrapper_9_136910:	А!
dense_1_136914:	А
dense_1_136916:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallв&module_wrapper/StatefulPartitionedCallв(module_wrapper_1/StatefulPartitionedCallв(module_wrapper_3/StatefulPartitionedCallв(module_wrapper_4/StatefulPartitionedCallв(module_wrapper_6/StatefulPartitionedCallв(module_wrapper_7/StatefulPartitionedCallв(module_wrapper_9/StatefulPartitionedCallЫ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_136808conv2d_136810*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1354482 
conv2d/StatefulPartitionedCallР
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0module_wrapper_136813module_wrapper_136815module_wrapper_136817module_wrapper_136819*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_1354722(
&module_wrapper/StatefulPartitionedCall╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0conv2d_1_136822conv2d_1_136824*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1354932"
 conv2d_1/StatefulPartitionedCallа
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0module_wrapper_1_136827module_wrapper_1_136829module_wrapper_1_136831module_wrapper_1_136833*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1355172*
(module_wrapper_1/StatefulPartitionedCallЩ
max_pooling2d/PartitionedCallPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1354002
max_pooling2d/PartitionedCallЧ
 module_wrapper_2/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1355332"
 module_wrapper_2/PartitionedCall├
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_2/PartitionedCall:output:0conv2d_2_136838conv2d_2_136840*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1355462"
 conv2d_2/StatefulPartitionedCallб
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0module_wrapper_3_136843module_wrapper_3_136845module_wrapper_3_136847module_wrapper_3_136849*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1355702*
(module_wrapper_3/StatefulPartitionedCall╦
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0conv2d_3_136852conv2d_3_136854*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1355912"
 conv2d_3/StatefulPartitionedCallб
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0module_wrapper_4_136857module_wrapper_4_136859module_wrapper_4_136861module_wrapper_4_136863*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1356152*
(module_wrapper_4/StatefulPartitionedCallа
max_pooling2d_1/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1354122!
max_pooling2d_1/PartitionedCallЪ
 module_wrapper_5/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1356312"
 module_wrapper_5/PartitionedCall├
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0conv2d_4_136868conv2d_4_136870*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1356442"
 conv2d_4/StatefulPartitionedCallб
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0module_wrapper_6_136873module_wrapper_6_136875module_wrapper_6_136877module_wrapper_6_136879*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1356682*
(module_wrapper_6/StatefulPartitionedCall╦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0conv2d_5_136882conv2d_5_136884*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1356892"
 conv2d_5/StatefulPartitionedCallб
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0module_wrapper_7_136887module_wrapper_7_136889module_wrapper_7_136891module_wrapper_7_136893*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1357132*
(module_wrapper_7/StatefulPartitionedCallа
max_pooling2d_2/PartitionedCallPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1354242!
max_pooling2d_2/PartitionedCallЪ
 module_wrapper_8/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1357292"
 module_wrapper_8/PartitionedCall°
flatten/PartitionedCallPartitionedCall)module_wrapper_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1357372
flatten/PartitionedCallг
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_136899dense_136901*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1357502
dense/StatefulPartitionedCallЦ
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0module_wrapper_9_136904module_wrapper_9_136906module_wrapper_9_136908module_wrapper_9_136910*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1357762*
(module_wrapper_9/StatefulPartitionedCallЮ
!module_wrapper_10/PartitionedCallPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1357912#
!module_wrapper_10/PartitionedCall╢
dense_1/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_10/PartitionedCall:output:0dense_1_136914dense_1_136916*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1358042!
dense_1/StatefulPartitionedCall╣
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:] Y
/
_output_shapes
:         00
&
_user_specified_nameconv2d_input
Б
Т
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_137159

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
С
Ц
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_139582

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
п
l
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_135932

args_0
identityИw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/dropout/ConstТ
dropout_3/dropout/MulMulargs_0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mulh
dropout_3/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape╙
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ?2"
 dropout_3/dropout/GreaterEqual/yч
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2 
dropout_3/dropout/GreaterEqualЮ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_3/dropout/Castг
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mul_1p
IdentityIdentitydropout_3/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
Ь
А
D__inference_conv2d_3_layer_call_and_return_conditional_losses_138914

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ц
╩
/__inference_module_wrapper_layer_call_fn_138654

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_1354722
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
░
╖
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_139167

args_02
#batchnorm_6_readvariableop_resource:	А4
%batchnorm_6_readvariableop_1_resource:	АC
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_6/AssignNewValueвbatchnorm_6/AssignNewValue_1в+batchnorm_6/FusedBatchNormV3/ReadVariableOpв-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_6/ReadVariableOpвbatchnorm_6/ReadVariableOp_1Щ
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOpЯ
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOp_1╠
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_6/FusedBatchNormV3■
batchnorm_6/AssignNewValueAssignVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource)batchnorm_6/FusedBatchNormV3:batch_mean:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValueК
batchnorm_6/AssignNewValue_1AssignVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource-batchnorm_6/FusedBatchNormV3:batch_variance:0.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValue_1╙
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0^batchnorm_6/AssignNewValue^batchnorm_6/AssignNewValue_1,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_6/AssignNewValuebatchnorm_6/AssignNewValue2<
batchnorm_6/AssignNewValue_1batchnorm_6/AssignNewValue_12Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
┬·
р)
F__inference_sequential_layer_call_and_return_conditional_losses_138410

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@@
2module_wrapper_batchnorm_1_readvariableop_resource:@B
4module_wrapper_batchnorm_1_readvariableop_1_resource:@Q
Cmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_resource:@S
Emodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@@6
(conv2d_1_biasadd_readvariableop_resource:@B
4module_wrapper_1_batchnorm_2_readvariableop_resource:@D
6module_wrapper_1_batchnorm_2_readvariableop_1_resource:@S
Emodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_resource:@U
Gmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
4module_wrapper_3_batchnorm_3_readvariableop_resource:	АE
6module_wrapper_3_batchnorm_3_readvariableop_1_resource:	АT
Emodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
4module_wrapper_4_batchnorm_4_readvariableop_resource:	АE
6module_wrapper_4_batchnorm_4_readvariableop_1_resource:	АT
Emodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	АC
4module_wrapper_6_batchnorm_5_readvariableop_resource:	АE
6module_wrapper_6_batchnorm_5_readvariableop_1_resource:	АT
Emodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_5_conv2d_readvariableop_resource:АА7
(conv2d_5_biasadd_readvariableop_resource:	АC
4module_wrapper_7_batchnorm_6_readvariableop_resource:	АE
6module_wrapper_7_batchnorm_6_readvariableop_1_resource:	АT
Emodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_resource:	АV
Gmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	А8
$dense_matmul_readvariableop_resource:
АHА4
%dense_biasadd_readvariableop_resource:	АM
>module_wrapper_9_batchnorm_7_batchnorm_readvariableop_resource:	АQ
Bmodule_wrapper_9_batchnorm_7_batchnorm_mul_readvariableop_resource:	АO
@module_wrapper_9_batchnorm_7_batchnorm_readvariableop_1_resource:	АO
@module_wrapper_9_batchnorm_7_batchnorm_readvariableop_2_resource:	А9
&dense_1_matmul_readvariableop_resource:	А5
'dense_1_biasadd_readvariableop_resource:
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpв:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpв<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1в)module_wrapper/batchnorm_1/ReadVariableOpв+module_wrapper/batchnorm_1/ReadVariableOp_1в<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpв>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_1/batchnorm_2/ReadVariableOpв-module_wrapper_1/batchnorm_2/ReadVariableOp_1в<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpв>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_3/batchnorm_3/ReadVariableOpв-module_wrapper_3/batchnorm_3/ReadVariableOp_1в<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpв>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_4/batchnorm_4/ReadVariableOpв-module_wrapper_4/batchnorm_4/ReadVariableOp_1в<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpв>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_6/batchnorm_5/ReadVariableOpв-module_wrapper_6/batchnorm_5/ReadVariableOp_1в<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpв>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1в+module_wrapper_7/batchnorm_6/ReadVariableOpв-module_wrapper_7/batchnorm_6/ReadVariableOp_1в5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpв7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1в7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2в9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
conv2d/BiasAddr

conv2d/EluEluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2

conv2d/Elu┼
)module_wrapper/batchnorm_1/ReadVariableOpReadVariableOp2module_wrapper_batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02+
)module_wrapper/batchnorm_1/ReadVariableOp╦
+module_wrapper/batchnorm_1/ReadVariableOp_1ReadVariableOp4module_wrapper_batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02-
+module_wrapper/batchnorm_1/ReadVariableOp_1°
:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOpCmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02<
:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp■
<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEmodule_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02>
<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1■
+module_wrapper/batchnorm_1/FusedBatchNormV3FusedBatchNormV3conv2d/Elu:activations:01module_wrapper/batchnorm_1/ReadVariableOp:value:03module_wrapper/batchnorm_1/ReadVariableOp_1:value:0Bmodule_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:0Dmodule_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 2-
+module_wrapper/batchnorm_1/FusedBatchNormV3░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_1/Conv2D/ReadVariableOpч
conv2d_1/Conv2DConv2D/module_wrapper/batchnorm_1/FusedBatchNormV3:y:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
conv2d_1/Conv2Dз
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpм
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
conv2d_1/BiasAddx
conv2d_1/EluEluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2
conv2d_1/Elu╦
+module_wrapper_1/batchnorm_2/ReadVariableOpReadVariableOp4module_wrapper_1_batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02-
+module_wrapper_1/batchnorm_2/ReadVariableOp╤
-module_wrapper_1/batchnorm_2/ReadVariableOp_1ReadVariableOp6module_wrapper_1_batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-module_wrapper_1/batchnorm_2/ReadVariableOp_1■
<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02>
<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpД
>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02@
>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1М
-module_wrapper_1/batchnorm_2/FusedBatchNormV3FusedBatchNormV3conv2d_1/Elu:activations:03module_wrapper_1/batchnorm_2/ReadVariableOp:value:05module_wrapper_1/batchnorm_2/ReadVariableOp_1:value:0Dmodule_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 2/
-module_wrapper_1/batchnorm_2/FusedBatchNormV3┘
max_pooling2d/MaxPoolMaxPool1module_wrapper_1/batchnorm_2/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolм
!module_wrapper_2/dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         @2#
!module_wrapper_2/dropout/Identity▒
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_2/Conv2D/ReadVariableOpу
conv2d_2/Conv2DConv2D*module_wrapper_2/dropout/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_2/Conv2Dи
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpн
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_2/BiasAddy
conv2d_2/EluEluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_2/Elu╠
+module_wrapper_3/batchnorm_3/ReadVariableOpReadVariableOp4module_wrapper_3_batchnorm_3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_3/batchnorm_3/ReadVariableOp╥
-module_wrapper_3/batchnorm_3/ReadVariableOp_1ReadVariableOp6module_wrapper_3_batchnorm_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_3/batchnorm_3/ReadVariableOp_1 
<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1С
-module_wrapper_3/batchnorm_3/FusedBatchNormV3FusedBatchNormV3conv2d_2/Elu:activations:03module_wrapper_3/batchnorm_3/ReadVariableOp:value:05module_wrapper_3/batchnorm_3/ReadVariableOp_1:value:0Dmodule_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2/
-module_wrapper_3/batchnorm_3/FusedBatchNormV3▓
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_3/Conv2D/ReadVariableOpъ
conv2d_3/Conv2DConv2D1module_wrapper_3/batchnorm_3/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_3/Conv2Dи
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpн
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_3/BiasAddy
conv2d_3/EluEluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_3/Elu╠
+module_wrapper_4/batchnorm_4/ReadVariableOpReadVariableOp4module_wrapper_4_batchnorm_4_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_4/batchnorm_4/ReadVariableOp╥
-module_wrapper_4/batchnorm_4/ReadVariableOp_1ReadVariableOp6module_wrapper_4_batchnorm_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_4/batchnorm_4/ReadVariableOp_1 
<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1С
-module_wrapper_4/batchnorm_4/FusedBatchNormV3FusedBatchNormV3conv2d_3/Elu:activations:03module_wrapper_4/batchnorm_4/ReadVariableOp:value:05module_wrapper_4/batchnorm_4/ReadVariableOp_1:value:0Dmodule_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2/
-module_wrapper_4/batchnorm_4/FusedBatchNormV3▐
max_pooling2d_1/MaxPoolMaxPool1module_wrapper_4/batchnorm_4/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool│
#module_wrapper_5/dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:         А2%
#module_wrapper_5/dropout_1/Identity▓
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_4/Conv2D/ReadVariableOpх
conv2d_4/Conv2DConv2D,module_wrapper_5/dropout_1/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_4/Conv2Dи
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpн
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_4/BiasAddy
conv2d_4/EluEluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_4/Elu╠
+module_wrapper_6/batchnorm_5/ReadVariableOpReadVariableOp4module_wrapper_6_batchnorm_5_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_6/batchnorm_5/ReadVariableOp╥
-module_wrapper_6/batchnorm_5/ReadVariableOp_1ReadVariableOp6module_wrapper_6_batchnorm_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_6/batchnorm_5/ReadVariableOp_1 
<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1С
-module_wrapper_6/batchnorm_5/FusedBatchNormV3FusedBatchNormV3conv2d_4/Elu:activations:03module_wrapper_6/batchnorm_5/ReadVariableOp:value:05module_wrapper_6/batchnorm_5/ReadVariableOp_1:value:0Dmodule_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2/
-module_wrapper_6/batchnorm_5/FusedBatchNormV3▓
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_5/Conv2D/ReadVariableOpъ
conv2d_5/Conv2DConv2D1module_wrapper_6/batchnorm_5/FusedBatchNormV3:y:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_5/Conv2Dи
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpн
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_5/BiasAddy
conv2d_5/EluEluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
conv2d_5/Elu╠
+module_wrapper_7/batchnorm_6/ReadVariableOpReadVariableOp4module_wrapper_7_batchnorm_6_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+module_wrapper_7/batchnorm_6/ReadVariableOp╥
-module_wrapper_7/batchnorm_6/ReadVariableOp_1ReadVariableOp6module_wrapper_7_batchnorm_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-module_wrapper_7/batchnorm_6/ReadVariableOp_1 
<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOpEmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02>
<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpЕ
>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmodule_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02@
>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1С
-module_wrapper_7/batchnorm_6/FusedBatchNormV3FusedBatchNormV3conv2d_5/Elu:activations:03module_wrapper_7/batchnorm_6/ReadVariableOp:value:05module_wrapper_7/batchnorm_6/ReadVariableOp_1:value:0Dmodule_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:0Fmodule_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2/
-module_wrapper_7/batchnorm_6/FusedBatchNormV3▐
max_pooling2d_2/MaxPoolMaxPool1module_wrapper_7/batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool│
#module_wrapper_8/dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:         А2%
#module_wrapper_8/dropout_2/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  2
flatten/Constж
flatten/ReshapeReshape,module_wrapper_8/dropout_2/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АH2
flatten/Reshapeб
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/MatMulЯ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
dense/BiasAdd/ReadVariableOpЪ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense/BiasAddh
	dense/EluEludense/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
	dense/Eluъ
5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpReadVariableOp>module_wrapper_9_batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype027
5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpб
,module_wrapper_9/batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2.
,module_wrapper_9/batchnorm_7/batchnorm/add/y¤
*module_wrapper_9/batchnorm_7/batchnorm/addAddV2=module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp:value:05module_wrapper_9/batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2,
*module_wrapper_9/batchnorm_7/batchnorm/add╗
,module_wrapper_9/batchnorm_7/batchnorm/RsqrtRsqrt.module_wrapper_9/batchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:А2.
,module_wrapper_9/batchnorm_7/batchnorm/RsqrtЎ
9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOpBmodule_wrapper_9_batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp·
*module_wrapper_9/batchnorm_7/batchnorm/mulMul0module_wrapper_9/batchnorm_7/batchnorm/Rsqrt:y:0Amodule_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2,
*module_wrapper_9/batchnorm_7/batchnorm/mul▀
,module_wrapper_9/batchnorm_7/batchnorm/mul_1Muldense/Elu:activations:0.module_wrapper_9/batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2.
,module_wrapper_9/batchnorm_7/batchnorm/mul_1Ё
7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOp@module_wrapper_9_batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1·
,module_wrapper_9/batchnorm_7/batchnorm/mul_2Mul?module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1:value:0.module_wrapper_9/batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2.
,module_wrapper_9/batchnorm_7/batchnorm/mul_2Ё
7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOp@module_wrapper_9_batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype029
7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2°
*module_wrapper_9/batchnorm_7/batchnorm/subSub?module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2:value:00module_wrapper_9/batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2,
*module_wrapper_9/batchnorm_7/batchnorm/sub·
,module_wrapper_9/batchnorm_7/batchnorm/add_1AddV20module_wrapper_9/batchnorm_7/batchnorm/mul_1:z:0.module_wrapper_9/batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2.
,module_wrapper_9/batchnorm_7/batchnorm/add_1╜
$module_wrapper_10/dropout_3/IdentityIdentity0module_wrapper_9/batchnorm_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         А2&
$module_wrapper_10/dropout_3/Identityж
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_1/MatMul/ReadVariableOp▓
dense_1/MatMulMatMul-module_wrapper_10/dropout_3/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/SoftmaxН
IdentityIdentitydense_1/Softmax:softmax:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp;^module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp=^module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*^module_wrapper/batchnorm_1/ReadVariableOp,^module_wrapper/batchnorm_1/ReadVariableOp_1=^module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp?^module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_1/batchnorm_2/ReadVariableOp.^module_wrapper_1/batchnorm_2/ReadVariableOp_1=^module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp?^module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_3/batchnorm_3/ReadVariableOp.^module_wrapper_3/batchnorm_3/ReadVariableOp_1=^module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp?^module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_4/batchnorm_4/ReadVariableOp.^module_wrapper_4/batchnorm_4/ReadVariableOp_1=^module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp?^module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_6/batchnorm_5/ReadVariableOp.^module_wrapper_6/batchnorm_5/ReadVariableOp_1=^module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp?^module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1,^module_wrapper_7/batchnorm_6/ReadVariableOp.^module_wrapper_7/batchnorm_6/ReadVariableOp_16^module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp8^module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_18^module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2:^module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2x
:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp:module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp2|
<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1<module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_12V
)module_wrapper/batchnorm_1/ReadVariableOp)module_wrapper/batchnorm_1/ReadVariableOp2Z
+module_wrapper/batchnorm_1/ReadVariableOp_1+module_wrapper/batchnorm_1/ReadVariableOp_12|
<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp<module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_1/batchnorm_2/ReadVariableOp+module_wrapper_1/batchnorm_2/ReadVariableOp2^
-module_wrapper_1/batchnorm_2/ReadVariableOp_1-module_wrapper_1/batchnorm_2/ReadVariableOp_12|
<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp<module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_3/batchnorm_3/ReadVariableOp+module_wrapper_3/batchnorm_3/ReadVariableOp2^
-module_wrapper_3/batchnorm_3/ReadVariableOp_1-module_wrapper_3/batchnorm_3/ReadVariableOp_12|
<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp<module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_4/batchnorm_4/ReadVariableOp+module_wrapper_4/batchnorm_4/ReadVariableOp2^
-module_wrapper_4/batchnorm_4/ReadVariableOp_1-module_wrapper_4/batchnorm_4/ReadVariableOp_12|
<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp<module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_6/batchnorm_5/ReadVariableOp+module_wrapper_6/batchnorm_5/ReadVariableOp2^
-module_wrapper_6/batchnorm_5/ReadVariableOp_1-module_wrapper_6/batchnorm_5/ReadVariableOp_12|
<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp<module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp2А
>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1>module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_12Z
+module_wrapper_7/batchnorm_6/ReadVariableOp+module_wrapper_7/batchnorm_6/ReadVariableOp2^
-module_wrapper_7/batchnorm_6/ReadVariableOp_1-module_wrapper_7/batchnorm_6/ReadVariableOp_12n
5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp5module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp2r
7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_17module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_12r
7module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_27module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_22v
9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp9module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
С
Ц
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_137789

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ч
_
C__inference_flatten_layer_call_and_return_conditional_losses_139205

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АH2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         АH2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
э}
ш
F__inference_sequential_layer_call_and_return_conditional_losses_137035
conv2d_input'
conv2d_136923:@
conv2d_136925:@#
module_wrapper_136928:@#
module_wrapper_136930:@#
module_wrapper_136932:@#
module_wrapper_136934:@)
conv2d_1_136937:@@
conv2d_1_136939:@%
module_wrapper_1_136942:@%
module_wrapper_1_136944:@%
module_wrapper_1_136946:@%
module_wrapper_1_136948:@*
conv2d_2_136953:@А
conv2d_2_136955:	А&
module_wrapper_3_136958:	А&
module_wrapper_3_136960:	А&
module_wrapper_3_136962:	А&
module_wrapper_3_136964:	А+
conv2d_3_136967:АА
conv2d_3_136969:	А&
module_wrapper_4_136972:	А&
module_wrapper_4_136974:	А&
module_wrapper_4_136976:	А&
module_wrapper_4_136978:	А+
conv2d_4_136983:АА
conv2d_4_136985:	А&
module_wrapper_6_136988:	А&
module_wrapper_6_136990:	А&
module_wrapper_6_136992:	А&
module_wrapper_6_136994:	А+
conv2d_5_136997:АА
conv2d_5_136999:	А&
module_wrapper_7_137002:	А&
module_wrapper_7_137004:	А&
module_wrapper_7_137006:	А&
module_wrapper_7_137008:	А 
dense_137014:
АHА
dense_137016:	А&
module_wrapper_9_137019:	А&
module_wrapper_9_137021:	А&
module_wrapper_9_137023:	А&
module_wrapper_9_137025:	А!
dense_1_137029:	А
dense_1_137031:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallв&module_wrapper/StatefulPartitionedCallв(module_wrapper_1/StatefulPartitionedCallв)module_wrapper_10/StatefulPartitionedCallв(module_wrapper_2/StatefulPartitionedCallв(module_wrapper_3/StatefulPartitionedCallв(module_wrapper_4/StatefulPartitionedCallв(module_wrapper_5/StatefulPartitionedCallв(module_wrapper_6/StatefulPartitionedCallв(module_wrapper_7/StatefulPartitionedCallв(module_wrapper_8/StatefulPartitionedCallв(module_wrapper_9/StatefulPartitionedCallЫ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_136923conv2d_136925*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1354482 
conv2d/StatefulPartitionedCallО
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0module_wrapper_136928module_wrapper_136930module_wrapper_136932module_wrapper_136934*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_1363902(
&module_wrapper/StatefulPartitionedCall╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0conv2d_1_136937conv2d_1_136939*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_1354932"
 conv2d_1/StatefulPartitionedCallЮ
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0module_wrapper_1_136942module_wrapper_1_136944module_wrapper_1_136946module_wrapper_1_136948*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1363352*
(module_wrapper_1/StatefulPartitionedCallЩ
max_pooling2d/PartitionedCallPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1354002
max_pooling2d/PartitionedCallп
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1362982*
(module_wrapper_2/StatefulPartitionedCall╦
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0conv2d_2_136953conv2d_2_136955*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_1355462"
 conv2d_2/StatefulPartitionedCallЯ
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0module_wrapper_3_136958module_wrapper_3_136960module_wrapper_3_136962module_wrapper_3_136964*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1362572*
(module_wrapper_3/StatefulPartitionedCall╦
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0conv2d_3_136967conv2d_3_136969*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1355912"
 conv2d_3/StatefulPartitionedCallЯ
(module_wrapper_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0module_wrapper_4_136972module_wrapper_4_136974module_wrapper_4_136976module_wrapper_4_136978*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1362022*
(module_wrapper_4/StatefulPartitionedCallа
max_pooling2d_1/PartitionedCallPartitionedCall1module_wrapper_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1354122!
max_pooling2d_1/PartitionedCall▌
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0)^module_wrapper_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1361652*
(module_wrapper_5/StatefulPartitionedCall╦
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_5/StatefulPartitionedCall:output:0conv2d_4_136983conv2d_4_136985*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1356442"
 conv2d_4/StatefulPartitionedCallЯ
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0module_wrapper_6_136988module_wrapper_6_136990module_wrapper_6_136992module_wrapper_6_136994*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1361242*
(module_wrapper_6/StatefulPartitionedCall╦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_6/StatefulPartitionedCall:output:0conv2d_5_136997conv2d_5_136999*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1356892"
 conv2d_5/StatefulPartitionedCallЯ
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0module_wrapper_7_137002module_wrapper_7_137004module_wrapper_7_137006module_wrapper_7_137008*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1360692*
(module_wrapper_7/StatefulPartitionedCallа
max_pooling2d_2/PartitionedCallPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1354242!
max_pooling2d_2/PartitionedCall▌
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0)^module_wrapper_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1360322*
(module_wrapper_8/StatefulPartitionedCallА
flatten/PartitionedCallPartitionedCall1module_wrapper_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1357372
flatten/PartitionedCallг
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_137014dense_137016*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1357502
dense/StatefulPartitionedCallФ
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0module_wrapper_9_137019module_wrapper_9_137021module_wrapper_9_137023module_wrapper_9_137025*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1359852*
(module_wrapper_9/StatefulPartitionedCallс
)module_wrapper_10/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_9/StatefulPartitionedCall:output:0)^module_wrapper_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1359322+
)module_wrapper_10/StatefulPartitionedCall╛
dense_1/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_10/StatefulPartitionedCall:output:0dense_1_137029dense_1_137031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1358042!
dense_1/StatefulPartitionedCallц
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall*^module_wrapper_10/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_4/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2V
)module_wrapper_10/StatefulPartitionedCall)module_wrapper_10/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_4/StatefulPartitionedCall(module_wrapper_4/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:] Y
/
_output_shapes
:         00
&
_user_specified_nameconv2d_input
Я
Ц
&__inference_dense_layer_call_fn_139214

inputs
unknown:
АHА
	unknown_0:	А
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1357502
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
а
╨
1__inference_module_wrapper_4_layer_call_fn_138940

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1362022
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
╡
╢
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_139476

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_1_layer_call_fn_135418

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1354122
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▒

ї
A__inference_dense_layer_call_and_return_conditional_losses_139225

inputs2
matmul_readvariableop_resource:
АHА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddV
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
EluЧ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
Т
i
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_139320

args_0
identityo
dropout_3/IdentityIdentityargs_0*
T0*(
_output_shapes
:         А2
dropout_3/Identityp
IdentityIdentitydropout_3/Identity:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
Б
Т
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_139396

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
в
╨
1__inference_module_wrapper_7_layer_call_fn_139118

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1357132
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
ц
┬

+__inference_sequential_layer_call_fn_138241

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
АHА

unknown_36:	А

unknown_37:	А

unknown_38:	А

unknown_39:	А

unknown_40:	А

unknown_41:	А

unknown_42:
identityИвStatefulPartitionedCallо
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
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
 !"%&)*+,*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1366212
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
в
╨
1__inference_module_wrapper_4_layer_call_fn_138927

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_1356152
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
┌
L
0__inference_max_pooling2d_2_layer_call_fn_135430

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1354242
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
║
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_137833

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ю
k
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_136165

args_0
identityИw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout_1/dropout/ConstЪ
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mulh
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape█
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_1/dropout/GreaterEqual/yя
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_1/dropout/GreaterEqualж
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_1/dropout/Castл
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_1/dropout/Mul_1x
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
С
Ц
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_137537

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ж
╚

+__inference_sequential_layer_call_fn_135902
conv2d_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
АHА

unknown_36:	А

unknown_37:	А

unknown_38:	А

unknown_39:	А

unknown_40:	А

unknown_41:	А

unknown_42:
identityИвStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1358112
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         00
&
_user_specified_nameconv2d_input
╪
╟
,__inference_batchnorm_1_layer_call_fn_139365

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_1371592
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
д
√
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_139067

args_02
#batchnorm_5_readvariableop_resource:	А4
%batchnorm_5_readvariableop_1_resource:	АC
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_5/FusedBatchNormV3/ReadVariableOpв-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_5/ReadVariableOpвbatchnorm_5/ReadVariableOp_1Щ
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOpЯ
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOp_1╠
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_5/FusedBatchNormV3Ч
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
а
╨
1__inference_module_wrapper_3_layer_call_fn_138858

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_1362572
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
О
√
B__inference_conv2d_layer_call_and_return_conditional_losses_138641

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:         00@2
EluЮ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
в
╨
1__inference_module_wrapper_6_layer_call_fn_139036

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_1356682
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
р
╦
,__inference_batchnorm_6_layer_call_fn_139675

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_1377892
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ў
╦
,__inference_batchnorm_7_layer_call_fn_139750

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_1379772
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ч
_
C__inference_flatten_layer_call_and_return_conditional_losses_135737

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АH2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         АH2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Р
¤
D__inference_conv2d_1_layer_call_and_return_conditional_losses_138723

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:         00@2
EluЮ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
═
б
)__inference_conv2d_5_layer_call_fn_139094

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1356892
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
░
╖
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_136202

args_02
#batchnorm_4_readvariableop_resource:	А4
%batchnorm_4_readvariableop_1_resource:	АC
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_4/AssignNewValueвbatchnorm_4/AssignNewValue_1в+batchnorm_4/FusedBatchNormV3/ReadVariableOpв-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_4/ReadVariableOpвbatchnorm_4/ReadVariableOp_1Щ
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOpЯ
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOp_1╠
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_4/FusedBatchNormV3■
batchnorm_4/AssignNewValueAssignVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource)batchnorm_4/FusedBatchNormV3:batch_mean:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValueК
batchnorm_4/AssignNewValue_1AssignVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource-batchnorm_4/FusedBatchNormV3:batch_variance:0.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValue_1╙
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0^batchnorm_4/AssignNewValue^batchnorm_4/AssignNewValue_1,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_4/AssignNewValuebatchnorm_4/AssignNewValue2<
batchnorm_4/AssignNewValue_1batchnorm_4/AssignNewValue_12Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
д
√
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_138958

args_02
#batchnorm_4_readvariableop_resource:	А4
%batchnorm_4_readvariableop_1_resource:	АC
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_4/FusedBatchNormV3/ReadVariableOpв-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_4/ReadVariableOpвbatchnorm_4/ReadVariableOp_1Щ
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOpЯ
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOp_1╠
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_4/FusedBatchNormV3Ч
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
┼
║
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_137707

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
 
j
1__inference_module_wrapper_5_layer_call_fn_138986

args_0
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_1361652
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
░
╖
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_138976

args_02
#batchnorm_4_readvariableop_resource:	А4
%batchnorm_4_readvariableop_1_resource:	АC
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_4/AssignNewValueвbatchnorm_4/AssignNewValue_1в+batchnorm_4/FusedBatchNormV3/ReadVariableOpв-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_4/ReadVariableOpвbatchnorm_4/ReadVariableOp_1Щ
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOpЯ
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOp_1╠
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_4/FusedBatchNormV3■
batchnorm_4/AssignNewValueAssignVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource)batchnorm_4/FusedBatchNormV3:batch_mean:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValueК
batchnorm_4/AssignNewValue_1AssignVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource-batchnorm_4/FusedBatchNormV3:batch_variance:0.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValue_1╙
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0^batchnorm_4/AssignNewValue^batchnorm_4/AssignNewValue_1,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_4/AssignNewValuebatchnorm_4/AssignNewValue2<
batchnorm_4/AssignNewValue_1batchnorm_4/AssignNewValue_12Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
Ф
ў
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_135517

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identityИв+batchnorm_2/FusedBatchNormV3/ReadVariableOpв-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_2/ReadVariableOpвbatchnorm_2/ReadVariableOp_1Ш
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOpЮ
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1╦
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1Т
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
batchnorm_2/FusedBatchNormV3Ц
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 2Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
Ъ
╠
1__inference_module_wrapper_1_layer_call_fn_138736

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1355172
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
Р
¤
D__inference_conv2d_1_layer_call_and_return_conditional_losses_135493

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:         00@2
EluЮ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
р
╦
,__inference_batchnorm_4_layer_call_fn_139551

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_1375372
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
▒
h
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_139182

args_0
identityw
dropout_2/IdentityIdentityargs_0*
T0*0
_output_shapes
:         А2
dropout_2/Identityx
IdentityIdentitydropout_2/Identity:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
▒

ї
A__inference_dense_layer_call_and_return_conditional_losses_135750

inputs2
matmul_readvariableop_resource:
АHА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddV
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
EluЧ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
ж
к
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_137917

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
є
M
1__inference_module_wrapper_8_layer_call_fn_139172

args_0
identity╓
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_1357292
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
╤
D
(__inference_flatten_layer_call_fn_139199

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1357372
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         АH2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╩5
с
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_135985

args_0B
3batchnorm_7_assignmovingavg_readvariableop_resource:	АD
5batchnorm_7_assignmovingavg_1_readvariableop_resource:	А@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	А<
-batchnorm_7_batchnorm_readvariableop_resource:	А
identityИвbatchnorm_7/AssignMovingAvgв*batchnorm_7/AssignMovingAvg/ReadVariableOpвbatchnorm_7/AssignMovingAvg_1в,batchnorm_7/AssignMovingAvg_1/ReadVariableOpв$batchnorm_7/batchnorm/ReadVariableOpв(batchnorm_7/batchnorm/mul/ReadVariableOpв
*batchnorm_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*batchnorm_7/moments/mean/reduction_indices┤
batchnorm_7/moments/meanMeanargs_03batchnorm_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
batchnorm_7/moments/meanб
 batchnorm_7/moments/StopGradientStopGradient!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes
:	А2"
 batchnorm_7/moments/StopGradient╔
%batchnorm_7/moments/SquaredDifferenceSquaredDifferenceargs_0)batchnorm_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:         А2'
%batchnorm_7/moments/SquaredDifferenceк
.batchnorm_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 20
.batchnorm_7/moments/variance/reduction_indicesу
batchnorm_7/moments/varianceMean)batchnorm_7/moments/SquaredDifference:z:07batchnorm_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
batchnorm_7/moments/varianceе
batchnorm_7/moments/SqueezeSqueeze!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
batchnorm_7/moments/Squeezeн
batchnorm_7/moments/Squeeze_1Squeeze%batchnorm_7/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
batchnorm_7/moments/Squeeze_1Л
!batchnorm_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!batchnorm_7/AssignMovingAvg/decay╔
*batchnorm_7/AssignMovingAvg/ReadVariableOpReadVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*batchnorm_7/AssignMovingAvg/ReadVariableOp╔
batchnorm_7/AssignMovingAvg/subSub2batchnorm_7/AssignMovingAvg/ReadVariableOp:value:0$batchnorm_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:А2!
batchnorm_7/AssignMovingAvg/sub└
batchnorm_7/AssignMovingAvg/mulMul#batchnorm_7/AssignMovingAvg/sub:z:0*batchnorm_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2!
batchnorm_7/AssignMovingAvg/mul√
batchnorm_7/AssignMovingAvgAssignSubVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource#batchnorm_7/AssignMovingAvg/mul:z:0+^batchnorm_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvgП
#batchnorm_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2%
#batchnorm_7/AssignMovingAvg_1/decay╧
,batchnorm_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp╤
!batchnorm_7/AssignMovingAvg_1/subSub4batchnorm_7/AssignMovingAvg_1/ReadVariableOp:value:0&batchnorm_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2#
!batchnorm_7/AssignMovingAvg_1/sub╚
!batchnorm_7/AssignMovingAvg_1/mulMul%batchnorm_7/AssignMovingAvg_1/sub:z:0,batchnorm_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2#
!batchnorm_7/AssignMovingAvg_1/mulЕ
batchnorm_7/AssignMovingAvg_1AssignSubVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource%batchnorm_7/AssignMovingAvg_1/mul:z:0-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvg_1
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm_7/batchnorm/add/y│
batchnorm_7/batchnorm/addAddV2&batchnorm_7/moments/Squeeze_1:output:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/addИ
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/Rsqrt├
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp╢
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mulЫ
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/mul_1м
batchnorm_7/batchnorm/mul_2Mul$batchnorm_7/moments/Squeeze:output:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mul_2╖
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp▓
batchnorm_7/batchnorm/subSub,batchnorm_7/batchnorm/ReadVariableOp:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/sub╢
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/add_1р
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0^batchnorm_7/AssignMovingAvg+^batchnorm_7/AssignMovingAvg/ReadVariableOp^batchnorm_7/AssignMovingAvg_1-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp%^batchnorm_7/batchnorm/ReadVariableOp)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2:
batchnorm_7/AssignMovingAvgbatchnorm_7/AssignMovingAvg2X
*batchnorm_7/AssignMovingAvg/ReadVariableOp*batchnorm_7/AssignMovingAvg/ReadVariableOp2>
batchnorm_7/AssignMovingAvg_1batchnorm_7/AssignMovingAvg_12\
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp,batchnorm_7/AssignMovingAvg_1/ReadVariableOp2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
Ь
А
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135591

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┼
║
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_137581

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
д
√
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_135713

args_02
#batchnorm_6_readvariableop_resource:	А4
%batchnorm_6_readvariableop_1_resource:	АC
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_6/FusedBatchNormV3/ReadVariableOpв-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_6/ReadVariableOpвbatchnorm_6/ReadVariableOp_1Щ
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOpЯ
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_6/ReadVariableOp_1╠
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_6/FusedBatchNormV3Ч
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
си
Й1
!__inference__wrapped_model_135394
conv2d_inputJ
0sequential_conv2d_conv2d_readvariableop_resource:@?
1sequential_conv2d_biasadd_readvariableop_resource:@K
=sequential_module_wrapper_batchnorm_1_readvariableop_resource:@M
?sequential_module_wrapper_batchnorm_1_readvariableop_1_resource:@\
Nsequential_module_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_resource:@^
Psequential_module_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@L
2sequential_conv2d_1_conv2d_readvariableop_resource:@@A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
?sequential_module_wrapper_1_batchnorm_2_readvariableop_resource:@O
Asequential_module_wrapper_1_batchnorm_2_readvariableop_1_resource:@^
Psequential_module_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_resource:@`
Rsequential_module_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@АB
3sequential_conv2d_2_biasadd_readvariableop_resource:	АN
?sequential_module_wrapper_3_batchnorm_3_readvariableop_resource:	АP
Asequential_module_wrapper_3_batchnorm_3_readvariableop_1_resource:	А_
Psequential_module_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_resource:	Аa
Rsequential_module_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_3_conv2d_readvariableop_resource:ААB
3sequential_conv2d_3_biasadd_readvariableop_resource:	АN
?sequential_module_wrapper_4_batchnorm_4_readvariableop_resource:	АP
Asequential_module_wrapper_4_batchnorm_4_readvariableop_1_resource:	А_
Psequential_module_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_resource:	Аa
Rsequential_module_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_4_conv2d_readvariableop_resource:ААB
3sequential_conv2d_4_biasadd_readvariableop_resource:	АN
?sequential_module_wrapper_6_batchnorm_5_readvariableop_resource:	АP
Asequential_module_wrapper_6_batchnorm_5_readvariableop_1_resource:	А_
Psequential_module_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_resource:	Аa
Rsequential_module_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_5_conv2d_readvariableop_resource:ААB
3sequential_conv2d_5_biasadd_readvariableop_resource:	АN
?sequential_module_wrapper_7_batchnorm_6_readvariableop_resource:	АP
Asequential_module_wrapper_7_batchnorm_6_readvariableop_1_resource:	А_
Psequential_module_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_resource:	Аa
Rsequential_module_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	АC
/sequential_dense_matmul_readvariableop_resource:
АHА?
0sequential_dense_biasadd_readvariableop_resource:	АX
Isequential_module_wrapper_9_batchnorm_7_batchnorm_readvariableop_resource:	А\
Msequential_module_wrapper_9_batchnorm_7_batchnorm_mul_readvariableop_resource:	АZ
Ksequential_module_wrapper_9_batchnorm_7_batchnorm_readvariableop_1_resource:	АZ
Ksequential_module_wrapper_9_batchnorm_7_batchnorm_readvariableop_2_resource:	АD
1sequential_dense_1_matmul_readvariableop_resource:	А@
2sequential_dense_1_biasadd_readvariableop_resource:
identityИв(sequential/conv2d/BiasAdd/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв*sequential/conv2d_2/BiasAdd/ReadVariableOpв)sequential/conv2d_2/Conv2D/ReadVariableOpв*sequential/conv2d_3/BiasAdd/ReadVariableOpв)sequential/conv2d_3/Conv2D/ReadVariableOpв*sequential/conv2d_4/BiasAdd/ReadVariableOpв)sequential/conv2d_4/Conv2D/ReadVariableOpв*sequential/conv2d_5/BiasAdd/ReadVariableOpв)sequential/conv2d_5/Conv2D/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв(sequential/dense_1/MatMul/ReadVariableOpвEsequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpвGsequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1в4sequential/module_wrapper/batchnorm_1/ReadVariableOpв6sequential/module_wrapper/batchnorm_1/ReadVariableOp_1вGsequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpвIsequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1в6sequential/module_wrapper_1/batchnorm_2/ReadVariableOpв8sequential/module_wrapper_1/batchnorm_2/ReadVariableOp_1вGsequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpвIsequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1в6sequential/module_wrapper_3/batchnorm_3/ReadVariableOpв8sequential/module_wrapper_3/batchnorm_3/ReadVariableOp_1вGsequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpвIsequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1в6sequential/module_wrapper_4/batchnorm_4/ReadVariableOpв8sequential/module_wrapper_4/batchnorm_4/ReadVariableOp_1вGsequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpвIsequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1в6sequential/module_wrapper_6/batchnorm_5/ReadVariableOpв8sequential/module_wrapper_6/batchnorm_5/ReadVariableOp_1вGsequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpвIsequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1в6sequential/module_wrapper_7/batchnorm_6/ReadVariableOpв8sequential/module_wrapper_7/batchnorm_6/ReadVariableOp_1в@sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpвBsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1вBsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2вDsequential/module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp╦
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp▀
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
sequential/conv2d/Conv2D┬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp╨
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
sequential/conv2d/BiasAddУ
sequential/conv2d/EluElu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2
sequential/conv2d/Eluц
4sequential/module_wrapper/batchnorm_1/ReadVariableOpReadVariableOp=sequential_module_wrapper_batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential/module_wrapper/batchnorm_1/ReadVariableOpь
6sequential/module_wrapper/batchnorm_1/ReadVariableOp_1ReadVariableOp?sequential_module_wrapper_batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype028
6sequential/module_wrapper/batchnorm_1/ReadVariableOp_1Щ
Esequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_module_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02G
Esequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpЯ
Gsequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_module_wrapper_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02I
Gsequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1╦
6sequential/module_wrapper/batchnorm_1/FusedBatchNormV3FusedBatchNormV3#sequential/conv2d/Elu:activations:0<sequential/module_wrapper/batchnorm_1/ReadVariableOp:value:0>sequential/module_wrapper/batchnorm_1/ReadVariableOp_1:value:0Msequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:0Osequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 28
6sequential/module_wrapper/batchnorm_1/FusedBatchNormV3╤
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpУ
sequential/conv2d_1/Conv2DConv2D:sequential/module_wrapper/batchnorm_1/FusedBatchNormV3:y:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingSAME*
strides
2
sequential/conv2d_1/Conv2D╚
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp╪
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
sequential/conv2d_1/BiasAddЩ
sequential/conv2d_1/EluElu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2
sequential/conv2d_1/Eluь
6sequential/module_wrapper_1/batchnorm_2/ReadVariableOpReadVariableOp?sequential_module_wrapper_1_batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential/module_wrapper_1/batchnorm_2/ReadVariableOpЄ
8sequential/module_wrapper_1/batchnorm_2/ReadVariableOp_1ReadVariableOpAsequential_module_wrapper_1_batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8sequential/module_wrapper_1/batchnorm_2/ReadVariableOp_1Я
Gsequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOpPsequential_module_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02I
Gsequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpе
Isequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRsequential_module_wrapper_1_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02K
Isequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1┘
8sequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3FusedBatchNormV3%sequential/conv2d_1/Elu:activations:0>sequential/module_wrapper_1/batchnorm_2/ReadVariableOp:value:0@sequential/module_wrapper_1/batchnorm_2/ReadVariableOp_1:value:0Osequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:0Qsequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 2:
8sequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3·
 sequential/max_pooling2d/MaxPoolMaxPool<sequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPool═
,sequential/module_wrapper_2/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         @2.
,sequential/module_wrapper_2/dropout/Identity╥
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOpП
sequential/conv2d_2/Conv2DConv2D5sequential/module_wrapper_2/dropout/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential/conv2d_2/Conv2D╔
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp┘
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_2/BiasAddЪ
sequential/conv2d_2/EluElu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_2/Eluэ
6sequential/module_wrapper_3/batchnorm_3/ReadVariableOpReadVariableOp?sequential_module_wrapper_3_batchnorm_3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6sequential/module_wrapper_3/batchnorm_3/ReadVariableOpє
8sequential/module_wrapper_3/batchnorm_3/ReadVariableOp_1ReadVariableOpAsequential_module_wrapper_3_batchnorm_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8sequential/module_wrapper_3/batchnorm_3/ReadVariableOp_1а
Gsequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOpPsequential_module_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02I
Gsequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpж
Isequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRsequential_module_wrapper_3_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02K
Isequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1▐
8sequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3FusedBatchNormV3%sequential/conv2d_2/Elu:activations:0>sequential/module_wrapper_3/batchnorm_3/ReadVariableOp:value:0@sequential/module_wrapper_3/batchnorm_3/ReadVariableOp_1:value:0Osequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:0Qsequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2:
8sequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3╙
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOpЦ
sequential/conv2d_3/Conv2DConv2D<sequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3:y:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential/conv2d_3/Conv2D╔
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp┘
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_3/BiasAddЪ
sequential/conv2d_3/EluElu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_3/Eluэ
6sequential/module_wrapper_4/batchnorm_4/ReadVariableOpReadVariableOp?sequential_module_wrapper_4_batchnorm_4_readvariableop_resource*
_output_shapes	
:А*
dtype028
6sequential/module_wrapper_4/batchnorm_4/ReadVariableOpє
8sequential/module_wrapper_4/batchnorm_4/ReadVariableOp_1ReadVariableOpAsequential_module_wrapper_4_batchnorm_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8sequential/module_wrapper_4/batchnorm_4/ReadVariableOp_1а
Gsequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOpPsequential_module_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02I
Gsequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpж
Isequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRsequential_module_wrapper_4_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02K
Isequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1▐
8sequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3FusedBatchNormV3%sequential/conv2d_3/Elu:activations:0>sequential/module_wrapper_4/batchnorm_4/ReadVariableOp:value:0@sequential/module_wrapper_4/batchnorm_4/ReadVariableOp_1:value:0Osequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:0Qsequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2:
8sequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3 
"sequential/max_pooling2d_1/MaxPoolMaxPool<sequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_1/MaxPool╘
.sequential/module_wrapper_5/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:         А20
.sequential/module_wrapper_5/dropout_1/Identity╙
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)sequential/conv2d_4/Conv2D/ReadVariableOpС
sequential/conv2d_4/Conv2DConv2D7sequential/module_wrapper_5/dropout_1/Identity:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential/conv2d_4/Conv2D╔
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*sequential/conv2d_4/BiasAdd/ReadVariableOp┘
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_4/BiasAddЪ
sequential/conv2d_4/EluElu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_4/Eluэ
6sequential/module_wrapper_6/batchnorm_5/ReadVariableOpReadVariableOp?sequential_module_wrapper_6_batchnorm_5_readvariableop_resource*
_output_shapes	
:А*
dtype028
6sequential/module_wrapper_6/batchnorm_5/ReadVariableOpє
8sequential/module_wrapper_6/batchnorm_5/ReadVariableOp_1ReadVariableOpAsequential_module_wrapper_6_batchnorm_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8sequential/module_wrapper_6/batchnorm_5/ReadVariableOp_1а
Gsequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOpPsequential_module_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02I
Gsequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpж
Isequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRsequential_module_wrapper_6_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02K
Isequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1▐
8sequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3FusedBatchNormV3%sequential/conv2d_4/Elu:activations:0>sequential/module_wrapper_6/batchnorm_5/ReadVariableOp:value:0@sequential/module_wrapper_6/batchnorm_5/ReadVariableOp_1:value:0Osequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:0Qsequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2:
8sequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3╙
)sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02+
)sequential/conv2d_5/Conv2D/ReadVariableOpЦ
sequential/conv2d_5/Conv2DConv2D<sequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3:y:01sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential/conv2d_5/Conv2D╔
*sequential/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*sequential/conv2d_5/BiasAdd/ReadVariableOp┘
sequential/conv2d_5/BiasAddBiasAdd#sequential/conv2d_5/Conv2D:output:02sequential/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_5/BiasAddЪ
sequential/conv2d_5/EluElu$sequential/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
sequential/conv2d_5/Eluэ
6sequential/module_wrapper_7/batchnorm_6/ReadVariableOpReadVariableOp?sequential_module_wrapper_7_batchnorm_6_readvariableop_resource*
_output_shapes	
:А*
dtype028
6sequential/module_wrapper_7/batchnorm_6/ReadVariableOpє
8sequential/module_wrapper_7/batchnorm_6/ReadVariableOp_1ReadVariableOpAsequential_module_wrapper_7_batchnorm_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8sequential/module_wrapper_7/batchnorm_6/ReadVariableOp_1а
Gsequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOpPsequential_module_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02I
Gsequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpж
Isequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpRsequential_module_wrapper_7_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02K
Isequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1▐
8sequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3FusedBatchNormV3%sequential/conv2d_5/Elu:activations:0>sequential/module_wrapper_7/batchnorm_6/ReadVariableOp:value:0@sequential/module_wrapper_7/batchnorm_6/ReadVariableOp_1:value:0Osequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:0Qsequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2:
8sequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3 
"sequential/max_pooling2d_2/MaxPoolMaxPool<sequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_2/MaxPool╘
.sequential/module_wrapper_8/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:         А20
.sequential/module_wrapper_8/dropout_2/IdentityЕ
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  2
sequential/flatten/Const╥
sequential/flatten/ReshapeReshape7sequential/module_wrapper_8/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         АH2
sequential/flatten/Reshape┬
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02(
&sequential/dense/MatMul/ReadVariableOp─
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential/dense/MatMul└
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp╞
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential/dense/BiasAddЙ
sequential/dense/EluElu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
sequential/dense/EluЛ
@sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpReadVariableOpIsequential_module_wrapper_9_batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02B
@sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp╖
7sequential/module_wrapper_9/batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:29
7sequential/module_wrapper_9/batchnorm_7/batchnorm/add/yй
5sequential/module_wrapper_9/batchnorm_7/batchnorm/addAddV2Hsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp:value:0@sequential/module_wrapper_9/batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А27
5sequential/module_wrapper_9/batchnorm_7/batchnorm/add▄
7sequential/module_wrapper_9/batchnorm_7/batchnorm/RsqrtRsqrt9sequential/module_wrapper_9/batchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:А29
7sequential/module_wrapper_9/batchnorm_7/batchnorm/RsqrtЧ
Dsequential/module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOpMsequential_module_wrapper_9_batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02F
Dsequential/module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOpж
5sequential/module_wrapper_9/batchnorm_7/batchnorm/mulMul;sequential/module_wrapper_9/batchnorm_7/batchnorm/Rsqrt:y:0Lsequential/module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А27
5sequential/module_wrapper_9/batchnorm_7/batchnorm/mulЛ
7sequential/module_wrapper_9/batchnorm_7/batchnorm/mul_1Mul"sequential/dense/Elu:activations:09sequential/module_wrapper_9/batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А29
7sequential/module_wrapper_9/batchnorm_7/batchnorm/mul_1С
Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOpKsequential_module_wrapper_9_batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02D
Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1ж
7sequential/module_wrapper_9/batchnorm_7/batchnorm/mul_2MulJsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1:value:09sequential/module_wrapper_9/batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:А29
7sequential/module_wrapper_9/batchnorm_7/batchnorm/mul_2С
Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOpKsequential_module_wrapper_9_batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02D
Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2д
5sequential/module_wrapper_9/batchnorm_7/batchnorm/subSubJsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2:value:0;sequential/module_wrapper_9/batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А27
5sequential/module_wrapper_9/batchnorm_7/batchnorm/subж
7sequential/module_wrapper_9/batchnorm_7/batchnorm/add_1AddV2;sequential/module_wrapper_9/batchnorm_7/batchnorm/mul_1:z:09sequential/module_wrapper_9/batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А29
7sequential/module_wrapper_9/batchnorm_7/batchnorm/add_1▐
/sequential/module_wrapper_10/dropout_3/IdentityIdentity;sequential/module_wrapper_9/batchnorm_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         А21
/sequential/module_wrapper_10/dropout_3/Identity╟
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp▐
sequential/dense_1/MatMulMatMul8sequential/module_wrapper_10/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense_1/MatMul┼
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp═
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense_1/BiasAddЪ
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential/dense_1/Softmax№
IdentityIdentity$sequential/dense_1/Softmax:softmax:0)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp+^sequential/conv2d_5/BiasAdd/ReadVariableOp*^sequential/conv2d_5/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOpF^sequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpH^sequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_15^sequential/module_wrapper/batchnorm_1/ReadVariableOp7^sequential/module_wrapper/batchnorm_1/ReadVariableOp_1H^sequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpJ^sequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_17^sequential/module_wrapper_1/batchnorm_2/ReadVariableOp9^sequential/module_wrapper_1/batchnorm_2/ReadVariableOp_1H^sequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpJ^sequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_17^sequential/module_wrapper_3/batchnorm_3/ReadVariableOp9^sequential/module_wrapper_3/batchnorm_3/ReadVariableOp_1H^sequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpJ^sequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_17^sequential/module_wrapper_4/batchnorm_4/ReadVariableOp9^sequential/module_wrapper_4/batchnorm_4/ReadVariableOp_1H^sequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpJ^sequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_17^sequential/module_wrapper_6/batchnorm_5/ReadVariableOp9^sequential/module_wrapper_6/batchnorm_5/ReadVariableOp_1H^sequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpJ^sequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_17^sequential/module_wrapper_7/batchnorm_6/ReadVariableOp9^sequential/module_wrapper_7/batchnorm_6/ReadVariableOp_1A^sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOpC^sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1C^sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2E^sequential/module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2X
*sequential/conv2d_5/BiasAdd/ReadVariableOp*sequential/conv2d_5/BiasAdd/ReadVariableOp2V
)sequential/conv2d_5/Conv2D/ReadVariableOp)sequential/conv2d_5/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2О
Esequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOpEsequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp2Т
Gsequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1Gsequential/module_wrapper/batchnorm_1/FusedBatchNormV3/ReadVariableOp_12l
4sequential/module_wrapper/batchnorm_1/ReadVariableOp4sequential/module_wrapper/batchnorm_1/ReadVariableOp2p
6sequential/module_wrapper/batchnorm_1/ReadVariableOp_16sequential/module_wrapper/batchnorm_1/ReadVariableOp_12Т
Gsequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOpGsequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp2Ц
Isequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1Isequential/module_wrapper_1/batchnorm_2/FusedBatchNormV3/ReadVariableOp_12p
6sequential/module_wrapper_1/batchnorm_2/ReadVariableOp6sequential/module_wrapper_1/batchnorm_2/ReadVariableOp2t
8sequential/module_wrapper_1/batchnorm_2/ReadVariableOp_18sequential/module_wrapper_1/batchnorm_2/ReadVariableOp_12Т
Gsequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOpGsequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp2Ц
Isequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1Isequential/module_wrapper_3/batchnorm_3/FusedBatchNormV3/ReadVariableOp_12p
6sequential/module_wrapper_3/batchnorm_3/ReadVariableOp6sequential/module_wrapper_3/batchnorm_3/ReadVariableOp2t
8sequential/module_wrapper_3/batchnorm_3/ReadVariableOp_18sequential/module_wrapper_3/batchnorm_3/ReadVariableOp_12Т
Gsequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOpGsequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp2Ц
Isequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1Isequential/module_wrapper_4/batchnorm_4/FusedBatchNormV3/ReadVariableOp_12p
6sequential/module_wrapper_4/batchnorm_4/ReadVariableOp6sequential/module_wrapper_4/batchnorm_4/ReadVariableOp2t
8sequential/module_wrapper_4/batchnorm_4/ReadVariableOp_18sequential/module_wrapper_4/batchnorm_4/ReadVariableOp_12Т
Gsequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOpGsequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp2Ц
Isequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1Isequential/module_wrapper_6/batchnorm_5/FusedBatchNormV3/ReadVariableOp_12p
6sequential/module_wrapper_6/batchnorm_5/ReadVariableOp6sequential/module_wrapper_6/batchnorm_5/ReadVariableOp2t
8sequential/module_wrapper_6/batchnorm_5/ReadVariableOp_18sequential/module_wrapper_6/batchnorm_5/ReadVariableOp_12Т
Gsequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOpGsequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp2Ц
Isequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1Isequential/module_wrapper_7/batchnorm_6/FusedBatchNormV3/ReadVariableOp_12p
6sequential/module_wrapper_7/batchnorm_6/ReadVariableOp6sequential/module_wrapper_7/batchnorm_6/ReadVariableOp2t
8sequential/module_wrapper_7/batchnorm_6/ReadVariableOp_18sequential/module_wrapper_7/batchnorm_6/ReadVariableOp_12Д
@sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp@sequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp2И
Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_1Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_12И
Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_2Bsequential/module_wrapper_9/batchnorm_7/batchnorm/ReadVariableOp_22М
Dsequential/module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOpDsequential/module_wrapper_9/batchnorm_7/batchnorm/mul/ReadVariableOp:] Y
/
_output_shapes
:         00
&
_user_specified_nameconv2d_input
┼
║
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_139600

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
п
l
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_139332

args_0
identityИw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/dropout/ConstТ
dropout_3/dropout/MulMulargs_0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mulh
dropout_3/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape╙
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ?2"
 dropout_3/dropout/GreaterEqual/yч
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2 
dropout_3/dropout/GreaterEqualЮ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_3/dropout/Castг
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mul_1p
IdentityIdentitydropout_3/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
┬
Ь
'__inference_conv2d_layer_call_fn_138630

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_1354482
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
▐
╦
,__inference_batchnorm_3_layer_call_fn_139502

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_1374552
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
░
╖
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_139085

args_02
#batchnorm_5_readvariableop_resource:	А4
%batchnorm_5_readvariableop_1_resource:	АC
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_5/AssignNewValueвbatchnorm_5/AssignNewValue_1в+batchnorm_5/FusedBatchNormV3/ReadVariableOpв-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_5/ReadVariableOpвbatchnorm_5/ReadVariableOp_1Щ
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOpЯ
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOp_1╠
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_5/FusedBatchNormV3■
batchnorm_5/AssignNewValueAssignVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource)batchnorm_5/FusedBatchNormV3:batch_mean:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValueК
batchnorm_5/AssignNewValue_1AssignVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource-batchnorm_5/FusedBatchNormV3:batch_variance:0.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValue_1╙
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0^batchnorm_5/AssignNewValue^batchnorm_5/AssignNewValue_1,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_5/AssignNewValuebatchnorm_5/AssignNewValue2<
batchnorm_5/AssignNewValue_1batchnorm_5/AssignNewValue_12Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
з
h
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_135533

args_0
identityr
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:         @2
dropout/Identityu
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameargs_0
╒
N
2__inference_module_wrapper_10_layer_call_fn_139310

args_0
identity╧
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_1357912
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
Ф
╩
/__inference_module_wrapper_layer_call_fn_138667

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_1363902
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
Ь
А
D__inference_conv2d_5_layer_call_and_return_conditional_losses_139105

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
а
╨
1__inference_module_wrapper_7_layer_call_fn_139131

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_1360692
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
Б
Т
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_139458

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
а
│
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_138785

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identityИвbatchnorm_2/AssignNewValueвbatchnorm_2/AssignNewValue_1в+batchnorm_2/FusedBatchNormV3/ReadVariableOpв-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_2/ReadVariableOpвbatchnorm_2/ReadVariableOp_1Ш
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOpЮ
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1╦
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1а
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_2/FusedBatchNormV3■
batchnorm_2/AssignNewValueAssignVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource)batchnorm_2/FusedBatchNormV3:batch_mean:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValueК
batchnorm_2/AssignNewValue_1AssignVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource-batchnorm_2/FusedBatchNormV3:batch_variance:0.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValue_1╥
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0^batchnorm_2/AssignNewValue^batchnorm_2/AssignNewValue_1,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 28
batchnorm_2/AssignNewValuebatchnorm_2/AssignNewValue2<
batchnorm_2/AssignNewValue_1batchnorm_2/AssignNewValue_12Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
Жъ
╡N
"__inference__traced_restore_140515
file_prefix8
assignvariableop_conv2d_kernel:@,
assignvariableop_1_conv2d_bias:@<
"assignvariableop_2_conv2d_1_kernel:@@.
 assignvariableop_3_conv2d_1_bias:@=
"assignvariableop_4_conv2d_2_kernel:@А/
 assignvariableop_5_conv2d_2_bias:	А>
"assignvariableop_6_conv2d_3_kernel:АА/
 assignvariableop_7_conv2d_3_bias:	А>
"assignvariableop_8_conv2d_4_kernel:АА/
 assignvariableop_9_conv2d_4_bias:	А?
#assignvariableop_10_conv2d_5_kernel:АА0
!assignvariableop_11_conv2d_5_bias:	А4
 assignvariableop_12_dense_kernel:
АHА-
assignvariableop_13_dense_bias:	А5
"assignvariableop_14_dense_1_kernel:	А.
 assignvariableop_15_dense_1_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: B
4assignvariableop_21_module_wrapper_batchnorm_1_gamma:@A
3assignvariableop_22_module_wrapper_batchnorm_1_beta:@H
:assignvariableop_23_module_wrapper_batchnorm_1_moving_mean:@L
>assignvariableop_24_module_wrapper_batchnorm_1_moving_variance:@D
6assignvariableop_25_module_wrapper_1_batchnorm_2_gamma:@C
5assignvariableop_26_module_wrapper_1_batchnorm_2_beta:@J
<assignvariableop_27_module_wrapper_1_batchnorm_2_moving_mean:@N
@assignvariableop_28_module_wrapper_1_batchnorm_2_moving_variance:@E
6assignvariableop_29_module_wrapper_3_batchnorm_3_gamma:	АD
5assignvariableop_30_module_wrapper_3_batchnorm_3_beta:	АK
<assignvariableop_31_module_wrapper_3_batchnorm_3_moving_mean:	АO
@assignvariableop_32_module_wrapper_3_batchnorm_3_moving_variance:	АE
6assignvariableop_33_module_wrapper_4_batchnorm_4_gamma:	АD
5assignvariableop_34_module_wrapper_4_batchnorm_4_beta:	АK
<assignvariableop_35_module_wrapper_4_batchnorm_4_moving_mean:	АO
@assignvariableop_36_module_wrapper_4_batchnorm_4_moving_variance:	АE
6assignvariableop_37_module_wrapper_6_batchnorm_5_gamma:	АD
5assignvariableop_38_module_wrapper_6_batchnorm_5_beta:	АK
<assignvariableop_39_module_wrapper_6_batchnorm_5_moving_mean:	АO
@assignvariableop_40_module_wrapper_6_batchnorm_5_moving_variance:	АE
6assignvariableop_41_module_wrapper_7_batchnorm_6_gamma:	АD
5assignvariableop_42_module_wrapper_7_batchnorm_6_beta:	АK
<assignvariableop_43_module_wrapper_7_batchnorm_6_moving_mean:	АO
@assignvariableop_44_module_wrapper_7_batchnorm_6_moving_variance:	АE
6assignvariableop_45_module_wrapper_9_batchnorm_7_gamma:	АD
5assignvariableop_46_module_wrapper_9_batchnorm_7_beta:	АK
<assignvariableop_47_module_wrapper_9_batchnorm_7_moving_mean:	АO
@assignvariableop_48_module_wrapper_9_batchnorm_7_moving_variance:	А#
assignvariableop_49_total: #
assignvariableop_50_count: %
assignvariableop_51_total_1: %
assignvariableop_52_count_1: B
(assignvariableop_53_adam_conv2d_kernel_m:@4
&assignvariableop_54_adam_conv2d_bias_m:@D
*assignvariableop_55_adam_conv2d_1_kernel_m:@@6
(assignvariableop_56_adam_conv2d_1_bias_m:@E
*assignvariableop_57_adam_conv2d_2_kernel_m:@А7
(assignvariableop_58_adam_conv2d_2_bias_m:	АF
*assignvariableop_59_adam_conv2d_3_kernel_m:АА7
(assignvariableop_60_adam_conv2d_3_bias_m:	АF
*assignvariableop_61_adam_conv2d_4_kernel_m:АА7
(assignvariableop_62_adam_conv2d_4_bias_m:	АF
*assignvariableop_63_adam_conv2d_5_kernel_m:АА7
(assignvariableop_64_adam_conv2d_5_bias_m:	А;
'assignvariableop_65_adam_dense_kernel_m:
АHА4
%assignvariableop_66_adam_dense_bias_m:	А<
)assignvariableop_67_adam_dense_1_kernel_m:	А5
'assignvariableop_68_adam_dense_1_bias_m:I
;assignvariableop_69_adam_module_wrapper_batchnorm_1_gamma_m:@H
:assignvariableop_70_adam_module_wrapper_batchnorm_1_beta_m:@K
=assignvariableop_71_adam_module_wrapper_1_batchnorm_2_gamma_m:@J
<assignvariableop_72_adam_module_wrapper_1_batchnorm_2_beta_m:@L
=assignvariableop_73_adam_module_wrapper_3_batchnorm_3_gamma_m:	АK
<assignvariableop_74_adam_module_wrapper_3_batchnorm_3_beta_m:	АL
=assignvariableop_75_adam_module_wrapper_4_batchnorm_4_gamma_m:	АK
<assignvariableop_76_adam_module_wrapper_4_batchnorm_4_beta_m:	АL
=assignvariableop_77_adam_module_wrapper_6_batchnorm_5_gamma_m:	АK
<assignvariableop_78_adam_module_wrapper_6_batchnorm_5_beta_m:	АL
=assignvariableop_79_adam_module_wrapper_7_batchnorm_6_gamma_m:	АK
<assignvariableop_80_adam_module_wrapper_7_batchnorm_6_beta_m:	АL
=assignvariableop_81_adam_module_wrapper_9_batchnorm_7_gamma_m:	АK
<assignvariableop_82_adam_module_wrapper_9_batchnorm_7_beta_m:	АB
(assignvariableop_83_adam_conv2d_kernel_v:@4
&assignvariableop_84_adam_conv2d_bias_v:@D
*assignvariableop_85_adam_conv2d_1_kernel_v:@@6
(assignvariableop_86_adam_conv2d_1_bias_v:@E
*assignvariableop_87_adam_conv2d_2_kernel_v:@А7
(assignvariableop_88_adam_conv2d_2_bias_v:	АF
*assignvariableop_89_adam_conv2d_3_kernel_v:АА7
(assignvariableop_90_adam_conv2d_3_bias_v:	АF
*assignvariableop_91_adam_conv2d_4_kernel_v:АА7
(assignvariableop_92_adam_conv2d_4_bias_v:	АF
*assignvariableop_93_adam_conv2d_5_kernel_v:АА7
(assignvariableop_94_adam_conv2d_5_bias_v:	А;
'assignvariableop_95_adam_dense_kernel_v:
АHА4
%assignvariableop_96_adam_dense_bias_v:	А<
)assignvariableop_97_adam_dense_1_kernel_v:	А5
'assignvariableop_98_adam_dense_1_bias_v:I
;assignvariableop_99_adam_module_wrapper_batchnorm_1_gamma_v:@I
;assignvariableop_100_adam_module_wrapper_batchnorm_1_beta_v:@L
>assignvariableop_101_adam_module_wrapper_1_batchnorm_2_gamma_v:@K
=assignvariableop_102_adam_module_wrapper_1_batchnorm_2_beta_v:@M
>assignvariableop_103_adam_module_wrapper_3_batchnorm_3_gamma_v:	АL
=assignvariableop_104_adam_module_wrapper_3_batchnorm_3_beta_v:	АM
>assignvariableop_105_adam_module_wrapper_4_batchnorm_4_gamma_v:	АL
=assignvariableop_106_adam_module_wrapper_4_batchnorm_4_beta_v:	АM
>assignvariableop_107_adam_module_wrapper_6_batchnorm_5_gamma_v:	АL
=assignvariableop_108_adam_module_wrapper_6_batchnorm_5_beta_v:	АM
>assignvariableop_109_adam_module_wrapper_7_batchnorm_6_gamma_v:	АL
=assignvariableop_110_adam_module_wrapper_7_batchnorm_6_beta_v:	АM
>assignvariableop_111_adam_module_wrapper_9_batchnorm_7_gamma_v:	АL
=assignvariableop_112_adam_module_wrapper_9_batchnorm_7_beta_v:	А
identity_114ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_100вAssignVariableOp_101вAssignVariableOp_102вAssignVariableOp_103вAssignVariableOp_104вAssignVariableOp_105вAssignVariableOp_106вAssignVariableOp_107вAssignVariableOp_108вAssignVariableOp_109вAssignVariableOp_11вAssignVariableOp_110вAssignVariableOp_111вAssignVariableOp_112вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91вAssignVariableOp_92вAssignVariableOp_93вAssignVariableOp_94вAssignVariableOp_95вAssignVariableOp_96вAssignVariableOp_97вAssignVariableOp_98вAssignVariableOp_99└8
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*╠7
value┬7B┐7rB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesї
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*∙
valueяBьrB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesщ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*▐
_output_shapes╦
╚::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*А
dtypesv
t2r	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЭ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1г
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2з
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3е
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4з
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5е
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6з
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7е
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10л
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11й
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12и
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ж
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14к
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15и
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_1_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16е
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17з
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18з
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ж
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20о
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21╝
AssignVariableOp_21AssignVariableOp4assignvariableop_21_module_wrapper_batchnorm_1_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22╗
AssignVariableOp_22AssignVariableOp3assignvariableop_22_module_wrapper_batchnorm_1_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┬
AssignVariableOp_23AssignVariableOp:assignvariableop_23_module_wrapper_batchnorm_1_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╞
AssignVariableOp_24AssignVariableOp>assignvariableop_24_module_wrapper_batchnorm_1_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╛
AssignVariableOp_25AssignVariableOp6assignvariableop_25_module_wrapper_1_batchnorm_2_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╜
AssignVariableOp_26AssignVariableOp5assignvariableop_26_module_wrapper_1_batchnorm_2_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27─
AssignVariableOp_27AssignVariableOp<assignvariableop_27_module_wrapper_1_batchnorm_2_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╚
AssignVariableOp_28AssignVariableOp@assignvariableop_28_module_wrapper_1_batchnorm_2_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29╛
AssignVariableOp_29AssignVariableOp6assignvariableop_29_module_wrapper_3_batchnorm_3_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╜
AssignVariableOp_30AssignVariableOp5assignvariableop_30_module_wrapper_3_batchnorm_3_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31─
AssignVariableOp_31AssignVariableOp<assignvariableop_31_module_wrapper_3_batchnorm_3_moving_meanIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╚
AssignVariableOp_32AssignVariableOp@assignvariableop_32_module_wrapper_3_batchnorm_3_moving_varianceIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33╛
AssignVariableOp_33AssignVariableOp6assignvariableop_33_module_wrapper_4_batchnorm_4_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34╜
AssignVariableOp_34AssignVariableOp5assignvariableop_34_module_wrapper_4_batchnorm_4_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35─
AssignVariableOp_35AssignVariableOp<assignvariableop_35_module_wrapper_4_batchnorm_4_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36╚
AssignVariableOp_36AssignVariableOp@assignvariableop_36_module_wrapper_4_batchnorm_4_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37╛
AssignVariableOp_37AssignVariableOp6assignvariableop_37_module_wrapper_6_batchnorm_5_gammaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38╜
AssignVariableOp_38AssignVariableOp5assignvariableop_38_module_wrapper_6_batchnorm_5_betaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39─
AssignVariableOp_39AssignVariableOp<assignvariableop_39_module_wrapper_6_batchnorm_5_moving_meanIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40╚
AssignVariableOp_40AssignVariableOp@assignvariableop_40_module_wrapper_6_batchnorm_5_moving_varianceIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41╛
AssignVariableOp_41AssignVariableOp6assignvariableop_41_module_wrapper_7_batchnorm_6_gammaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╜
AssignVariableOp_42AssignVariableOp5assignvariableop_42_module_wrapper_7_batchnorm_6_betaIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43─
AssignVariableOp_43AssignVariableOp<assignvariableop_43_module_wrapper_7_batchnorm_6_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44╚
AssignVariableOp_44AssignVariableOp@assignvariableop_44_module_wrapper_7_batchnorm_6_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45╛
AssignVariableOp_45AssignVariableOp6assignvariableop_45_module_wrapper_9_batchnorm_7_gammaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46╜
AssignVariableOp_46AssignVariableOp5assignvariableop_46_module_wrapper_9_batchnorm_7_betaIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47─
AssignVariableOp_47AssignVariableOp<assignvariableop_47_module_wrapper_9_batchnorm_7_moving_meanIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48╚
AssignVariableOp_48AssignVariableOp@assignvariableop_48_module_wrapper_9_batchnorm_7_moving_varianceIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49б
AssignVariableOp_49AssignVariableOpassignvariableop_49_totalIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50б
AssignVariableOp_50AssignVariableOpassignvariableop_50_countIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51г
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52г
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_1Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53░
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_conv2d_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54о
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_conv2d_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55▓
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_1_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56░
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_conv2d_1_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57▓
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_conv2d_2_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58░
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_conv2d_2_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59▓
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_conv2d_3_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60░
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_conv2d_3_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61▓
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_conv2d_4_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62░
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_conv2d_4_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63▓
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_conv2d_5_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64░
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_conv2d_5_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65п
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_dense_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66н
AssignVariableOp_66AssignVariableOp%assignvariableop_66_adam_dense_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67▒
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_1_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68п
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_1_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69├
AssignVariableOp_69AssignVariableOp;assignvariableop_69_adam_module_wrapper_batchnorm_1_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70┬
AssignVariableOp_70AssignVariableOp:assignvariableop_70_adam_module_wrapper_batchnorm_1_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71┼
AssignVariableOp_71AssignVariableOp=assignvariableop_71_adam_module_wrapper_1_batchnorm_2_gamma_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72─
AssignVariableOp_72AssignVariableOp<assignvariableop_72_adam_module_wrapper_1_batchnorm_2_beta_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73┼
AssignVariableOp_73AssignVariableOp=assignvariableop_73_adam_module_wrapper_3_batchnorm_3_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74─
AssignVariableOp_74AssignVariableOp<assignvariableop_74_adam_module_wrapper_3_batchnorm_3_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75┼
AssignVariableOp_75AssignVariableOp=assignvariableop_75_adam_module_wrapper_4_batchnorm_4_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76─
AssignVariableOp_76AssignVariableOp<assignvariableop_76_adam_module_wrapper_4_batchnorm_4_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77┼
AssignVariableOp_77AssignVariableOp=assignvariableop_77_adam_module_wrapper_6_batchnorm_5_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78─
AssignVariableOp_78AssignVariableOp<assignvariableop_78_adam_module_wrapper_6_batchnorm_5_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79┼
AssignVariableOp_79AssignVariableOp=assignvariableop_79_adam_module_wrapper_7_batchnorm_6_gamma_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80─
AssignVariableOp_80AssignVariableOp<assignvariableop_80_adam_module_wrapper_7_batchnorm_6_beta_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81┼
AssignVariableOp_81AssignVariableOp=assignvariableop_81_adam_module_wrapper_9_batchnorm_7_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82─
AssignVariableOp_82AssignVariableOp<assignvariableop_82_adam_module_wrapper_9_batchnorm_7_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83░
AssignVariableOp_83AssignVariableOp(assignvariableop_83_adam_conv2d_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84о
AssignVariableOp_84AssignVariableOp&assignvariableop_84_adam_conv2d_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85▓
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_conv2d_1_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86░
AssignVariableOp_86AssignVariableOp(assignvariableop_86_adam_conv2d_1_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87▓
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_conv2d_2_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88░
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_conv2d_2_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89▓
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_conv2d_3_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90░
AssignVariableOp_90AssignVariableOp(assignvariableop_90_adam_conv2d_3_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91▓
AssignVariableOp_91AssignVariableOp*assignvariableop_91_adam_conv2d_4_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92░
AssignVariableOp_92AssignVariableOp(assignvariableop_92_adam_conv2d_4_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93▓
AssignVariableOp_93AssignVariableOp*assignvariableop_93_adam_conv2d_5_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94░
AssignVariableOp_94AssignVariableOp(assignvariableop_94_adam_conv2d_5_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95п
AssignVariableOp_95AssignVariableOp'assignvariableop_95_adam_dense_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96н
AssignVariableOp_96AssignVariableOp%assignvariableop_96_adam_dense_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97▒
AssignVariableOp_97AssignVariableOp)assignvariableop_97_adam_dense_1_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98п
AssignVariableOp_98AssignVariableOp'assignvariableop_98_adam_dense_1_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99├
AssignVariableOp_99AssignVariableOp;assignvariableop_99_adam_module_wrapper_batchnorm_1_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100╞
AssignVariableOp_100AssignVariableOp;assignvariableop_100_adam_module_wrapper_batchnorm_1_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101╔
AssignVariableOp_101AssignVariableOp>assignvariableop_101_adam_module_wrapper_1_batchnorm_2_gamma_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102╚
AssignVariableOp_102AssignVariableOp=assignvariableop_102_adam_module_wrapper_1_batchnorm_2_beta_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103╔
AssignVariableOp_103AssignVariableOp>assignvariableop_103_adam_module_wrapper_3_batchnorm_3_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104╚
AssignVariableOp_104AssignVariableOp=assignvariableop_104_adam_module_wrapper_3_batchnorm_3_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105╔
AssignVariableOp_105AssignVariableOp>assignvariableop_105_adam_module_wrapper_4_batchnorm_4_gamma_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106╚
AssignVariableOp_106AssignVariableOp=assignvariableop_106_adam_module_wrapper_4_batchnorm_4_beta_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107╔
AssignVariableOp_107AssignVariableOp>assignvariableop_107_adam_module_wrapper_6_batchnorm_5_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108╚
AssignVariableOp_108AssignVariableOp=assignvariableop_108_adam_module_wrapper_6_batchnorm_5_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109╔
AssignVariableOp_109AssignVariableOp>assignvariableop_109_adam_module_wrapper_7_batchnorm_6_gamma_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110╚
AssignVariableOp_110AssignVariableOp=assignvariableop_110_adam_module_wrapper_7_batchnorm_6_beta_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111╔
AssignVariableOp_111AssignVariableOp>assignvariableop_111_adam_module_wrapper_9_batchnorm_7_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112╚
AssignVariableOp_112AssignVariableOp=assignvariableop_112_adam_module_wrapper_9_batchnorm_7_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1129
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpг
Identity_113Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_113Ч
Identity_114IdentityIdentity_113:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_114"%
identity_114Identity_114:output:0*∙
_input_shapesч
ф: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122*
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
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
д
√
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_135615

args_02
#batchnorm_4_readvariableop_resource:	А4
%batchnorm_4_readvariableop_1_resource:	АC
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	А
identityИв+batchnorm_4/FusedBatchNormV3/ReadVariableOpв-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_4/ReadVariableOpвbatchnorm_4/ReadVariableOp_1Щ
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOpЯ
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_4/ReadVariableOp_1╠
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1Ч
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
batchnorm_4/FusedBatchNormV3Ч
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 2Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
а
│
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_136335

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identityИвbatchnorm_2/AssignNewValueвbatchnorm_2/AssignNewValue_1в+batchnorm_2/FusedBatchNormV3/ReadVariableOpв-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_2/ReadVariableOpвbatchnorm_2/ReadVariableOp_1Ш
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOpЮ
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1╦
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1а
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_2/FusedBatchNormV3■
batchnorm_2/AssignNewValueAssignVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource)batchnorm_2/FusedBatchNormV3:batch_mean:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValueК
batchnorm_2/AssignNewValue_1AssignVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource-batchnorm_2/FusedBatchNormV3:batch_variance:0.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValue_1╥
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0^batchnorm_2/AssignNewValue^batchnorm_2/AssignNewValue_1,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 28
batchnorm_2/AssignNewValuebatchnorm_2/AssignNewValue2<
batchnorm_2/AssignNewValue_1batchnorm_2/AssignNewValue_12Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
Ю
▒
J__inference_module_wrapper_layer_call_and_return_conditional_losses_138703

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identityИвbatchnorm_1/AssignNewValueвbatchnorm_1/AssignNewValue_1в+batchnorm_1/FusedBatchNormV3/ReadVariableOpв-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_1/ReadVariableOpвbatchnorm_1/ReadVariableOp_1Ш
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOpЮ
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1╦
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1а
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_1/FusedBatchNormV3■
batchnorm_1/AssignNewValueAssignVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource)batchnorm_1/FusedBatchNormV3:batch_mean:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValueК
batchnorm_1/AssignNewValue_1AssignVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource-batchnorm_1/FusedBatchNormV3:batch_variance:0.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValue_1╥
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0^batchnorm_1/AssignNewValue^batchnorm_1/AssignNewValue_1,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 28
batchnorm_1/AssignNewValuebatchnorm_1/AssignNewValue2<
batchnorm_1/AssignNewValue_1batchnorm_1/AssignNewValue_12Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
╢
k
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_136298

args_0
identityИs
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/dropout/ConstУ
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/dropout/Mul_1u
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameargs_0
З*
ф
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_137977

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayе
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpЩ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/subР
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayл
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOpб
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/subШ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1М
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
Ц
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_137411

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ю
k
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_139194

args_0
identityИw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/ConstЪ
dropout_2/dropout/MulMulargs_0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/Mulh
dropout_2/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape█
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/yя
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_2/dropout/GreaterEqualж
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_2/dropout/Castл
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/Mul_1x
IdentityIdentitydropout_2/dropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
С
Ц
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_139644

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╖

ї
C__inference_dense_1_layer_call_and_return_conditional_losses_139352

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ш
 
D__inference_conv2d_2_layer_call_and_return_conditional_losses_135546

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
░
╖
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_136124

args_02
#batchnorm_5_readvariableop_resource:	А4
%batchnorm_5_readvariableop_1_resource:	АC
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_5/AssignNewValueвbatchnorm_5/AssignNewValue_1в+batchnorm_5/FusedBatchNormV3/ReadVariableOpв-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_5/ReadVariableOpвbatchnorm_5/ReadVariableOp_1Щ
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOpЯ
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_5/ReadVariableOp_1╠
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_5/FusedBatchNormV3■
batchnorm_5/AssignNewValueAssignVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource)batchnorm_5/FusedBatchNormV3:batch_mean:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValueК
batchnorm_5/AssignNewValue_1AssignVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource-batchnorm_5/FusedBatchNormV3:batch_variance:0.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValue_1╙
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0^batchnorm_5/AssignNewValue^batchnorm_5/AssignNewValue_1,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_5/AssignNewValuebatchnorm_5/AssignNewValue2<
batchnorm_5/AssignNewValue_1batchnorm_5/AssignNewValue_12Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
√
j
1__inference_module_wrapper_2_layer_call_fn_138795

args_0
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_1362982
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameargs_0
л
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_135412

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌
┴

$__inference_signature_wrapper_137136
conv2d_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
АHА

unknown_36:	А

unknown_37:	А

unknown_38:	А

unknown_39:	А

unknown_40:	А

unknown_41:	А

unknown_42:
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_1353942
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         00
&
_user_specified_nameconv2d_input
В
╨
1__inference_module_wrapper_9_layer_call_fn_139238

args_0
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_1357762
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
Ф
ў
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_138767

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identityИв+batchnorm_2/FusedBatchNormV3/ReadVariableOpв-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_2/ReadVariableOpвbatchnorm_2/ReadVariableOp_1Ш
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOpЮ
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1╦
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1Т
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
batchnorm_2/FusedBatchNormV3Ц
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 2Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
═
б
)__inference_conv2d_3_layer_call_fn_138903

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1355912
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Я
Ц
(__inference_dense_1_layer_call_fn_139341

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1358042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ь
А
D__inference_conv2d_4_layer_call_and_return_conditional_losses_139023

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
EluЯ
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▐
╦
,__inference_batchnorm_5_layer_call_fn_139626

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_1377072
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Т
ї
J__inference_module_wrapper_layer_call_and_return_conditional_losses_135472

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identityИв+batchnorm_1/FusedBatchNormV3/ReadVariableOpв-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_1/ReadVariableOpвbatchnorm_1/ReadVariableOp_1Ш
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOpЮ
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1╦
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp╤
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1Т
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
batchnorm_1/FusedBatchNormV3Ц
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 2Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
Ш
╠
1__inference_module_wrapper_1_layer_call_fn_138749

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_1363352
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00@
 
_user_specified_nameargs_0
╩5
с
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_139305

args_0B
3batchnorm_7_assignmovingavg_readvariableop_resource:	АD
5batchnorm_7_assignmovingavg_1_readvariableop_resource:	А@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	А<
-batchnorm_7_batchnorm_readvariableop_resource:	А
identityИвbatchnorm_7/AssignMovingAvgв*batchnorm_7/AssignMovingAvg/ReadVariableOpвbatchnorm_7/AssignMovingAvg_1в,batchnorm_7/AssignMovingAvg_1/ReadVariableOpв$batchnorm_7/batchnorm/ReadVariableOpв(batchnorm_7/batchnorm/mul/ReadVariableOpв
*batchnorm_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*batchnorm_7/moments/mean/reduction_indices┤
batchnorm_7/moments/meanMeanargs_03batchnorm_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
batchnorm_7/moments/meanб
 batchnorm_7/moments/StopGradientStopGradient!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes
:	А2"
 batchnorm_7/moments/StopGradient╔
%batchnorm_7/moments/SquaredDifferenceSquaredDifferenceargs_0)batchnorm_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:         А2'
%batchnorm_7/moments/SquaredDifferenceк
.batchnorm_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 20
.batchnorm_7/moments/variance/reduction_indicesу
batchnorm_7/moments/varianceMean)batchnorm_7/moments/SquaredDifference:z:07batchnorm_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
batchnorm_7/moments/varianceе
batchnorm_7/moments/SqueezeSqueeze!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
batchnorm_7/moments/Squeezeн
batchnorm_7/moments/Squeeze_1Squeeze%batchnorm_7/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
batchnorm_7/moments/Squeeze_1Л
!batchnorm_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!batchnorm_7/AssignMovingAvg/decay╔
*batchnorm_7/AssignMovingAvg/ReadVariableOpReadVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*batchnorm_7/AssignMovingAvg/ReadVariableOp╔
batchnorm_7/AssignMovingAvg/subSub2batchnorm_7/AssignMovingAvg/ReadVariableOp:value:0$batchnorm_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:А2!
batchnorm_7/AssignMovingAvg/sub└
batchnorm_7/AssignMovingAvg/mulMul#batchnorm_7/AssignMovingAvg/sub:z:0*batchnorm_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2!
batchnorm_7/AssignMovingAvg/mul√
batchnorm_7/AssignMovingAvgAssignSubVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource#batchnorm_7/AssignMovingAvg/mul:z:0+^batchnorm_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvgП
#batchnorm_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2%
#batchnorm_7/AssignMovingAvg_1/decay╧
,batchnorm_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp╤
!batchnorm_7/AssignMovingAvg_1/subSub4batchnorm_7/AssignMovingAvg_1/ReadVariableOp:value:0&batchnorm_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2#
!batchnorm_7/AssignMovingAvg_1/sub╚
!batchnorm_7/AssignMovingAvg_1/mulMul%batchnorm_7/AssignMovingAvg_1/sub:z:0,batchnorm_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2#
!batchnorm_7/AssignMovingAvg_1/mulЕ
batchnorm_7/AssignMovingAvg_1AssignSubVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource%batchnorm_7/AssignMovingAvg_1/mul:z:0-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvg_1
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm_7/batchnorm/add/y│
batchnorm_7/batchnorm/addAddV2&batchnorm_7/moments/Squeeze_1:output:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/addИ
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/Rsqrt├
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp╢
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mulЫ
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/mul_1м
batchnorm_7/batchnorm/mul_2Mul$batchnorm_7/moments/Squeeze:output:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/mul_2╖
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp▓
batchnorm_7/batchnorm/subSub,batchnorm_7/batchnorm/ReadVariableOp:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm_7/batchnorm/sub╢
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm_7/batchnorm/add_1р
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0^batchnorm_7/AssignMovingAvg+^batchnorm_7/AssignMovingAvg/ReadVariableOp^batchnorm_7/AssignMovingAvg_1-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp%^batchnorm_7/batchnorm/ReadVariableOp)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2:
batchnorm_7/AssignMovingAvgbatchnorm_7/AssignMovingAvg2X
*batchnorm_7/AssignMovingAvg/ReadVariableOp*batchnorm_7/AssignMovingAvg/ReadVariableOp2>
batchnorm_7/AssignMovingAvg_1batchnorm_7/AssignMovingAvg_12\
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp,batchnorm_7/AssignMovingAvg_1/ReadVariableOp2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameargs_0
╡
╢
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_137203

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
░
╖
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_138894

args_02
#batchnorm_3_readvariableop_resource:	А4
%batchnorm_3_readvariableop_1_resource:	АC
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	АE
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	А
identityИвbatchnorm_3/AssignNewValueвbatchnorm_3/AssignNewValue_1в+batchnorm_3/FusedBatchNormV3/ReadVariableOpв-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1вbatchnorm_3/ReadVariableOpвbatchnorm_3/ReadVariableOp_1Щ
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOpЯ
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm_3/ReadVariableOp_1╠
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp╥
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1е
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
batchnorm_3/FusedBatchNormV3■
batchnorm_3/AssignNewValueAssignVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource)batchnorm_3/FusedBatchNormV3:batch_mean:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValueК
batchnorm_3/AssignNewValue_1AssignVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource-batchnorm_3/FusedBatchNormV3:batch_variance:0.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValue_1╙
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0^batchnorm_3/AssignNewValue^batchnorm_3/AssignNewValue_1,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А: : : : 28
batchnorm_3/AssignNewValuebatchnorm_3/AssignNewValue2<
batchnorm_3/AssignNewValue_1batchnorm_3/AssignNewValue_12Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
▐
╦
,__inference_batchnorm_4_layer_call_fn_139564

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_1375812
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ю
k
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_136032

args_0
identityИw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/ConstЪ
dropout_2/dropout/MulMulargs_0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/Mulh
dropout_2/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape█
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/yя
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_2/dropout/GreaterEqualж
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_2/dropout/Castл
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/Mul_1x
IdentityIdentitydropout_2/dropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameargs_0
С
Ц
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_139706

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultи
M
conv2d_input=
serving_default_conv2d_input:0         00;
dense_10
StatefulPartitionedCall:0         tensorflow/serving/predict:╢╨
вH
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
▀_default_save_signature
р__call__
+с&call_and_return_all_conditional_losses"СA
_tf_keras_sequentialЄ@{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 48, 48, 1]}, "float32", "conv2d_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 31}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0002500000118743628, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
╞

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
т__call__
+у&call_and_return_all_conditional_losses"Я

_tf_keras_layerЕ
{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}}
╗
$_module
%regularization_losses
&	variables
'trainable_variables
(	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"name": "module_wrapper", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
╦


)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses"д	
_tf_keras_layerК	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
╜
/_module
0regularization_losses
1	variables
2trainable_variables
3	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
м
4regularization_losses
5	variables
6trainable_variables
7	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"Ы
_tf_keras_layerБ{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 33}}
╜
8_module
9regularization_losses
:	variables
;trainable_variables
<	keras_api
ь__call__
+э&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
═


=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
ю__call__
+я&call_and_return_all_conditional_losses"ж	
_tf_keras_layerМ	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
╜
C_module
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
Ё__call__
+ё&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
╤


Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
Є__call__
+є&call_and_return_all_conditional_losses"к	
_tf_keras_layerР	{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
╜
N_module
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
▒
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses"а
_tf_keras_layerЖ{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 36}}
╜
W_module
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
°__call__
+∙&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
╤


\kernel
]bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
·__call__
+√&call_and_return_all_conditional_losses"к	
_tf_keras_layerР	{"name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 128]}}
╜
b_module
cregularization_losses
d	variables
etrainable_variables
f	keras_api
№__call__
+¤&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
╤


gkernel
hbias
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
■__call__
+ &call_and_return_all_conditional_losses"к	
_tf_keras_layerР	{"name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 256]}}
╜
m_module
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
А__call__
+Б&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
▒
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
В__call__
+Г&call_and_return_all_conditional_losses"а
_tf_keras_layerЖ{"name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
╜
v_module
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
Ф
{regularization_losses
|	variables
}trainable_variables
~	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"Г
_tf_keras_layerщ{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 40}}
╥

kernel
	Аbias
Бregularization_losses
В	variables
Гtrainable_variables
Д	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9216}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9216]}}
┬
Е_module
Жregularization_losses
З	variables
Иtrainable_variables
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"name": "module_wrapper_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
├
К_module
Лregularization_losses
М	variables
Нtrainable_variables
О	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"а
_tf_keras_layerЖ{"name": "module_wrapper_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
▄
Пkernel
	Рbias
Сregularization_losses
Т	variables
Уtrainable_variables
Ф	keras_api
О__call__
+П&call_and_return_all_conditional_losses"п
_tf_keras_layerХ{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
╥
	Хiter
Цbeta_1
Чbeta_2

Шdecay
Щlearning_ratemгmд)mе*mж=mз>mиHmйImк\mл]mмgmнhmоmп	Аm░	Пm▒	Рm▓	Ъm│	Ыm┤	Юm╡	Яm╢	вm╖	гm╕	жm╣	зm║	кm╗	лm╝	оm╜	пm╛	▓m┐	│m└v┴v┬)v├*v─=v┼>v╞Hv╟Iv╚\v╔]v╩gv╦hv╠v═	Аv╬	Пv╧	Рv╨	Ъv╤	Ыv╥	Юv╙	Яv╘	вv╒	гv╓	жv╫	зv╪	кv┘	лv┌	оv█	пv▄	▓v▌	│v▐"
	optimizer
 "
trackable_list_wrapper
Х
0
1
Ъ2
Ы3
Ь4
Э5
)6
*7
Ю8
Я9
а10
б11
=12
>13
в14
г15
д16
е17
H18
I19
ж20
з21
и22
й23
\24
]25
к26
л27
м28
н29
g30
h31
о32
п33
░34
▒35
36
А37
▓38
│39
┤40
╡41
П42
Р43"
trackable_list_wrapper
Ч
0
1
Ъ2
Ы3
)4
*5
Ю6
Я7
=8
>9
в10
г11
H12
I13
ж14
з15
\16
]17
к18
л19
g20
h21
о22
п23
24
А25
▓26
│27
П28
Р29"
trackable_list_wrapper
╙
╢non_trainable_variables
╖layers
╕layer_metrics
regularization_losses
╣metrics
 ║layer_regularization_losses
	variables
trainable_variables
р__call__
▀_default_save_signature
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
-
Рserving_default"
signature_map
':%@2conv2d/kernel
:@2conv2d/bias
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
╡
╗non_trainable_variables
╝layer_metrics
╜layers
 regularization_losses
╛metrics
 ┐layer_regularization_losses
!	variables
"trainable_variables
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
▒	
	└axis

Ъgamma
	Ыbeta
Ьmoving_mean
Эmoving_variance
┴regularization_losses
┬	variables
├trainable_variables
─	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"╥
_tf_keras_layer╕{"name": "batchnorm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
 "
trackable_list_wrapper
@
Ъ0
Ы1
Ь2
Э3"
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
╡
┼non_trainable_variables
╞layer_metrics
╟layers
%regularization_losses
╚metrics
 ╔layer_regularization_losses
&	variables
'trainable_variables
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
╡
╩non_trainable_variables
╦layer_metrics
╠layers
+regularization_losses
═metrics
 ╬layer_regularization_losses
,	variables
-trainable_variables
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
▒	
	╧axis

Юgamma
	Яbeta
аmoving_mean
бmoving_variance
╨regularization_losses
╤	variables
╥trainable_variables
╙	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"╥
_tf_keras_layer╕{"name": "batchnorm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
 "
trackable_list_wrapper
@
Ю0
Я1
а2
б3"
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
╡
╘non_trainable_variables
╒layer_metrics
╓layers
0regularization_losses
╫metrics
 ╪layer_regularization_losses
1	variables
2trainable_variables
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
┘non_trainable_variables
┌layer_metrics
█layers
4regularization_losses
▄metrics
 ▌layer_regularization_losses
5	variables
6trainable_variables
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
ч
▐regularization_losses
▀	variables
рtrainable_variables
с	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"╥
_tf_keras_layer╕{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
тnon_trainable_variables
уlayer_metrics
фlayers
9regularization_losses
хmetrics
 цlayer_regularization_losses
:	variables
;trainable_variables
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
*:(@А2conv2d_2/kernel
:А2conv2d_2/bias
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
╡
чnon_trainable_variables
шlayer_metrics
щlayers
?regularization_losses
ъmetrics
 ыlayer_regularization_losses
@	variables
Atrainable_variables
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
│	
	ьaxis

вgamma
	гbeta
дmoving_mean
еmoving_variance
эregularization_losses
ю	variables
яtrainable_variables
Ё	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"╘
_tf_keras_layer║{"name": "batchnorm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
 "
trackable_list_wrapper
@
в0
г1
д2
е3"
trackable_list_wrapper
0
в0
г1"
trackable_list_wrapper
╡
ёnon_trainable_variables
Єlayer_metrics
єlayers
Dregularization_losses
Їmetrics
 їlayer_regularization_losses
E	variables
Ftrainable_variables
Ё__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
+:)АА2conv2d_3/kernel
:А2conv2d_3/bias
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
╡
Ўnon_trainable_variables
ўlayer_metrics
°layers
Jregularization_losses
∙metrics
 ·layer_regularization_losses
K	variables
Ltrainable_variables
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
│	
	√axis

жgamma
	зbeta
иmoving_mean
йmoving_variance
№regularization_losses
¤	variables
■trainable_variables
 	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"╘
_tf_keras_layer║{"name": "batchnorm_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
 "
trackable_list_wrapper
@
ж0
з1
и2
й3"
trackable_list_wrapper
0
ж0
з1"
trackable_list_wrapper
╡
Аnon_trainable_variables
Бlayer_metrics
Вlayers
Oregularization_losses
Гmetrics
 Дlayer_regularization_losses
P	variables
Qtrainable_variables
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Еnon_trainable_variables
Жlayer_metrics
Зlayers
Sregularization_losses
Иmetrics
 Йlayer_regularization_losses
T	variables
Utrainable_variables
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
ы
Кregularization_losses
Л	variables
Мtrainable_variables
Н	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"╓
_tf_keras_layer╝{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Оnon_trainable_variables
Пlayer_metrics
Рlayers
Xregularization_losses
Сmetrics
 Тlayer_regularization_losses
Y	variables
Ztrainable_variables
°__call__
+∙&call_and_return_all_conditional_losses
'∙"call_and_return_conditional_losses"
_generic_user_object
+:)АА2conv2d_4/kernel
:А2conv2d_4/bias
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
╡
Уnon_trainable_variables
Фlayer_metrics
Хlayers
^regularization_losses
Цmetrics
 Чlayer_regularization_losses
_	variables
`trainable_variables
·__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
│	
	Шaxis

кgamma
	лbeta
мmoving_mean
нmoving_variance
Щregularization_losses
Ъ	variables
Ыtrainable_variables
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"╘
_tf_keras_layer║{"name": "batchnorm_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 256]}}
 "
trackable_list_wrapper
@
к0
л1
м2
н3"
trackable_list_wrapper
0
к0
л1"
trackable_list_wrapper
╡
Эnon_trainable_variables
Юlayer_metrics
Яlayers
cregularization_losses
аmetrics
 бlayer_regularization_losses
d	variables
etrainable_variables
№__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
+:)АА2conv2d_5/kernel
:А2conv2d_5/bias
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
╡
вnon_trainable_variables
гlayer_metrics
дlayers
iregularization_losses
еmetrics
 жlayer_regularization_losses
j	variables
ktrainable_variables
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
│	
	зaxis

оgamma
	пbeta
░moving_mean
▒moving_variance
иregularization_losses
й	variables
кtrainable_variables
л	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"╘
_tf_keras_layer║{"name": "batchnorm_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 256]}}
 "
trackable_list_wrapper
@
о0
п1
░2
▒3"
trackable_list_wrapper
0
о0
п1"
trackable_list_wrapper
╡
мnon_trainable_variables
нlayer_metrics
оlayers
nregularization_losses
пmetrics
 ░layer_regularization_losses
o	variables
ptrainable_variables
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
▒non_trainable_variables
▓layer_metrics
│layers
rregularization_losses
┤metrics
 ╡layer_regularization_losses
s	variables
ttrainable_variables
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
ы
╢regularization_losses
╖	variables
╕trainable_variables
╣	keras_api
б__call__
+в&call_and_return_all_conditional_losses"╓
_tf_keras_layer╝{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
║non_trainable_variables
╗layer_metrics
╝layers
wregularization_losses
╜metrics
 ╛layer_regularization_losses
x	variables
ytrainable_variables
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
┐non_trainable_variables
└layer_metrics
┴layers
{regularization_losses
┬metrics
 ├layer_regularization_losses
|	variables
}trainable_variables
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 :
АHА2dense/kernel
:А2
dense/bias
 "
trackable_list_wrapper
/
0
А1"
trackable_list_wrapper
/
0
А1"
trackable_list_wrapper
╕
─non_trainable_variables
┼layer_metrics
╞layers
Бregularization_losses
╟metrics
 ╚layer_regularization_losses
В	variables
Гtrainable_variables
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
л	
	╔axis

▓gamma
	│beta
┤moving_mean
╡moving_variance
╩regularization_losses
╦	variables
╠trainable_variables
═	keras_api
г__call__
+д&call_and_return_all_conditional_losses"╠
_tf_keras_layer▓{"name": "batchnorm_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
 "
trackable_list_wrapper
@
▓0
│1
┤2
╡3"
trackable_list_wrapper
0
▓0
│1"
trackable_list_wrapper
╕
╬non_trainable_variables
╧layer_metrics
╨layers
Жregularization_losses
╤metrics
 ╥layer_regularization_losses
З	variables
Иtrainable_variables
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
ы
╙regularization_losses
╘	variables
╒trainable_variables
╓	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"╓
_tf_keras_layer╝{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.6, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╫non_trainable_variables
╪layer_metrics
┘layers
Лregularization_losses
┌metrics
 █layer_regularization_losses
М	variables
Нtrainable_variables
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
!:	А2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
0
П0
Р1"
trackable_list_wrapper
0
П0
Р1"
trackable_list_wrapper
╕
▄non_trainable_variables
▌layer_metrics
▐layers
Сregularization_losses
▀metrics
 рlayer_regularization_losses
Т	variables
Уtrainable_variables
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,@2 module_wrapper/batchnorm_1/gamma
-:+@2module_wrapper/batchnorm_1/beta
6:4@ (2&module_wrapper/batchnorm_1/moving_mean
::8@ (2*module_wrapper/batchnorm_1/moving_variance
0:.@2"module_wrapper_1/batchnorm_2/gamma
/:-@2!module_wrapper_1/batchnorm_2/beta
8:6@ (2(module_wrapper_1/batchnorm_2/moving_mean
<::@ (2,module_wrapper_1/batchnorm_2/moving_variance
1:/А2"module_wrapper_3/batchnorm_3/gamma
0:.А2!module_wrapper_3/batchnorm_3/beta
9:7А (2(module_wrapper_3/batchnorm_3/moving_mean
=:;А (2,module_wrapper_3/batchnorm_3/moving_variance
1:/А2"module_wrapper_4/batchnorm_4/gamma
0:.А2!module_wrapper_4/batchnorm_4/beta
9:7А (2(module_wrapper_4/batchnorm_4/moving_mean
=:;А (2,module_wrapper_4/batchnorm_4/moving_variance
1:/А2"module_wrapper_6/batchnorm_5/gamma
0:.А2!module_wrapper_6/batchnorm_5/beta
9:7А (2(module_wrapper_6/batchnorm_5/moving_mean
=:;А (2,module_wrapper_6/batchnorm_5/moving_variance
1:/А2"module_wrapper_7/batchnorm_6/gamma
0:.А2!module_wrapper_7/batchnorm_6/beta
9:7А (2(module_wrapper_7/batchnorm_6/moving_mean
=:;А (2,module_wrapper_7/batchnorm_6/moving_variance
1:/А2"module_wrapper_9/batchnorm_7/gamma
0:.А2!module_wrapper_9/batchnorm_7/beta
9:7А (2(module_wrapper_9/batchnorm_7/moving_mean
=:;А (2,module_wrapper_9/batchnorm_7/moving_variance
Ф
Ь0
Э1
а2
б3
д4
е5
и6
й7
м8
н9
░10
▒11
┤12
╡13"
trackable_list_wrapper
╬
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
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
с0
т1"
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
trackable_list_wrapper
@
Ъ0
Ы1
Ь2
Э3"
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
╕
уnon_trainable_variables
фlayer_metrics
хlayers
┴regularization_losses
цmetrics
 чlayer_regularization_losses
┬	variables
├trainable_variables
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
0
Ь0
Э1"
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
trackable_list_wrapper
@
Ю0
Я1
а2
б3"
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
╕
шnon_trainable_variables
щlayer_metrics
ъlayers
╨regularization_losses
ыmetrics
 ьlayer_regularization_losses
╤	variables
╥trainable_variables
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
0
а0
б1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
╕
эnon_trainable_variables
юlayer_metrics
яlayers
▐regularization_losses
Ёmetrics
 ёlayer_regularization_losses
▀	variables
рtrainable_variables
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
@
в0
г1
д2
е3"
trackable_list_wrapper
0
в0
г1"
trackable_list_wrapper
╕
Єnon_trainable_variables
єlayer_metrics
Їlayers
эregularization_losses
їmetrics
 Ўlayer_regularization_losses
ю	variables
яtrainable_variables
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
0
д0
е1"
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
trackable_list_wrapper
@
ж0
з1
и2
й3"
trackable_list_wrapper
0
ж0
з1"
trackable_list_wrapper
╕
ўnon_trainable_variables
°layer_metrics
∙layers
№regularization_losses
·metrics
 √layer_regularization_losses
¤	variables
■trainable_variables
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
0
и0
й1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
╕
№non_trainable_variables
¤layer_metrics
■layers
Кregularization_losses
 metrics
 Аlayer_regularization_losses
Л	variables
Мtrainable_variables
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
@
к0
л1
м2
н3"
trackable_list_wrapper
0
к0
л1"
trackable_list_wrapper
╕
Бnon_trainable_variables
Вlayer_metrics
Гlayers
Щregularization_losses
Дmetrics
 Еlayer_regularization_losses
Ъ	variables
Ыtrainable_variables
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
0
м0
н1"
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
trackable_list_wrapper
@
о0
п1
░2
▒3"
trackable_list_wrapper
0
о0
п1"
trackable_list_wrapper
╕
Жnon_trainable_variables
Зlayer_metrics
Иlayers
иregularization_losses
Йmetrics
 Кlayer_regularization_losses
й	variables
кtrainable_variables
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
0
░0
▒1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лnon_trainable_variables
Мlayer_metrics
Нlayers
╢regularization_losses
Оmetrics
 Пlayer_regularization_losses
╖	variables
╕trainable_variables
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
@
▓0
│1
┤2
╡3"
trackable_list_wrapper
0
▓0
│1"
trackable_list_wrapper
╕
Рnon_trainable_variables
Сlayer_metrics
Тlayers
╩regularization_losses
Уmetrics
 Фlayer_regularization_losses
╦	variables
╠trainable_variables
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
0
┤0
╡1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Хnon_trainable_variables
Цlayer_metrics
Чlayers
╙regularization_losses
Шmetrics
 Щlayer_regularization_losses
╘	variables
╒trainable_variables
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
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
╪

Ъtotal

Ыcount
Ь	variables
Э	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 43}
Ь

Юtotal

Яcount
а
_fn_kwargs
б	variables
в	keras_api"╨
_tf_keras_metric╡{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 31}
0
Ь0
Э1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
а0
б1"
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
0
д0
е1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
и0
й1"
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
0
м0
н1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
░0
▒1"
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
0
┤0
╡1"
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
:  (2total
:  (2count
0
Ъ0
Ы1"
trackable_list_wrapper
.
Ь	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ю0
Я1"
trackable_list_wrapper
.
б	variables"
_generic_user_object
,:*@2Adam/conv2d/kernel/m
:@2Adam/conv2d/bias/m
.:,@@2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
/:-@А2Adam/conv2d_2/kernel/m
!:А2Adam/conv2d_2/bias/m
0:.АА2Adam/conv2d_3/kernel/m
!:А2Adam/conv2d_3/bias/m
0:.АА2Adam/conv2d_4/kernel/m
!:А2Adam/conv2d_4/bias/m
0:.АА2Adam/conv2d_5/kernel/m
!:А2Adam/conv2d_5/bias/m
%:#
АHА2Adam/dense/kernel/m
:А2Adam/dense/bias/m
&:$	А2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
3:1@2'Adam/module_wrapper/batchnorm_1/gamma/m
2:0@2&Adam/module_wrapper/batchnorm_1/beta/m
5:3@2)Adam/module_wrapper_1/batchnorm_2/gamma/m
4:2@2(Adam/module_wrapper_1/batchnorm_2/beta/m
6:4А2)Adam/module_wrapper_3/batchnorm_3/gamma/m
5:3А2(Adam/module_wrapper_3/batchnorm_3/beta/m
6:4А2)Adam/module_wrapper_4/batchnorm_4/gamma/m
5:3А2(Adam/module_wrapper_4/batchnorm_4/beta/m
6:4А2)Adam/module_wrapper_6/batchnorm_5/gamma/m
5:3А2(Adam/module_wrapper_6/batchnorm_5/beta/m
6:4А2)Adam/module_wrapper_7/batchnorm_6/gamma/m
5:3А2(Adam/module_wrapper_7/batchnorm_6/beta/m
6:4А2)Adam/module_wrapper_9/batchnorm_7/gamma/m
5:3А2(Adam/module_wrapper_9/batchnorm_7/beta/m
,:*@2Adam/conv2d/kernel/v
:@2Adam/conv2d/bias/v
.:,@@2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
/:-@А2Adam/conv2d_2/kernel/v
!:А2Adam/conv2d_2/bias/v
0:.АА2Adam/conv2d_3/kernel/v
!:А2Adam/conv2d_3/bias/v
0:.АА2Adam/conv2d_4/kernel/v
!:А2Adam/conv2d_4/bias/v
0:.АА2Adam/conv2d_5/kernel/v
!:А2Adam/conv2d_5/bias/v
%:#
АHА2Adam/dense/kernel/v
:А2Adam/dense/bias/v
&:$	А2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
3:1@2'Adam/module_wrapper/batchnorm_1/gamma/v
2:0@2&Adam/module_wrapper/batchnorm_1/beta/v
5:3@2)Adam/module_wrapper_1/batchnorm_2/gamma/v
4:2@2(Adam/module_wrapper_1/batchnorm_2/beta/v
6:4А2)Adam/module_wrapper_3/batchnorm_3/gamma/v
5:3А2(Adam/module_wrapper_3/batchnorm_3/beta/v
6:4А2)Adam/module_wrapper_4/batchnorm_4/gamma/v
5:3А2(Adam/module_wrapper_4/batchnorm_4/beta/v
6:4А2)Adam/module_wrapper_6/batchnorm_5/gamma/v
5:3А2(Adam/module_wrapper_6/batchnorm_5/beta/v
6:4А2)Adam/module_wrapper_7/batchnorm_6/gamma/v
5:3А2(Adam/module_wrapper_7/batchnorm_6/beta/v
6:4А2)Adam/module_wrapper_9/batchnorm_7/gamma/v
5:3А2(Adam/module_wrapper_9/batchnorm_7/beta/v
ь2щ
!__inference__wrapped_model_135394├
Л▓З
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
annotationsк *3в0
.К+
conv2d_input         00
·2ў
+__inference_sequential_layer_call_fn_135902
+__inference_sequential_layer_call_fn_138148
+__inference_sequential_layer_call_fn_138241
+__inference_sequential_layer_call_fn_136805└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
ц2у
F__inference_sequential_layer_call_and_return_conditional_losses_138410
F__inference_sequential_layer_call_and_return_conditional_losses_138621
F__inference_sequential_layer_call_and_return_conditional_losses_136920
F__inference_sequential_layer_call_and_return_conditional_losses_137035└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_conv2d_layer_call_fn_138630в
Щ▓Х
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
annotationsк *
 
ь2щ
B__inference_conv2d_layer_call_and_return_conditional_losses_138641в
Щ▓Х
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
annotationsк *
 
и2е
/__inference_module_wrapper_layer_call_fn_138654
/__inference_module_wrapper_layer_call_fn_138667└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
▐2█
J__inference_module_wrapper_layer_call_and_return_conditional_losses_138685
J__inference_module_wrapper_layer_call_and_return_conditional_losses_138703└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╙2╨
)__inference_conv2d_1_layer_call_fn_138712в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_1_layer_call_and_return_conditional_losses_138723в
Щ▓Х
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
annotationsк *
 
м2й
1__inference_module_wrapper_1_layer_call_fn_138736
1__inference_module_wrapper_1_layer_call_fn_138749└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_138767
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_138785└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
Ц2У
.__inference_max_pooling2d_layer_call_fn_135406р
Щ▓Х
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
annotationsк *@в=
;К84                                    
▒2о
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_135400р
Щ▓Х
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
annotationsк *@в=
;К84                                    
м2й
1__inference_module_wrapper_2_layer_call_fn_138790
1__inference_module_wrapper_2_layer_call_fn_138795└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_138800
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_138812└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╙2╨
)__inference_conv2d_2_layer_call_fn_138821в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_2_layer_call_and_return_conditional_losses_138832в
Щ▓Х
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
annotationsк *
 
м2й
1__inference_module_wrapper_3_layer_call_fn_138845
1__inference_module_wrapper_3_layer_call_fn_138858└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_138876
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_138894└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╙2╨
)__inference_conv2d_3_layer_call_fn_138903в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_3_layer_call_and_return_conditional_losses_138914в
Щ▓Х
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
annotationsк *
 
м2й
1__inference_module_wrapper_4_layer_call_fn_138927
1__inference_module_wrapper_4_layer_call_fn_138940└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_138958
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_138976└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
Ш2Х
0__inference_max_pooling2d_1_layer_call_fn_135418р
Щ▓Х
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
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_135412р
Щ▓Х
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
annotationsк *@в=
;К84                                    
м2й
1__inference_module_wrapper_5_layer_call_fn_138981
1__inference_module_wrapper_5_layer_call_fn_138986└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_138991
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_139003└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╙2╨
)__inference_conv2d_4_layer_call_fn_139012в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_4_layer_call_and_return_conditional_losses_139023в
Щ▓Х
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
annotationsк *
 
м2й
1__inference_module_wrapper_6_layer_call_fn_139036
1__inference_module_wrapper_6_layer_call_fn_139049└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_139067
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_139085└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╙2╨
)__inference_conv2d_5_layer_call_fn_139094в
Щ▓Х
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
annotationsк *
 
ю2ы
D__inference_conv2d_5_layer_call_and_return_conditional_losses_139105в
Щ▓Х
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
annotationsк *
 
м2й
1__inference_module_wrapper_7_layer_call_fn_139118
1__inference_module_wrapper_7_layer_call_fn_139131└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_139149
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_139167└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
Ш2Х
0__inference_max_pooling2d_2_layer_call_fn_135430р
Щ▓Х
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
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_135424р
Щ▓Х
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
annotationsк *@в=
;К84                                    
м2й
1__inference_module_wrapper_8_layer_call_fn_139172
1__inference_module_wrapper_8_layer_call_fn_139177└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_139182
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_139194└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╥2╧
(__inference_flatten_layer_call_fn_139199в
Щ▓Х
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
annotationsк *
 
э2ъ
C__inference_flatten_layer_call_and_return_conditional_losses_139205в
Щ▓Х
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
annotationsк *
 
╨2═
&__inference_dense_layer_call_fn_139214в
Щ▓Х
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
annotationsк *
 
ы2ш
A__inference_dense_layer_call_and_return_conditional_losses_139225в
Щ▓Х
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
annotationsк *
 
м2й
1__inference_module_wrapper_9_layer_call_fn_139238
1__inference_module_wrapper_9_layer_call_fn_139251└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
т2▀
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_139271
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_139305└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
о2л
2__inference_module_wrapper_10_layer_call_fn_139310
2__inference_module_wrapper_10_layer_call_fn_139315└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
ф2с
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_139320
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_139332└
╖▓│
FullArgSpec
argsЪ
jself
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╥2╧
(__inference_dense_1_layer_call_fn_139341в
Щ▓Х
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
annotationsк *
 
э2ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_139352в
Щ▓Х
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
annotationsк *
 
╨B═
$__inference_signature_wrapper_137136conv2d_input"Ф
Н▓Й
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
annotationsк *
 
Ц2У
,__inference_batchnorm_1_layer_call_fn_139365
,__inference_batchnorm_1_layer_call_fn_139378┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_139396
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_139414┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_batchnorm_2_layer_call_fn_139427
,__inference_batchnorm_2_layer_call_fn_139440┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_139458
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_139476┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_batchnorm_3_layer_call_fn_139489
,__inference_batchnorm_3_layer_call_fn_139502┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_139520
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_139538┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_batchnorm_4_layer_call_fn_139551
,__inference_batchnorm_4_layer_call_fn_139564┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_139582
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_139600┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_batchnorm_5_layer_call_fn_139613
,__inference_batchnorm_5_layer_call_fn_139626┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_139644
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_139662┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_batchnorm_6_layer_call_fn_139675
,__inference_batchnorm_6_layer_call_fn_139688┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_139706
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_139724┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
,__inference_batchnorm_7_layer_call_fn_139737
,__inference_batchnorm_7_layer_call_fn_139750┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╠2╔
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_139770
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_139804┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 х
!__inference__wrapped_model_135394┐KЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А╡▓┤│ПР=в:
3в0
.К+
conv2d_input         00
к "1к.
,
dense_1!К
dense_1         ц
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_139396ЪЪЫЬЭMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ц
G__inference_batchnorm_1_layer_call_and_return_conditional_losses_139414ЪЪЫЬЭMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╛
,__inference_batchnorm_1_layer_call_fn_139365НЪЫЬЭMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╛
,__inference_batchnorm_1_layer_call_fn_139378НЪЫЬЭMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @ц
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_139458ЪЮЯабMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ц
G__inference_batchnorm_2_layer_call_and_return_conditional_losses_139476ЪЮЯабMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╛
,__inference_batchnorm_2_layer_call_fn_139427НЮЯабMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╛
,__inference_batchnorm_2_layer_call_fn_139440НЮЯабMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @ш
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_139520ЬвгдеNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ш
G__inference_batchnorm_3_layer_call_and_return_conditional_losses_139538ЬвгдеNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ └
,__inference_batchnorm_3_layer_call_fn_139489ПвгдеNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А└
,__inference_batchnorm_3_layer_call_fn_139502ПвгдеNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аш
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_139582ЬжзийNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ш
G__inference_batchnorm_4_layer_call_and_return_conditional_losses_139600ЬжзийNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ └
,__inference_batchnorm_4_layer_call_fn_139551ПжзийNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А└
,__inference_batchnorm_4_layer_call_fn_139564ПжзийNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аш
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_139644ЬклмнNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ш
G__inference_batchnorm_5_layer_call_and_return_conditional_losses_139662ЬклмнNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ └
,__inference_batchnorm_5_layer_call_fn_139613ПклмнNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А└
,__inference_batchnorm_5_layer_call_fn_139626ПклмнNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аш
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_139706Ьоп░▒NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ш
G__inference_batchnorm_6_layer_call_and_return_conditional_losses_139724Ьоп░▒NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ └
,__inference_batchnorm_6_layer_call_fn_139675Поп░▒NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А└
,__inference_batchnorm_6_layer_call_fn_139688Поп░▒NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А│
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_139770h╡▓┤│4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ │
G__inference_batchnorm_7_layer_call_and_return_conditional_losses_139804h┤╡▓│4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ Л
,__inference_batchnorm_7_layer_call_fn_139737[╡▓┤│4в1
*в'
!К
inputs         А
p 
к "К         АЛ
,__inference_batchnorm_7_layer_call_fn_139750[┤╡▓│4в1
*в'
!К
inputs         А
p
к "К         А┤
D__inference_conv2d_1_layer_call_and_return_conditional_losses_138723l)*7в4
-в*
(К%
inputs         00@
к "-в*
#К 
0         00@
Ъ М
)__inference_conv2d_1_layer_call_fn_138712_)*7в4
-в*
(К%
inputs         00@
к " К         00@╡
D__inference_conv2d_2_layer_call_and_return_conditional_losses_138832m=>7в4
-в*
(К%
inputs         @
к ".в+
$К!
0         А
Ъ Н
)__inference_conv2d_2_layer_call_fn_138821`=>7в4
-в*
(К%
inputs         @
к "!К         А╢
D__inference_conv2d_3_layer_call_and_return_conditional_losses_138914nHI8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ О
)__inference_conv2d_3_layer_call_fn_138903aHI8в5
.в+
)К&
inputs         А
к "!К         А╢
D__inference_conv2d_4_layer_call_and_return_conditional_losses_139023n\]8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ О
)__inference_conv2d_4_layer_call_fn_139012a\]8в5
.в+
)К&
inputs         А
к "!К         А╢
D__inference_conv2d_5_layer_call_and_return_conditional_losses_139105ngh8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ О
)__inference_conv2d_5_layer_call_fn_139094agh8в5
.в+
)К&
inputs         А
к "!К         А▓
B__inference_conv2d_layer_call_and_return_conditional_losses_138641l7в4
-в*
(К%
inputs         00
к "-в*
#К 
0         00@
Ъ К
'__inference_conv2d_layer_call_fn_138630_7в4
-в*
(К%
inputs         00
к " К         00@ж
C__inference_dense_1_layer_call_and_return_conditional_losses_139352_ПР0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ ~
(__inference_dense_1_layer_call_fn_139341RПР0в-
&в#
!К
inputs         А
к "К         д
A__inference_dense_layer_call_and_return_conditional_losses_139225_А0в-
&в#
!К
inputs         АH
к "&в#
К
0         А
Ъ |
&__inference_dense_layer_call_fn_139214RА0в-
&в#
!К
inputs         АH
к "К         Ай
C__inference_flatten_layer_call_and_return_conditional_losses_139205b8в5
.в+
)К&
inputs         А
к "&в#
К
0         АH
Ъ Б
(__inference_flatten_layer_call_fn_139199U8в5
.в+
)К&
inputs         А
к "К         АHю
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_135412ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_1_layer_call_fn_135418СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_135424ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_2_layer_call_fn_135430СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ь
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_135400ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ─
.__inference_max_pooling2d_layer_call_fn_135406СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╗
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_139320j@в=
&в#
!К
args_0         А
к

trainingp "&в#
К
0         А
Ъ ╗
M__inference_module_wrapper_10_layer_call_and_return_conditional_losses_139332j@в=
&в#
!К
args_0         А
к

trainingp"&в#
К
0         А
Ъ У
2__inference_module_wrapper_10_layer_call_fn_139310]@в=
&в#
!К
args_0         А
к

trainingp "К         АУ
2__inference_module_wrapper_10_layer_call_fn_139315]@в=
&в#
!К
args_0         А
к

trainingp"К         А╙
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_138767ВЮЯабGвD
-в*
(К%
args_0         00@
к

trainingp "-в*
#К 
0         00@
Ъ ╙
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_138785ВЮЯабGвD
-в*
(К%
args_0         00@
к

trainingp"-в*
#К 
0         00@
Ъ к
1__inference_module_wrapper_1_layer_call_fn_138736uЮЯабGвD
-в*
(К%
args_0         00@
к

trainingp " К         00@к
1__inference_module_wrapper_1_layer_call_fn_138749uЮЯабGвD
-в*
(К%
args_0         00@
к

trainingp" К         00@╚
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_138800xGвD
-в*
(К%
args_0         @
к

trainingp "-в*
#К 
0         @
Ъ ╚
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_138812xGвD
-в*
(К%
args_0         @
к

trainingp"-в*
#К 
0         @
Ъ а
1__inference_module_wrapper_2_layer_call_fn_138790kGвD
-в*
(К%
args_0         @
к

trainingp " К         @а
1__inference_module_wrapper_2_layer_call_fn_138795kGвD
-в*
(К%
args_0         @
к

trainingp" К         @╒
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_138876ДвгдеHвE
.в+
)К&
args_0         А
к

trainingp ".в+
$К!
0         А
Ъ ╒
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_138894ДвгдеHвE
.в+
)К&
args_0         А
к

trainingp".в+
$К!
0         А
Ъ м
1__inference_module_wrapper_3_layer_call_fn_138845wвгдеHвE
.в+
)К&
args_0         А
к

trainingp "!К         Ам
1__inference_module_wrapper_3_layer_call_fn_138858wвгдеHвE
.в+
)К&
args_0         А
к

trainingp"!К         А╒
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_138958ДжзийHвE
.в+
)К&
args_0         А
к

trainingp ".в+
$К!
0         А
Ъ ╒
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_138976ДжзийHвE
.в+
)К&
args_0         А
к

trainingp".в+
$К!
0         А
Ъ м
1__inference_module_wrapper_4_layer_call_fn_138927wжзийHвE
.в+
)К&
args_0         А
к

trainingp "!К         Ам
1__inference_module_wrapper_4_layer_call_fn_138940wжзийHвE
.в+
)К&
args_0         А
к

trainingp"!К         А╩
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_138991zHвE
.в+
)К&
args_0         А
к

trainingp ".в+
$К!
0         А
Ъ ╩
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_139003zHвE
.в+
)К&
args_0         А
к

trainingp".в+
$К!
0         А
Ъ в
1__inference_module_wrapper_5_layer_call_fn_138981mHвE
.в+
)К&
args_0         А
к

trainingp "!К         Ав
1__inference_module_wrapper_5_layer_call_fn_138986mHвE
.в+
)К&
args_0         А
к

trainingp"!К         А╒
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_139067ДклмнHвE
.в+
)К&
args_0         А
к

trainingp ".в+
$К!
0         А
Ъ ╒
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_139085ДклмнHвE
.в+
)К&
args_0         А
к

trainingp".в+
$К!
0         А
Ъ м
1__inference_module_wrapper_6_layer_call_fn_139036wклмнHвE
.в+
)К&
args_0         А
к

trainingp "!К         Ам
1__inference_module_wrapper_6_layer_call_fn_139049wклмнHвE
.в+
)К&
args_0         А
к

trainingp"!К         А╒
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_139149Доп░▒HвE
.в+
)К&
args_0         А
к

trainingp ".в+
$К!
0         А
Ъ ╒
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_139167Доп░▒HвE
.в+
)К&
args_0         А
к

trainingp".в+
$К!
0         А
Ъ м
1__inference_module_wrapper_7_layer_call_fn_139118wоп░▒HвE
.в+
)К&
args_0         А
к

trainingp "!К         Ам
1__inference_module_wrapper_7_layer_call_fn_139131wоп░▒HвE
.в+
)К&
args_0         А
к

trainingp"!К         А╩
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_139182zHвE
.в+
)К&
args_0         А
к

trainingp ".в+
$К!
0         А
Ъ ╩
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_139194zHвE
.в+
)К&
args_0         А
к

trainingp".в+
$К!
0         А
Ъ в
1__inference_module_wrapper_8_layer_call_fn_139172mHвE
.в+
)К&
args_0         А
к

trainingp "!К         Ав
1__inference_module_wrapper_8_layer_call_fn_139177mHвE
.в+
)К&
args_0         А
к

trainingp"!К         А─
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_139271t╡▓┤│@в=
&в#
!К
args_0         А
к

trainingp "&в#
К
0         А
Ъ ─
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_139305t┤╡▓│@в=
&в#
!К
args_0         А
к

trainingp"&в#
К
0         А
Ъ Ь
1__inference_module_wrapper_9_layer_call_fn_139238g╡▓┤│@в=
&в#
!К
args_0         А
к

trainingp "К         АЬ
1__inference_module_wrapper_9_layer_call_fn_139251g┤╡▓│@в=
&в#
!К
args_0         А
к

trainingp"К         А╤
J__inference_module_wrapper_layer_call_and_return_conditional_losses_138685ВЪЫЬЭGвD
-в*
(К%
args_0         00@
к

trainingp "-в*
#К 
0         00@
Ъ ╤
J__inference_module_wrapper_layer_call_and_return_conditional_losses_138703ВЪЫЬЭGвD
-в*
(К%
args_0         00@
к

trainingp"-в*
#К 
0         00@
Ъ и
/__inference_module_wrapper_layer_call_fn_138654uЪЫЬЭGвD
-в*
(К%
args_0         00@
к

trainingp " К         00@и
/__inference_module_wrapper_layer_call_fn_138667uЪЫЬЭGвD
-в*
(К%
args_0         00@
к

trainingp" К         00@Ж
F__inference_sequential_layer_call_and_return_conditional_losses_136920╗KЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А╡▓┤│ПРEвB
;в8
.К+
conv2d_input         00
p 

 
к "%в"
К
0         
Ъ Ж
F__inference_sequential_layer_call_and_return_conditional_losses_137035╗KЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А┤╡▓│ПРEвB
;в8
.К+
conv2d_input         00
p

 
к "%в"
К
0         
Ъ А
F__inference_sequential_layer_call_and_return_conditional_losses_138410╡KЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А╡▓┤│ПР?в<
5в2
(К%
inputs         00
p 

 
к "%в"
К
0         
Ъ А
F__inference_sequential_layer_call_and_return_conditional_losses_138621╡KЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А┤╡▓│ПР?в<
5в2
(К%
inputs         00
p

 
к "%в"
К
0         
Ъ ▐
+__inference_sequential_layer_call_fn_135902оKЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А╡▓┤│ПРEвB
;в8
.К+
conv2d_input         00
p 

 
к "К         ▐
+__inference_sequential_layer_call_fn_136805оKЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А┤╡▓│ПРEвB
;в8
.К+
conv2d_input         00
p

 
к "К         ╪
+__inference_sequential_layer_call_fn_138148иKЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А╡▓┤│ПР?в<
5в2
(К%
inputs         00
p 

 
к "К         ╪
+__inference_sequential_layer_call_fn_138241иKЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А┤╡▓│ПР?в<
5в2
(К%
inputs         00
p

 
к "К         °
$__inference_signature_wrapper_137136╧KЪЫЬЭ)*ЮЯаб=>вгдеHIжзий\]клмнghоп░▒А╡▓┤│ПРMвJ
в 
Cк@
>
conv2d_input.К+
conv2d_input         00"1к.
,
dense_1!К
dense_1         