.class Lcom/jmatio/io/OSArrayTag;
.super Lcom/jmatio/io/MatTag;


# instance fields
.field private data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/jmatio/io/MatTag;-><init>(II)V

    iput-object p2, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jmatio/io/OSArrayTag;-><init>(ILjava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lcom/jmatio/io/OSArrayTag;->size:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/jmatio/io/OSArrayTag;->size:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/jmatio/io/OSArrayTag;->size:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/jmatio/io/OSArrayTag;->type:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jmatio/io/OSArrayTag;->getPadding(IZ)I

    move-result v0

    :goto_0
    const/16 v1, 0x400

    iget-object v2, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    :cond_0
    new-array v2, v1, [B

    :goto_1
    iget-object v1, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v3, v2

    if-le v1, v3, :cond_2

    array-length v1, v2

    :goto_2
    iget-object v3, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, v4, v1}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/jmatio/io/OSArrayTag;->type:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/jmatio/io/OSArrayTag;->size:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/jmatio/io/OSArrayTag;->getPadding(IZ)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jmatio/io/OSArrayTag;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    goto :goto_2

    :cond_3
    if-lez v0, :cond_4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :cond_4
    return-void
.end method
