.class public final Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# instance fields
.field public aggregateValue:Ljava/lang/String;

.field public doubleValue:D

.field public identifierValue:Ljava/lang/String;

.field public name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

.field public negativeIntValue:J

.field public positiveIntValue:J

.field public stringValue:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5854
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5855
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->clear()Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 5856
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 5820
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_1

    .line 5821
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5823
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_0

    .line 5824
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 5826
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5828
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    return-object v0

    .line 5826
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6015
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6009
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 5859
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    .line 5860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    .line 5861
    iput-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:J

    .line 5862
    iput-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:J

    .line 5863
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:D

    .line 5864
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    .line 5865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    .line 5866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5867
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->cachedSize:I

    .line 5868
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 5906
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5907
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 5908
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 5909
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    aget-object v0, v3, v1

    .line 5910
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    if-eqz v0, :cond_0

    .line 5911
    const/4 v3, 0x2

    .line 5912
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5908
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5916
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5917
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    .line 5918
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5920
    :cond_2
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 5921
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:J

    .line 5922
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5924
    :cond_3
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 5925
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:J

    .line 5926
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5928
    :cond_4
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    .line 5929
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    .line 5930
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:D

    .line 5931
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5933
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    sget-object v4, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 5934
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    .line 5935
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 5937
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5938
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    .line 5939
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5941
    :cond_7
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5949
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5950
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5954
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5955
    :sswitch_0
    return-object p0

    .line 5960
    :sswitch_1
    const/16 v5, 0x12

    .line 5961
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5962
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v5, :cond_2

    move v1, v4

    .line 5963
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    .line 5965
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    if-eqz v1, :cond_1

    .line 5966
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5968
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 5969
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    aput-object v5, v2, v1

    .line 5970
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5971
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5968
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5962
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v1, v5

    goto :goto_1

    .line 5974
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    aput-object v5, v2, v1

    .line 5975
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5976
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    goto :goto_0

    .line 5980
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    goto :goto_0

    .line 5984
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:J

    goto :goto_0

    .line 5988
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:J

    goto :goto_0

    .line 5992
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:D

    goto :goto_0

    .line 5996
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    goto :goto_0

    .line 6000
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    goto :goto_0

    .line 5950
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x31 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
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
    .line 5720
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 5874
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 5875
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 5876
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->name:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    aget-object v0, v2, v1

    .line 5877
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    if-eqz v0, :cond_0

    .line 5878
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5875
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5882
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5883
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->identifierValue:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5885
    :cond_2
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 5886
    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->positiveIntValue:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 5888
    :cond_3
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 5889
    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->negativeIntValue:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5891
    :cond_4
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 5892
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 5893
    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->doubleValue:D

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5895
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    .line 5896
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->stringValue:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5898
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5899
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->aggregateValue:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5901
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5902
    return-void
.end method
