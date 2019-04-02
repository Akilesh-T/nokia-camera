.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$OptimizeMode;,
        Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$CompatibilityLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;


# instance fields
.field public ccApiVersion:I

.field public ccEnableArenas:Z

.field public ccGenericServices:Z

.field public ccUtf8Verification:Z

.field public csharpNamespace:Ljava/lang/String;

.field public deprecated:Z

.field public goPackage:Ljava/lang/String;

.field public javaAltApiPackage:Ljava/lang/String;

.field public javaApiVersion:I

.field public javaEnableDualGenerateMutableApi:Z

.field public javaGenericServices:Z

.field public javaJava5Enums:Z

.field public javaMultipleFiles:Z

.field public javaMultipleFilesMutablePackage:Ljava/lang/String;

.field public javaMutableApi:Z

.field public javaOuterClassname:Ljava/lang/String;

.field public javaPackage:Ljava/lang/String;

.field public javaStringCheckUtf8:Z

.field public javaUseJavaproto2:Z

.field public javaUseJavastrings:Z

.field public javascriptPackage:Ljava/lang/String;

.field public objcClassPrefix:Ljava/lang/String;

.field public optimizeFor:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$OptimizeMode;
    .end annotation
.end field

.field public phpClassPrefix:Ljava/lang/String;

.field public phpGenericServices:Z

.field public phpNamespace:Ljava/lang/String;

.field public pyApiVersion:I

.field public pyGenericServices:Z

.field public swiftPrefix:Ljava/lang/String;

.field public szlApiVersion:I

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2919
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2920
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 2921
    return-void
.end method

.method public static checkCompatibilityLevelOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$CompatibilityLevel;
    .end annotation

    .prologue
    const/16 v0, 0x64

    .line 2758
    if-ltz p0, :cond_1

    if-gtz p0, :cond_1

    .line 2762
    :cond_0
    return p0

    .line 2761
    :cond_1
    if-lt p0, v0, :cond_2

    if-le p0, v0, :cond_0

    .line 2764
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum CompatibilityLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkCompatibilityLevelOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$CompatibilityLevel;
    .end annotation

    .prologue
    .line 2771
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2772
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 2773
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->checkCompatibilityLevelOrThrow(I)I

    .line 2772
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2775
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkOptimizeModeOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$OptimizeMode;
    .end annotation

    .prologue
    .line 2791
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    .line 2792
    return p0

    .line 2794
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum OptimizeMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkOptimizeModeOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$OptimizeMode;
    .end annotation

    .prologue
    .line 2801
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2802
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 2803
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->checkOptimizeModeOrThrow(I)I

    .line 2802
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2805
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 2812
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_1

    .line 2813
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2815
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    .line 2816
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 2818
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2820
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    return-object v0

    .line 2818
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3372
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3366
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2924
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    .line 2925
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    .line 2926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    .line 2927
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    .line 2928
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    .line 2929
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    .line 2930
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    .line 2931
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    .line 2932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    .line 2933
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    .line 2934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    .line 2935
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    .line 2936
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    .line 2937
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    .line 2938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    .line 2939
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    .line 2940
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    .line 2941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    .line 2942
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    .line 2943
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    .line 2944
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    .line 2945
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    .line 2946
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpGenericServices:Z

    .line 2947
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    .line 2948
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    .line 2949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    .line 2950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    .line 2951
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    .line 2952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    .line 2953
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    .line 2954
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 2955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2956
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->cachedSize:I

    .line 2957
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 3066
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 3067
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3068
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    .line 3069
    invoke-static {v5, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3071
    :cond_0
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    if-eq v3, v6, :cond_1

    .line 3072
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    .line 3073
    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3075
    :cond_1
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    if-eq v3, v6, :cond_2

    .line 3076
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    .line 3077
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3079
    :cond_2
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    if-eq v3, v6, :cond_3

    .line 3080
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    .line 3081
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3083
    :cond_3
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    if-eq v3, v5, :cond_4

    .line 3084
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    .line 3085
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3087
    :cond_4
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    if-eq v3, v5, :cond_5

    .line 3088
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    .line 3089
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3091
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3092
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    .line 3093
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3095
    :cond_6
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    if-eq v3, v5, :cond_7

    .line 3096
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    .line 3097
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3099
    :cond_7
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    if-eqz v3, :cond_8

    .line 3100
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    .line 3101
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3103
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3104
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    .line 3105
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3107
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3108
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    .line 3109
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3111
    :cond_a
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    if-eq v3, v5, :cond_b

    .line 3112
    const/16 v3, 0xe

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    .line 3113
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3115
    :cond_b
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    if-eqz v3, :cond_c

    .line 3116
    const/16 v3, 0x10

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    .line 3117
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3119
    :cond_c
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    if-eqz v3, :cond_d

    .line 3120
    const/16 v3, 0x11

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    .line 3121
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3123
    :cond_d
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    if-eqz v3, :cond_e

    .line 3124
    const/16 v3, 0x12

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    .line 3125
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3127
    :cond_e
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3128
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    .line 3129
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3131
    :cond_f
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    if-eqz v3, :cond_10

    .line 3132
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    .line 3133
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3135
    :cond_10
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    if-eqz v3, :cond_11

    .line 3136
    const/16 v3, 0x17

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    .line 3137
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3139
    :cond_11
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    if-eq v3, v5, :cond_12

    .line 3140
    const/16 v3, 0x18

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    .line 3141
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3143
    :cond_12
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    if-eqz v3, :cond_13

    .line 3144
    const/16 v3, 0x1a

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    .line 3145
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3147
    :cond_13
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    if-eqz v3, :cond_14

    .line 3148
    const/16 v3, 0x1b

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    .line 3149
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3151
    :cond_14
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    if-eqz v3, :cond_15

    .line 3152
    const/16 v3, 0x1c

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    .line 3153
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3155
    :cond_15
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 3156
    const/16 v3, 0x1d

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    .line 3157
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3159
    :cond_16
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    if-eqz v3, :cond_17

    .line 3160
    const/16 v3, 0x1f

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    .line 3161
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3163
    :cond_17
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3164
    const/16 v3, 0x24

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    .line 3165
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3167
    :cond_18
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 3168
    const/16 v3, 0x25

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    .line 3169
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3171
    :cond_19
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 3172
    const/16 v3, 0x27

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    .line 3173
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3175
    :cond_1a
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 3176
    const/16 v3, 0x28

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    .line 3177
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3179
    :cond_1b
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3180
    const/16 v3, 0x29

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    .line 3181
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3183
    :cond_1c
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpGenericServices:Z

    if-eqz v3, :cond_1d

    .line 3184
    const/16 v3, 0x2a

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpGenericServices:Z

    .line 3185
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3187
    :cond_1d
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_1f

    .line 3188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_1f

    .line 3189
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 3190
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_1e

    .line 3191
    const/16 v3, 0x3e7

    .line 3192
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3188
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3196
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_1f
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 3205
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 3209
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3210
    :sswitch_0
    return-object p0

    .line 3215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    goto :goto_0

    .line 3219
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    goto :goto_0

    .line 3223
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    goto :goto_0

    .line 3227
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    goto :goto_0

    .line 3231
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    goto :goto_0

    .line 3235
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    goto :goto_0

    .line 3239
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    goto :goto_0

    .line 3243
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 3245
    .local v3, "initialPos":I
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->checkOptimizeModeOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3246
    :catch_0
    move-exception v1

    .line 3247
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3248
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 3253
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    goto :goto_0

    .line 3257
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    goto :goto_0

    .line 3261
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    goto :goto_0

    .line 3265
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    goto :goto_0

    .line 3269
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    goto :goto_0

    .line 3273
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    goto :goto_0

    .line 3277
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    goto/16 :goto_0

    .line 3281
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 3285
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    goto/16 :goto_0

    .line 3289
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    goto/16 :goto_0

    .line 3293
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    goto/16 :goto_0

    .line 3297
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    goto/16 :goto_0

    .line 3301
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    goto/16 :goto_0

    .line 3305
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    goto/16 :goto_0

    .line 3309
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 3313
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    goto/16 :goto_0

    .line 3317
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 3321
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    goto/16 :goto_0

    .line 3325
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 3329
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 3333
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    goto/16 :goto_0

    .line 3337
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpGenericServices:Z

    goto/16 :goto_0

    .line 3341
    :sswitch_1f
    const/16 v7, 0x1f3a

    .line 3342
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3343
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_2

    move v2, v6

    .line 3344
    .local v2, "i":I
    :goto_1
    add-int v7, v2, v0

    new-array v4, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3346
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v2, :cond_1

    .line 3347
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3349
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3

    .line 3350
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 3351
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3352
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3349
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3343
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v7

    goto :goto_1

    .line 3355
    .restart local v2    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 3356
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3357
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 3205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x70 -> :sswitch_c
        0x80 -> :sswitch_d
        0x88 -> :sswitch_e
        0x90 -> :sswitch_f
        0x9a -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb8 -> :sswitch_12
        0xc0 -> :sswitch_13
        0xd0 -> :sswitch_14
        0xd8 -> :sswitch_15
        0xe0 -> :sswitch_16
        0xea -> :sswitch_17
        0xf8 -> :sswitch_18
        0x122 -> :sswitch_19
        0x12a -> :sswitch_1a
        0x13a -> :sswitch_1b
        0x142 -> :sswitch_1c
        0x14a -> :sswitch_1d
        0x150 -> :sswitch_1e
        0x1f3a -> :sswitch_1f
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2745
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2963
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2964
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2966
    :cond_0
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    if-eq v2, v5, :cond_1

    .line 2967
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2969
    :cond_1
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    if-eq v2, v5, :cond_2

    .line 2970
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2972
    :cond_2
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    if-eq v2, v5, :cond_3

    .line 2973
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2975
    :cond_3
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    if-eq v2, v4, :cond_4

    .line 2976
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2978
    :cond_4
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    if-eq v2, v4, :cond_5

    .line 2979
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2981
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2982
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2984
    :cond_6
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    if-eq v2, v4, :cond_7

    .line 2985
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2987
    :cond_7
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    if-eqz v2, :cond_8

    .line 2988
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2990
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2991
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2993
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2994
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2996
    :cond_a
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    if-eq v2, v4, :cond_b

    .line 2997
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2999
    :cond_b
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    if-eqz v2, :cond_c

    .line 3000
    const/16 v2, 0x10

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3002
    :cond_c
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    if-eqz v2, :cond_d

    .line 3003
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3005
    :cond_d
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    if-eqz v2, :cond_e

    .line 3006
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3008
    :cond_e
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3009
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3011
    :cond_f
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    if-eqz v2, :cond_10

    .line 3012
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3014
    :cond_10
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    if-eqz v2, :cond_11

    .line 3015
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3017
    :cond_11
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    if-eq v2, v4, :cond_12

    .line 3018
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3020
    :cond_12
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    if-eqz v2, :cond_13

    .line 3021
    const/16 v2, 0x1a

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3023
    :cond_13
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    if-eqz v2, :cond_14

    .line 3024
    const/16 v2, 0x1b

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3026
    :cond_14
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    if-eqz v2, :cond_15

    .line 3027
    const/16 v2, 0x1c

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3029
    :cond_15
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 3030
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3032
    :cond_16
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    if-eqz v2, :cond_17

    .line 3033
    const/16 v2, 0x1f

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3035
    :cond_17
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 3036
    const/16 v2, 0x24

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3038
    :cond_18
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 3039
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3041
    :cond_19
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 3042
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3044
    :cond_1a
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 3045
    const/16 v2, 0x28

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3047
    :cond_1b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 3048
    const/16 v2, 0x29

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpNamespace:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3050
    :cond_1c
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpGenericServices:Z

    if-eqz v2, :cond_1d

    .line 3051
    const/16 v2, 0x2a

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpGenericServices:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3053
    :cond_1d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_1f

    .line 3054
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 3055
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 3056
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_1e

    .line 3057
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3054
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3061
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_1f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3062
    return-void
.end method
