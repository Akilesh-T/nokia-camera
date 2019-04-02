.class public final Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;


# instance fields
.field public deprecated:Z

.field public experimentalJavaBuilderInterface:[Ljava/lang/String;

.field public experimentalJavaInterfaceExtends:[Ljava/lang/String;

.field public experimentalJavaMessageInterface:[Ljava/lang/String;

.field public mapEntry:Z

.field public messageSetWireFormat:Z

.field public noStandardDescriptorAccessor:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3419
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3420
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 3421
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 2

    .prologue
    .line 3382
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_1

    .line 3383
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3385
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    .line 3386
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 3388
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3390
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object v0

    .line 3388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3674
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3668
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3424
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    .line 3425
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    .line 3426
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    .line 3427
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    .line 3428
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    .line 3429
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    .line 3430
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    .line 3431
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->cachedSize:I

    .line 3434
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 3489
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 3490
    .local v4, "size":I
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    if-eqz v5, :cond_0

    .line 3491
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    .line 3492
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3494
    :cond_0
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    if-eqz v5, :cond_1

    .line 3495
    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    .line 3496
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3498
    :cond_1
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    if-eqz v5, :cond_2

    .line 3499
    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    .line 3500
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3502
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 3503
    const/4 v0, 0x0

    .line 3504
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3505
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 3506
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3507
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3508
    add-int/lit8 v0, v0, 0x1

    .line 3510
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3505
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3513
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 3514
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3516
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 3517
    const/4 v0, 0x0

    .line 3518
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 3519
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 3520
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3521
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 3522
    add-int/lit8 v0, v0, 0x1

    .line 3524
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3519
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3527
    .end local v2    # "element":Ljava/lang/String;
    :cond_7
    add-int/2addr v4, v1

    .line 3528
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3530
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_b

    .line 3531
    const/4 v0, 0x0

    .line 3532
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 3533
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 3534
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3535
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 3536
    add-int/lit8 v0, v0, 0x1

    .line 3538
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3533
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3541
    .end local v2    # "element":Ljava/lang/String;
    :cond_a
    add-int/2addr v4, v1

    .line 3542
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3544
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_b
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    if-eqz v5, :cond_c

    .line 3545
    const/4 v5, 0x7

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    .line 3546
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3548
    :cond_c
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v5, v5

    if-lez v5, :cond_e

    .line 3549
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    .line 3550
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v2, v5, v3

    .line 3551
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v2, :cond_d

    .line 3552
    const/16 v5, 0x3e7

    .line 3553
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3549
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3557
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v3    # "i":I
    :cond_e
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3566
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3570
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3571
    :sswitch_0
    return-object p0

    .line 3576
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    goto :goto_0

    .line 3580
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    goto :goto_0

    .line 3584
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    goto :goto_0

    .line 3588
    :sswitch_4
    const/16 v5, 0x22

    .line 3589
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3590
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 3591
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3592
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3593
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3595
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3596
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3597
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3595
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3590
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 3600
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3601
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    goto :goto_0

    .line 3605
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_5
    const/16 v5, 0x2a

    .line 3606
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3607
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    .line 3608
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3609
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 3610
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3612
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 3613
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3614
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3612
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3607
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    .line 3617
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3618
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3622
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_6
    const/16 v5, 0x32

    .line 3623
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3624
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    .line 3625
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3626
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 3627
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3629
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 3630
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3631
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3629
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3624
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    .line 3634
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3635
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3639
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    goto/16 :goto_0

    .line 3643
    :sswitch_8
    const/16 v5, 0x1f3a

    .line 3644
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3645
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v5, :cond_b

    move v1, v4

    .line 3646
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3648
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_a

    .line 3649
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3651
    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    .line 3652
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 3653
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3654
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3651
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3645
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_b
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v5

    goto :goto_7

    .line 3657
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_c
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 3658
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3659
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 3566
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x1f3a -> :sswitch_8
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
    .line 3376
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3440
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    if-eqz v2, :cond_0

    .line 3441
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3443
    :cond_0
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    if-eqz v2, :cond_1

    .line 3444
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3446
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    if-eqz v2, :cond_2

    .line 3447
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3449
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3451
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3452
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3453
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3450
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3457
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 3458
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 3459
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3460
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 3461
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3458
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3465
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 3466
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 3467
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3468
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 3469
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3466
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3473
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_8
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    if-eqz v2, :cond_9

    .line 3474
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3476
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 3477
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 3478
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 3479
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_a

    .line 3480
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3477
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3484
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3485
    return-void
.end method
