.class public final Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;


# instance fields
.field public deprecated:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4424
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4425
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    .line 4426
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;
    .locals 2

    .prologue
    .line 4405
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_1

    .line 4406
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4408
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_0

    .line 4409
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    .line 4411
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4413
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    return-object v0

    .line 4411
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4523
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4517
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 4429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->deprecated:Z

    .line 4430
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4432
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->cachedSize:I

    .line 4433
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 4455
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 4456
    .local v2, "size":I
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->deprecated:Z

    if-eqz v3, :cond_0

    .line 4457
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->deprecated:Z

    .line 4458
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4460
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 4461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 4462
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 4463
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_1

    .line 4464
    const/16 v3, 0x3e7

    .line 4465
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4461
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4469
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4477
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4478
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4482
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4483
    :sswitch_0
    return-object p0

    .line 4488
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->deprecated:Z

    goto :goto_0

    .line 4492
    :sswitch_2
    const/16 v5, 0x1f3a

    .line 4493
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4494
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v5, :cond_2

    move v1, v4

    .line 4495
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4497
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 4498
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4500
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4501
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 4502
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4503
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4500
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4494
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v5

    goto :goto_1

    .line 4506
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 4507
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4508
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 4478
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1f3a -> :sswitch_2
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
    .line 4399
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

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
    .line 4439
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->deprecated:Z

    if-eqz v2, :cond_0

    .line 4440
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4442
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 4443
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 4444
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 4445
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_1

    .line 4446
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4443
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4450
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4451
    return-void
.end method
