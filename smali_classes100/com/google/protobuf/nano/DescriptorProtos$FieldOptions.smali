.class public final Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;


# instance fields
.field public ctype:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    .end annotation
.end field

.field public deprecated:Z

.field public deprecatedRawMessage:Z

.field public enforceUtf8:Z

.field public jstype:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;
    .end annotation
.end field

.field public lazy:Z

.field public packed:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

.field public upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

.field public weak:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3891
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3892
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 3893
    return-void
.end method

.method public static checkCTypeOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    .end annotation

    .prologue
    .line 3693
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 3694
    return p0

    .line 3696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum CType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkCTypeOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    .end annotation

    .prologue
    .line 3703
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3704
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 3705
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkCTypeOrThrow(I)I

    .line 3704
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3707
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkJSTypeOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;
    .end annotation

    .prologue
    .line 3723
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 3724
    return p0

    .line 3726
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum JSType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkJSTypeOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;
    .end annotation

    .prologue
    .line 3733
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3734
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 3735
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkJSTypeOrThrow(I)I

    .line 3734
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3737
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 2

    .prologue
    .line 3846
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_1

    .line 3847
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3849
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    .line 3850
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 3852
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    return-object v0

    .line 3852
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4124
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4118
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3896
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    .line 3897
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    .line 3898
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    .line 3899
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    .line 3900
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    .line 3901
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    .line 3902
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 3903
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    .line 3904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    .line 3905
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3907
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->cachedSize:I

    .line 3908
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3959
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 3960
    .local v2, "size":I
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    if-eqz v3, :cond_0

    .line 3961
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    .line 3962
    invoke-static {v5, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3964
    :cond_0
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    if-eqz v3, :cond_1

    .line 3965
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    .line 3966
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3968
    :cond_1
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    if-eqz v3, :cond_2

    .line 3969
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    .line 3970
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3972
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    if-eqz v3, :cond_3

    .line 3973
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    .line 3974
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3976
    :cond_3
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    if-eqz v3, :cond_4

    .line 3977
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    .line 3978
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3980
    :cond_4
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    if-eqz v3, :cond_5

    .line 3981
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    .line 3982
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3984
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 3985
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 3986
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    aget-object v0, v3, v1

    .line 3987
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    if-eqz v0, :cond_6

    .line 3988
    const/16 v3, 0xb

    .line 3989
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3985
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3993
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .end local v1    # "i":I
    :cond_7
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    if-eqz v3, :cond_8

    .line 3994
    const/16 v3, 0xc

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    .line 3995
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3997
    :cond_8
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    if-eq v3, v5, :cond_9

    .line 3998
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    .line 3999
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4001
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_b

    .line 4002
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 4003
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 4004
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_a

    .line 4005
    const/16 v3, 0x3e7

    .line 4006
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4002
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4010
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_b
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4018
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 4019
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 4023
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4024
    :sswitch_0
    return-object p0

    .line 4029
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 4031
    .local v3, "initialPos":I
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkCTypeOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4032
    :catch_0
    move-exception v1

    .line 4033
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4034
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4039
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    goto :goto_0

    .line 4043
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    goto :goto_0

    .line 4047
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    goto :goto_0

    .line 4051
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 4053
    .restart local v3    # "initialPos":I
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkJSTypeOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4054
    :catch_1
    move-exception v1

    .line 4055
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4056
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4061
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    goto :goto_0

    .line 4065
    :sswitch_7
    const/16 v7, 0x5a

    .line 4066
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4067
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-nez v7, :cond_2

    move v2, v6

    .line 4068
    .local v2, "i":I
    :goto_1
    add-int v7, v2, v0

    new-array v4, v7, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 4070
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    if-eqz v2, :cond_1

    .line 4071
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-static {v7, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4073
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3

    .line 4074
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    aput-object v7, v4, v2

    .line 4075
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4076
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4073
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4067
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v2, v7

    goto :goto_1

    .line 4079
    .restart local v2    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    aput-object v7, v4, v2

    .line 4080
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4081
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    goto/16 :goto_0

    .line 4085
    .end local v0    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    goto/16 :goto_0

    .line 4089
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    goto/16 :goto_0

    .line 4093
    :sswitch_a
    const/16 v7, 0x1f3a

    .line 4094
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4095
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_5

    move v2, v6

    .line 4096
    .restart local v2    # "i":I
    :goto_3
    add-int v7, v2, v0

    new-array v4, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4098
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v2, :cond_4

    .line 4099
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4101
    :cond_4
    :goto_4
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_6

    .line 4102
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 4103
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4104
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4101
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4095
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_5
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v7

    goto :goto_3

    .line 4107
    .restart local v2    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_6
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 4108
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4109
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 4019
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x50 -> :sswitch_6
        0x5a -> :sswitch_7
        0x60 -> :sswitch_8
        0x68 -> :sswitch_9
        0x1f3a -> :sswitch_a
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
    .line 3678
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 3914
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    if-eqz v2, :cond_0

    .line 3915
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3917
    :cond_0
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    if-eqz v2, :cond_1

    .line 3918
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3920
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    if-eqz v2, :cond_2

    .line 3921
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3923
    :cond_2
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    if-eqz v2, :cond_3

    .line 3924
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3926
    :cond_3
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    if-eqz v2, :cond_4

    .line 3927
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3929
    :cond_4
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    if-eqz v2, :cond_5

    .line 3930
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3932
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 3933
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 3934
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    aget-object v0, v2, v1

    .line 3935
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    if-eqz v0, :cond_6

    .line 3936
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3933
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3940
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .end local v1    # "i":I
    :cond_7
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    if-eqz v2, :cond_8

    .line 3941
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3943
    :cond_8
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    if-eq v2, v4, :cond_9

    .line 3944
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3946
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 3947
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 3948
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 3949
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_a

    .line 3950
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3947
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3954
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3955
    return-void
.end method
