.class public final Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamePart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;


# instance fields
.field public isExtension:Z

.field public namePart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5748
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5749
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->clear()Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    .line 5750
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 2

    .prologue
    .line 5729
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v0, :cond_1

    .line 5730
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5732
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v0, :cond_0

    .line 5733
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    .line 5735
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5737
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0

    .line 5735
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5813
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5807
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 5753
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->namePart:Ljava/lang/String;

    .line 5754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->isExtension:Z

    .line 5755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5756
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->cachedSize:I

    .line 5757
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 5770
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5771
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->namePart:Ljava/lang/String;

    .line 5772
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5773
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->isExtension:Z

    .line 5774
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5775
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5783
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5784
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5788
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5789
    :sswitch_0
    return-object p0

    .line 5794
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->namePart:Ljava/lang/String;

    goto :goto_0

    .line 5798
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->isExtension:Z

    goto :goto_0

    .line 5784
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 5723
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5763
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->namePart:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5764
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption$NamePart;->isExtension:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5765
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5766
    return-void
.end method
