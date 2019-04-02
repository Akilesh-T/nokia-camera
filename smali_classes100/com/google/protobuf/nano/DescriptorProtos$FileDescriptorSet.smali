.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;


# instance fields
.field public file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    .line 35
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    if-nez v0, :cond_1

    .line 18
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->cachedSize:I

    .line 41
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 61
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    aget-object v0, v3, v1

    .line 64
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    if-eqz v0, :cond_0

    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 79
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    :sswitch_0
    return-object p0

    .line 89
    :sswitch_1
    const/16 v5, 0xa

    .line 90
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 91
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v5, :cond_2

    move v1, v4

    .line 92
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    .line 94
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    if-eqz v1, :cond_1

    .line 95
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 98
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 99
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    array-length v1, v5

    goto :goto_1

    .line 103
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 104
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 105
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    goto :goto_0

    .line 79
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
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;

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
    .line 47
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorSet;->file:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    aget-object v0, v2, v1

    .line 50
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    if-eqz v0, :cond_0

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 56
    return-void
.end method
