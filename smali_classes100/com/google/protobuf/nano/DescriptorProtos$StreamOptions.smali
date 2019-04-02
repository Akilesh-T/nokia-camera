.class public final Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions$TokenUnit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;


# instance fields
.field public clientInitialTokens:J

.field public clientLogging:I

.field public deadline:D

.field public deprecated:Z

.field public endUserCredsRequested:Z

.field public failFast:Z

.field public logLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;
    .end annotation
.end field

.field public securityLabel:Ljava/lang/String;

.field public securityLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;
    .end annotation
.end field

.field public serverInitialTokens:J

.field public serverLogging:I

.field public tokenUnit:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions$TokenUnit;
    .end annotation
.end field

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5465
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5466
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 5467
    return-void
.end method

.method public static checkTokenUnitOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions$TokenUnit;
    .end annotation

    .prologue
    .line 5389
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 5390
    return p0

    .line 5392
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
        value = Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions$TokenUnit;
    .end annotation

    .prologue
    .line 5399
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 5400
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 5401
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->checkTokenUnitOrThrow(I)I

    .line 5400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5403
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 5410
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v0, :cond_1

    .line 5411
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5413
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v0, :cond_0

    .line 5414
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 5416
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5418
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    return-object v0

    .line 5416
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5716
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5710
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    .line 5470
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    .line 5471
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    .line 5472
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    .line 5473
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    .line 5474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    .line 5475
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    .line 5476
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    .line 5477
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    .line 5478
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    .line 5479
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    .line 5480
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    .line 5481
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    .line 5482
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 5483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5484
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->cachedSize:I

    .line 5485
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/16 v6, 0x100

    const/4 v8, 0x2

    .line 5541
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5542
    .local v2, "size":I
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    .line 5543
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    .line 5544
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5546
    :cond_0
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_1

    .line 5547
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    .line 5548
    invoke-static {v8, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5550
    :cond_1
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    if-eqz v3, :cond_2

    .line 5551
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    .line 5552
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5554
    :cond_2
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    if-eqz v3, :cond_3

    .line 5555
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    .line 5556
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5558
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5559
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    .line 5560
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5562
    :cond_4
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    if-eq v3, v6, :cond_5

    .line 5563
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    .line 5564
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5566
    :cond_5
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    if-eq v3, v6, :cond_6

    .line 5567
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    .line 5568
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5570
    :cond_6
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 5571
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    .line 5572
    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    .line 5573
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5575
    :cond_7
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    if-eqz v3, :cond_8

    .line 5576
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    .line 5577
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5579
    :cond_8
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    if-eqz v3, :cond_9

    .line 5580
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    .line 5581
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5583
    :cond_9
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    if-eq v3, v8, :cond_a

    .line 5584
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    .line 5585
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5587
    :cond_a
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    if-eqz v3, :cond_b

    .line 5588
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    .line 5589
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5591
    :cond_b
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_d

    .line 5592
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 5593
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 5594
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_c

    .line 5595
    const/16 v3, 0x3e7

    .line 5596
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5592
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5600
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_d
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 5608
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 5609
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 5613
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5614
    :sswitch_0
    return-object p0

    .line 5619
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    goto :goto_0

    .line 5623
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    goto :goto_0

    .line 5627
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5629
    .local v3, "initialPos":I
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->checkTokenUnitOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5630
    :catch_0
    move-exception v1

    .line 5631
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5632
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5637
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5639
    .restart local v3    # "initialPos":I
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkSecurityLevelOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5640
    :catch_1
    move-exception v1

    .line 5641
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5642
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5647
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    goto :goto_0

    .line 5651
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    goto :goto_0

    .line 5655
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    goto :goto_0

    .line 5659
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    goto :goto_0

    .line 5663
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    goto :goto_0

    .line 5667
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    goto :goto_0

    .line 5671
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 5673
    .restart local v3    # "initialPos":I
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkLogLevelOrThrow(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 5674
    :catch_2
    move-exception v1

    .line 5675
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5676
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5681
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "initialPos":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    goto/16 :goto_0

    .line 5685
    :sswitch_d
    const/16 v7, 0x1f3a

    .line 5686
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5687
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_2

    move v2, v6

    .line 5688
    .local v2, "i":I
    :goto_1
    add-int v7, v2, v0

    new-array v4, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 5690
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v2, :cond_1

    .line 5691
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5693
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3

    .line 5694
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 5695
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5696
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5693
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5687
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v7

    goto :goto_1

    .line 5699
    .restart local v2    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v4, v2

    .line 5700
    aget-object v7, v4, v2

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5701
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 5609
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x108 -> :sswitch_c
        0x1f3a -> :sswitch_d
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
    .line 5376
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

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

    const/16 v7, 0x100

    const/4 v6, 0x2

    .line 5491
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 5492
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5494
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    .line 5495
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    invoke-virtual {p1, v6, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5497
    :cond_1
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    if-eqz v2, :cond_2

    .line 5498
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5500
    :cond_2
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    if-eqz v2, :cond_3

    .line 5501
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5503
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5504
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5506
    :cond_4
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    if-eq v2, v7, :cond_5

    .line 5507
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5509
    :cond_5
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    if-eq v2, v7, :cond_6

    .line 5510
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5512
    :cond_6
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 5513
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 5514
    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5516
    :cond_7
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    if-eqz v2, :cond_8

    .line 5517
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5519
    :cond_8
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    if-eqz v2, :cond_9

    .line 5520
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5522
    :cond_9
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    if-eq v2, v6, :cond_a

    .line 5523
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5525
    :cond_a
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    if-eqz v2, :cond_b

    .line 5526
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5528
    :cond_b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 5529
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 5530
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 5531
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_c

    .line 5532
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5529
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5536
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5537
    return-void
.end method
