.class Lcom/jmatio/io/FileBufferedDataOutputStream;
.super Ljava/io/OutputStream;

# interfaces
.implements Lcom/jmatio/io/DataOutputStream;


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private final file:Ljava/io/File;

.field private final raFile:Ljava/io/RandomAccessFile;

.field private final rwChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string v0, "jmatio-"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->raFile:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->rwChannel:Ljava/nio/channels/FileChannel;

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/jmatio/types/MLArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jmatio-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jmatio/types/MLArray;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->raFile:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->rwChannel:Ljava/nio/channels/FileChannel;

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/io/FileBufferedDataOutputStream;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->rwChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->rwChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->rwChannel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->rwChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/io/FileBufferedDataOutputStream;->flush()V

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jmatio/io/FileBufferedDataOutputStream;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
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

    invoke-virtual {p0, v0, v3, v1}, Lcom/jmatio/io/FileBufferedDataOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jmatio/io/FileBufferedDataOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jmatio/io/FileBufferedDataOutputStream;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/jmatio/io/FileBufferedDataOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method
