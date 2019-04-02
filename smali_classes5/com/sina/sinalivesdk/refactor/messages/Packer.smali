.class public Lcom/sina/sinalivesdk/refactor/messages/Packer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pack(Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;Lcom/sina/sinalivesdk/protobuf/RequestSet;Z)Ljava/io/ByteArrayOutputStream;
    .locals 7

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->emytyHeader()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->computeSize(Z)I

    move-result v4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v6, v0

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    :cond_1
    invoke-virtual {v3, v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    invoke-virtual {p0, v3, v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;Z)V

    invoke-virtual {v3, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;)V

    :cond_2
    invoke-virtual {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->flush()V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method
