.class Lcom/jmatio/io/MatFileInputStream;
.super Ljava/lang/Object;


# instance fields
.field private final buf:Ljava/nio/ByteBuffer;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    iput-object p1, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readFloat()F
    .locals 3

    iget v0, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    :goto_0
    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private readLong()J
    .locals 3

    iget v0, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :pswitch_2
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private readShort()S
    .locals 3

    iget v0, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :goto_0
    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-short v0, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-short v0, v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public readByte()B
    .locals 3

    iget v0, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    :goto_0
    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-byte v0, v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-byte v0, v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-byte v0, v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    :goto_0
    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-char v0, v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-char v0, v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public readDouble()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-double v0, v0

    :goto_0
    return-wide v0

    :pswitch_2
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public readToByteBuffer(Ljava/nio/ByteBuffer;ILcom/jmatio/types/ByteStorageSupport;)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lcom/jmatio/types/ByteStorageSupport",
            "<*>;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p3}, Lcom/jmatio/types/ByteStorageSupport;->getBytesAllocated()I

    move-result v0

    invoke-interface {p3}, Lcom/jmatio/types/ByteStorageSupport;->getBytesAllocated()I

    move-result v1

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/jmatio/io/MatFileInputStream;->type:I

    invoke-static {v2}, Lcom/jmatio/common/MatDataTypes;->sizeOf(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x400

    iget-object v2, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1

    :cond_2
    invoke-interface {p3}, Lcom/jmatio/types/ByteStorageSupport;->getStorageClazz()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileInputStream;->readByte()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/jmatio/io/MatFileInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_6
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/jmatio/io/MatFileInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_7
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/jmatio/io/MatFileInputStream;->readShort()S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported buffer reader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skip(I)V
    .locals 2

    iget-object v0, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/jmatio/io/MatFileInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
