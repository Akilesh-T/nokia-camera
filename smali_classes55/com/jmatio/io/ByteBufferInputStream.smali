.class Lcom/jmatio/io/ByteBufferInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private limit:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/jmatio/io/ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I

    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I

    iget-object v0, p0, Lcom/jmatio/io/ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/jmatio/io/ByteBufferInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/jmatio/io/ByteBufferInputStream;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
