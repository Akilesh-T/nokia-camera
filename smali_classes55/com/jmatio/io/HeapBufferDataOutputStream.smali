.class public Lcom/jmatio/io/HeapBufferDataOutputStream;
.super Ljava/io/ByteArrayOutputStream;

# interfaces
.implements Lcom/jmatio/io/DataOutputStream;


# instance fields
.field private final BUFFER_SIZE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jmatio/io/HeapBufferDataOutputStream;->BUFFER_SIZE:I

    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/jmatio/io/HeapBufferDataOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method
