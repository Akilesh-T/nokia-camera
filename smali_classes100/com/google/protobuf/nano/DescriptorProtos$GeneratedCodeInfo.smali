.class public final Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedCodeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;


# instance fields
.field public annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6623
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6624
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->clear()Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    .line 6625
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 2

    .prologue
    .line 6607
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    if-nez v0, :cond_1

    .line 6608
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6610
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    if-nez v0, :cond_0

    .line 6611
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    .line 6613
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6615
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    return-object v0

    .line 6613
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6710
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6704
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 1

    .prologue
    .line 6628
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 6629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6630
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->cachedSize:I

    .line 6631
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 6650
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 6651
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 6652
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 6653
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    aget-object v0, v3, v1

    .line 6654
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    if-eqz v0, :cond_0

    .line 6655
    const/4 v3, 0x1

    .line 6656
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6652
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6660
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6668
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 6669
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6673
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6674
    :sswitch_0
    return-object p0

    .line 6679
    :sswitch_1
    const/16 v5, 0xa

    .line 6680
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6681
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v5, :cond_2

    move v1, v4

    .line 6682
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 6684
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    if-eqz v1, :cond_1

    .line 6685
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6687
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 6688
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    aput-object v5, v2, v1

    .line 6689
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6690
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6687
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6681
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v1, v5

    goto :goto_1

    .line 6693
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    aput-object v5, v2, v1

    .line 6694
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6695
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    goto :goto_0

    .line 6669
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 6415
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6637
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 6638
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 6639
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;->annotation:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    aget-object v0, v2, v1

    .line 6640
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    if-eqz v0, :cond_0

    .line 6641
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6638
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6645
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6646
    return-void
.end method
