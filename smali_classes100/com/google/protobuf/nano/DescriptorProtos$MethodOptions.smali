.class public final Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;


# instance fields
.field public clientLogging:I

.field public clientStreaming:Z

.field public deadline:D

.field public deprecated:Z

.field public duplicateSuppression:Z

.field public endUserCredsRequested:Z

.field public failFast:Z

.field public goLegacyChannelApi:Z

.field public idempotencyLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .end annotation
.end field

.field public legacyClientInitialTokens:J

.field public legacyResultType:Ljava/lang/String;

.field public legacyServerInitialTokens:J

.field public legacyStreamType:Ljava/lang/String;

.field public legacyTokenUnit:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;
    .end annotation
.end field

.field public logLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;
    .end annotation
.end field

.field public protocol:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    .end annotation
.end field

.field public requestFormat:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation
.end field

.field public responseFormat:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation
.end field

.field public securityLabel:Ljava/lang/String;

.field public securityLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;
    .end annotation
.end field

.field public serverLogging:I

.field public serverStreaming:Z

.field public streamType:Ljava/lang/String;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4965
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4966
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    .line 4967
    return-void
.end method

.method public static checkFormatOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation

    .prologue
    .line 4760
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 4761
    return p0

    .line 4763
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum Format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFormatOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation

    .prologue
    .line 4770
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4771
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 4772
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkFormatOrThrow(I)I

    .line 4771
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4774
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkIdempotencyLevelOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .end annotation

    .prologue
    .line 4852
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 4853
    return p0

    .line 4855
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum IdempotencyLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIdempotencyLevelOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .end annotation

    .prologue
    .line 4862
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4863
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 4864
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkIdempotencyLevelOrThrow(I)I

    .line 4863
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4866
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkLogLevelOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;
    .end annotation

    .prologue
    .line 4794
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    .line 4795
    return p0

    .line 4797
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum LogLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkLogLevelOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;
    .end annotation

    .prologue
    .line 4804
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4805
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 4806
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkLogLevelOrThrow(I)I

    .line 4805
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4808
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkProtocolOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    .end annotation

    .prologue
    .line 4700
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 4701
    return p0

    .line 4703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum Protocol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkProtocolOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    .end annotation

    .prologue
    .line 4710
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4711
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 4712
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkProtocolOrThrow(I)I

    .line 4711
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4714
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkSecurityLevelOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;
    .end annotation

    .prologue
    .line 4732
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    .line 4733
    return p0

    .line 4735
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum SecurityLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSecurityLevelOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;
    .end annotation

    .prologue
    .line 4742
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4743
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 4744
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkSecurityLevelOrThrow(I)I

    .line 4743
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4746
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkTokenUnitOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;
    .end annotation

    .prologue
    .line 4822
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 4823
    return p0

    .line 4825
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum TokenUnit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTokenUnitOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;
    .end annotation

    .prologue
    .line 4832
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4833
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 4834
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkTokenUnitOrThrow(I)I

    .line 4833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4836
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 2

    .prologue
    .line 4873
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    .line 4874
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4876
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    .line 4877
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    .line 4879
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4881
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object v0

    .line 4879
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5372
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5366
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 4970
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    .line 4971
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    .line 4972
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    .line 4973
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    .line 4974
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    .line 4975
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    .line 4976
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    .line 4977
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    .line 4978
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    .line 4979
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    .line 4980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    .line 4981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    .line 4982
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    .line 4983
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    .line 4984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    .line 4985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    .line 4986
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    .line 4987
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    .line 4988
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    .line 4989
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    .line 4990
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    .line 4991
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    .line 4992
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    .line 4993
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4995
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->cachedSize:I

    .line 4996
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/16 v8, 0x100

    .line 5085
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5086
    .local v2, "size":I
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eqz v3, :cond_0

    .line 5087
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    .line 5088
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5090
    :cond_0
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 5091
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 5092
    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    .line 5093
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5095
    :cond_1
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    if-eqz v3, :cond_2

    .line 5096
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    .line 5097
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5099
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    if-eqz v3, :cond_3

    .line 5100
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    .line 5101
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5103
    :cond_3
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    if-eq v3, v8, :cond_4

    .line 5104
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    .line 5105
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5107
    :cond_4
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    if-eq v3, v8, :cond_5

    .line 5108
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    .line 5109
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5111
    :cond_5
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eqz v3, :cond_6

    .line 5112
    const/16 v3, 0xd

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    .line 5113
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5115
    :cond_6
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eqz v3, :cond_7

    .line 5116
    const/16 v3, 0xf

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    .line 5117
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5119
    :cond_7
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eqz v3, :cond_8

    .line 5120
    const/16 v3, 0x11

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    .line 5121
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5123
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 5124
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    .line 5125
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5127
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 5128
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    .line 5129
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5131
    :cond_a
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    if-eqz v3, :cond_b

    .line 5132
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    .line 5133
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5135
    :cond_b
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    if-eqz v3, :cond_c

    .line 5136
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    .line 5137
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5139
    :cond_c
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5140
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    .line 5141
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5143
    :cond_d
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 5144
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    .line 5145
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5147
    :cond_e
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_f

    .line 5148
    const/16 v3, 0x18

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    .line 5149
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5151
    :cond_f
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_10

    .line 5152
    const/16 v3, 0x19

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    .line 5153
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5155
    :cond_10
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    if-eqz v3, :cond_11

    .line 5156
    const/16 v3, 0x1a

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    .line 5157
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5159
    :cond_11
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    .line 5160
    const/16 v3, 0x1b

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    .line 5161
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5163
    :cond_12
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    .line 5164
    const/16 v3, 0x1c

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    .line 5165
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5167
    :cond_13
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    if-eqz v3, :cond_14

    .line 5168
    const/16 v3, 0x1d

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    .line 5169
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5171
    :cond_14
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    if-eqz v3, :cond_15

    .line 5172
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    .line 5173
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5175
    :cond_15
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    if-eqz v3, :cond_16

    .line 5176
    const/16 v3, 0x22

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    .line 5177
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5179
    :cond_16
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_18

    .line 5180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_18

    .line 5181
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 5182
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_17

    .line 5183
    const/16 v3, 0x3e7

    .line 5184
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5180
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5188
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_18
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 5196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 5197
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 5201
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5202
    :sswitch_0
    return-object p0

    .line 5207
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5209
    .local v3, "initialPos":I
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkProtocolOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5210
    :catch_0
    move-exception v1

    .line 5211
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5212
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5217
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    goto :goto_0

    .line 5221
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    goto :goto_0

    .line 5225
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    goto :goto_0

    .line 5229
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    goto :goto_0

    .line 5233
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    goto :goto_0

    .line 5237
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5239
    .restart local v3    # "initialPos":I
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkSecurityLevelOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5240
    :catch_1
    move-exception v1

    .line 5241
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5242
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5247
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5249
    .restart local v3    # "initialPos":I
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkFormatOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 5250
    :catch_2
    move-exception v1

    .line 5251
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5252
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5257
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5259
    .restart local v3    # "initialPos":I
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkFormatOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 5260
    :catch_3
    move-exception v1

    .line 5261
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5262
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5267
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5271
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 5275
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    goto/16 :goto_0

    .line 5279
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    goto/16 :goto_0

    .line 5283
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5287
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5291
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    goto/16 :goto_0

    .line 5295
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    goto/16 :goto_0

    .line 5299
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    goto/16 :goto_0

    .line 5303
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5305
    .restart local v3    # "initialPos":I
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkLogLevelOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 5306
    :catch_4
    move-exception v1

    .line 5307
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5308
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5313
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5315
    .restart local v3    # "initialPos":I
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkTokenUnitOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 5316
    :catch_5
    move-exception v1

    .line 5317
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5318
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5323
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    goto/16 :goto_0

    .line 5327
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    goto/16 :goto_0

    .line 5331
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5333
    .restart local v3    # "initialPos":I
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkIdempotencyLevelOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 5334
    :catch_6
    move-exception v1

    .line 5335
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5336
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5341
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_18
    const/16 v7, 0x1f3a

    .line 5342
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5343
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_2

    move v2, v6

    .line 5344
    .local v2, "i":I
    :goto_1
    add-int v7, v2, v0

    new-array v4, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 5346
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v2, :cond_1

    .line 5347
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5349
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3

    .line 5350
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 5351
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5352
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5349
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5343
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v7

    goto :goto_1

    .line 5355
    .restart local v2    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 5356
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5357
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 5197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x38 -> :sswitch_1
        0x41 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x58 -> :sswitch_5
        0x60 -> :sswitch_6
        0x68 -> :sswitch_7
        0x78 -> :sswitch_8
        0x88 -> :sswitch_9
        0x92 -> :sswitch_a
        0x9a -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa8 -> :sswitch_d
        0xb2 -> :sswitch_e
        0xba -> :sswitch_f
        0xc0 -> :sswitch_10
        0xc8 -> :sswitch_11
        0xd0 -> :sswitch_12
        0xd8 -> :sswitch_13
        0xe0 -> :sswitch_14
        0xe8 -> :sswitch_15
        0x108 -> :sswitch_16
        0x110 -> :sswitch_17
        0x1f3a -> :sswitch_18
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
    .line 4687
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 10
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/16 v6, 0x100

    .line 5002
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eqz v2, :cond_0

    .line 5003
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5005
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 5006
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 5007
    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5009
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    if-eqz v2, :cond_2

    .line 5010
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5012
    :cond_2
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    if-eqz v2, :cond_3

    .line 5013
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5015
    :cond_3
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    if-eq v2, v6, :cond_4

    .line 5016
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 5018
    :cond_4
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    if-eq v2, v6, :cond_5

    .line 5019
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 5021
    :cond_5
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eqz v2, :cond_6

    .line 5022
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5024
    :cond_6
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eqz v2, :cond_7

    .line 5025
    const/16 v2, 0xf

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5027
    :cond_7
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eqz v2, :cond_8

    .line 5028
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5030
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5031
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5033
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 5034
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5036
    :cond_a
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    if-eqz v2, :cond_b

    .line 5037
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5039
    :cond_b
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    if-eqz v2, :cond_c

    .line 5040
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5042
    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 5043
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5045
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 5046
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5048
    :cond_e
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_f

    .line 5049
    const/16 v2, 0x18

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5051
    :cond_f
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_10

    .line 5052
    const/16 v2, 0x19

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5054
    :cond_10
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    if-eqz v2, :cond_11

    .line 5055
    const/16 v2, 0x1a

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5057
    :cond_11
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    .line 5058
    const/16 v2, 0x1b

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5060
    :cond_12
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    .line 5061
    const/16 v2, 0x1c

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5063
    :cond_13
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    if-eqz v2, :cond_14

    .line 5064
    const/16 v2, 0x1d

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5066
    :cond_14
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    if-eqz v2, :cond_15

    .line 5067
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5069
    :cond_15
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    if-eqz v2, :cond_16

    .line 5070
    const/16 v2, 0x22

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5072
    :cond_16
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_18

    .line 5073
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 5074
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 5075
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_17

    .line 5076
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5073
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5080
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5081
    return-void
.end method
