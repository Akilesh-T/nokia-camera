.class public final Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;


# instance fields
.field public name:Ljava/lang/String;

.field public number:I

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2166
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2167
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    .line 2168
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    .line 2144
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v0, :cond_1

    .line 2145
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2147
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v0, :cond_0

    .line 2148
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    .line 2150
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2152
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0

    .line 2150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2254
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2248
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    .line 2172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->number:I

    .line 2173
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    .line 2174
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->cachedSize:I

    .line 2176
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2196
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2197
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2198
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    .line 2199
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2201
    :cond_0
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->number:I

    if-eqz v1, :cond_1

    .line 2202
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->number:I

    .line 2203
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2205
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    if-eqz v1, :cond_2

    .line 2206
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    .line 2207
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2209
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2217
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2218
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2222
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2223
    :sswitch_0
    return-object p0

    .line 2228
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 2232
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->number:I

    goto :goto_0

    .line 2236
    :sswitch_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    if-nez v1, :cond_1

    .line 2237
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;-><init>()V

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    .line 2239
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2218
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 2138
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

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
    .line 2182
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2183
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2185
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->number:I

    if-eqz v0, :cond_1

    .line 2186
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->number:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2188
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    if-eqz v0, :cond_2

    .line 2189
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2191
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2192
    return-void
.end method
