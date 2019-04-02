.class public Lcom/jmatio/io/MatFileReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jmatio/io/MatFileReader$ISMatTag;
    }
.end annotation


# static fields
.field private static final DIRECT_BUFFER_LIMIT:I = 0x2000000

.field public static final DIRECT_BYTE_BUFFER:I = 0x2

.field public static final HEAP_BYTE_BUFFER:I = 0x4

.field public static final MEMORY_MAPPED_FILE:I = 0x1


# instance fields
.field private byteOrder:Ljava/nio/ByteOrder;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/jmatio/io/MatFileFilter;

.field private matFileHeader:Lcom/jmatio/io/MatFileHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jmatio/io/MatFileFilter;

    invoke-direct {v0}, Lcom/jmatio/io/MatFileFilter;-><init>()V

    iput-object v0, p0, Lcom/jmatio/io/MatFileReader;->filter:Lcom/jmatio/io/MatFileFilter;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jmatio/io/MatFileFilter;

    invoke-direct {v0}, Lcom/jmatio/io/MatFileFilter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/jmatio/io/MatFileReader;-><init>(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/jmatio/io/MatFileReader;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/jmatio/io/MatFileReader;->read(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;I)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/jmatio/io/MatFileFilter;

    invoke-direct {v1}, Lcom/jmatio/io/MatFileFilter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/jmatio/io/MatFileReader;-><init>(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jmatio/io/MatFileFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/jmatio/io/MatFileReader;-><init>(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;)V

    return-void
.end method

.method private clean(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/jmatio/io/MatFileReader$1;

    invoke-direct {v0, p0, p1}, Lcom/jmatio/io/MatFileReader$1;-><init>(Lcom/jmatio/io/MatFileReader;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private readData(Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, v0, Lcom/jmatio/io/MatFileReader$ISMatTag;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/jmatio/io/MatlabIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect data tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jmatio/io/MatlabIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v0, v0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_0

    new-instance v0, Lcom/jmatio/io/MatlabIOException;

    const-string v1, "Compressed buffer length miscalculated!"

    invoke-direct {v0, v1}, Lcom/jmatio/io/MatlabIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Lcom/jmatio/io/ByteBufferInputStream;

    invoke-direct {v2, p1, v0}, Lcom/jmatio/io/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v2, Lcom/jmatio/io/HeapBufferDataOutputStream;

    invoke-direct {v2}, Lcom/jmatio/io/HeapBufferDataOutputStream;-><init>()V

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Lcom/jmatio/io/HeapBufferDataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/zip/InflaterInputStream;->close()V

    invoke-virtual {v2}, Lcom/jmatio/io/HeapBufferDataOutputStream;->flush()V

    invoke-virtual {v2}, Lcom/jmatio/io/HeapBufferDataOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jmatio/io/MatFileReader;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :try_start_1
    invoke-direct {p0, v0}, Lcom/jmatio/io/MatFileReader;->readData(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Lcom/jmatio/io/HeapBufferDataOutputStream;->close()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Lcom/jmatio/io/MatlabIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decompress data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jmatio/io/MatlabIOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/InflaterInputStream;->close()V

    invoke-virtual {v2}, Lcom/jmatio/io/HeapBufferDataOutputStream;->flush()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/jmatio/io/HeapBufferDataOutputStream;->close()V

    throw v0

    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/jmatio/io/MatFileReader;->readMatrix(Ljava/nio/ByteBuffer;Z)Lcom/jmatio/types/MLArray;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/jmatio/types/MLArray;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/jmatio/types/MLArray;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v1, v2, v1

    iget v0, v0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    new-instance v1, Lcom/jmatio/io/MatlabIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matrix was not red fully! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " remaining in the buffer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jmatio/io/MatlabIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    sub-int v2, v3, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readDimension(Ljava/nio/ByteBuffer;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToIntArray()[I

    move-result-object v0

    return-object v0
.end method

.method private readFlags(Ljava/nio/ByteBuffer;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToIntArray()[I

    move-result-object v0

    return-object v0
.end method

.method private readHeader(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v1, v3, [B

    const/16 v0, 0x74

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/jmatio/io/MatFileReader;->zeroEndByteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    const-string v0, "MATLAB 5.0 MAT-file.*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jmatio/io/MatlabIOException;

    const-string v1, "This is not a valid MATLAB 5.0 MAT-file."

    invoke-direct {v0, v1}, Lcom/jmatio/io/MatlabIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    aget-byte v3, v1, v5

    int-to-char v3, v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_1

    aget-byte v3, v1, v6

    int-to-char v3, v3

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v3, p0, Lcom/jmatio/io/MatFileReader;->byteOrder:Ljava/nio/ByteOrder;

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v0, v0, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    :goto_0
    iget-object v3, p0, Lcom/jmatio/io/MatFileReader;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/jmatio/io/MatFileHeader;

    invoke-direct {v3, v2, v0, v1}, Lcom/jmatio/io/MatFileHeader;-><init>(Ljava/lang/String;I[B)V

    iput-object v3, p0, Lcom/jmatio/io/MatFileReader;->matFileHeader:Lcom/jmatio/io/MatFileHeader;

    return-void

    :cond_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v3, p0, Lcom/jmatio/io/MatFileReader;->byteOrder:Ljava/nio/ByteOrder;

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    aget-byte v0, v0, v6

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    goto :goto_0
.end method

.method private readMatrix(Ljava/nio/ByteBuffer;Z)Lcom/jmatio/types/MLArray;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/jmatio/io/MatFileReader;->readFlags(Ljava/nio/ByteBuffer;)[I

    move-result-object v2

    array-length v0, v2

    if-eqz v0, :cond_1

    aget v0, v2, v1

    :goto_0
    array-length v3, v2

    if-eqz v3, :cond_2

    aget v2, v2, v10

    :goto_1
    and-int/lit16 v3, v0, 0xff

    invoke-direct {p0, p1}, Lcom/jmatio/io/MatFileReader;->readDimension(Ljava/nio/ByteBuffer;)[I

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/jmatio/io/MatFileReader;->readName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_3

    iget-object v6, p0, Lcom/jmatio/io/MatFileReader;->filter:Lcom/jmatio/io/MatFileFilter;

    invoke-virtual {v6, v5}, Lcom/jmatio/io/MatFileFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v1, 0x0

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/jmatio/io/MatlabIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect matlab array class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/jmatio/types/MLArray;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jmatio/io/MatlabIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v2, Lcom/jmatio/types/MLStructure;

    invoke-direct {v2, v5, v4, v3, v0}, Lcom/jmatio/types/MLStructure;-><init>(Ljava/lang/String;[III)V

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    new-instance v4, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v4, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    iget v0, v4, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    div-int v5, v0, v3

    new-array v6, v5, [Ljava/lang/String;

    move v0, v1

    :goto_3
    if-ge v0, v5, :cond_4

    new-array v7, v3, [B

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v7}, Lcom/jmatio/io/MatFileReader;->zeroEndByteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v4}, Lcom/jmatio/io/MatFileReader$ISMatTag;->access$000(Lcom/jmatio/io/MatFileReader$ISMatTag;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    :goto_4
    invoke-virtual {v2}, Lcom/jmatio/types/MLStructure;->getM()I

    move-result v3

    invoke-virtual {v2}, Lcom/jmatio/types/MLStructure;->getN()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v0, v3, :cond_7

    move v3, v1

    :goto_5
    if-ge v3, v5, :cond_6

    new-instance v4, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v4, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    iget v4, v4, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    if-lez v4, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/jmatio/io/MatFileReader;->readMatrix(Ljava/nio/ByteBuffer;Z)Lcom/jmatio/types/MLArray;

    move-result-object v4

    aget-object v7, v6, v3

    invoke-virtual {v2, v7, v4, v0}, Lcom/jmatio/types/MLStructure;->setField(Ljava/lang/String;Lcom/jmatio/types/MLArray;I)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    aget-object v4, v6, v3

    new-instance v7, Lcom/jmatio/types/MLEmptyArray;

    invoke-direct {v7}, Lcom/jmatio/types/MLEmptyArray;-><init>()V

    invoke-virtual {v2, v4, v7, v0}, Lcom/jmatio/types/MLStructure;->setField(Ljava/lang/String;Lcom/jmatio/types/MLArray;I)V

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object v1, v2

    goto/16 :goto_2

    :pswitch_2
    new-instance v2, Lcom/jmatio/types/MLCell;

    invoke-direct {v2, v5, v4, v3, v0}, Lcom/jmatio/types/MLCell;-><init>(Ljava/lang/String;[III)V

    move v0, v1

    :goto_7
    invoke-virtual {v2}, Lcom/jmatio/types/MLCell;->getM()I

    move-result v3

    invoke-virtual {v2}, Lcom/jmatio/types/MLCell;->getN()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v3, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    iget v3, v3, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    if-lez v3, :cond_8

    invoke-direct {p0, p1, v1}, Lcom/jmatio/io/MatFileReader;->readMatrix(Ljava/nio/ByteBuffer;Z)Lcom/jmatio/types/MLArray;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/types/MLCell;->set(Lcom/jmatio/types/MLArray;I)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    new-instance v3, Lcom/jmatio/types/MLEmptyArray;

    invoke-direct {v3}, Lcom/jmatio/types/MLEmptyArray;-><init>()V

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/types/MLCell;->set(Lcom/jmatio/types/MLArray;I)V

    goto :goto_8

    :cond_9
    move-object v1, v2

    goto/16 :goto_2

    :pswitch_3
    new-instance v1, Lcom/jmatio/types/MLDouble;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLDouble;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_4
    new-instance v1, Lcom/jmatio/types/MLSingle;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLSingle;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_5
    new-instance v1, Lcom/jmatio/types/MLUInt8;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLUInt8;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_6
    new-instance v1, Lcom/jmatio/types/MLInt8;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLInt8;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance v1, Lcom/jmatio/types/MLInt16;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLInt16;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_8
    new-instance v1, Lcom/jmatio/types/MLInt32;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLInt32;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_9
    new-instance v1, Lcom/jmatio/types/MLUInt32;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLUInt32;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_a
    new-instance v1, Lcom/jmatio/types/MLInt64;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLInt64;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_b
    new-instance v1, Lcom/jmatio/types/MLUInt64;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/jmatio/types/MLUInt64;-><init>(Ljava/lang/String;[III)V

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    invoke-virtual {v1}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v0}, Lcom/jmatio/types/MLNumericArray;->getImaginaryByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/jmatio/types/MLNumericArray;

    invoke-virtual {v2, v3, v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V

    goto/16 :goto_2

    :pswitch_c
    new-instance v2, Lcom/jmatio/types/MLChar;

    invoke-direct {v2, v5, v4, v3, v0}, Lcom/jmatio/types/MLChar;-><init>(Ljava/lang/String;[III)V

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/jmatio/types/MLChar;->setChar(CI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    move-object v1, v2

    goto/16 :goto_2

    :pswitch_d
    new-instance v3, Lcom/jmatio/types/MLSparse;

    invoke-direct {v3, v5, v4, v0, v2}, Lcom/jmatio/types/MLSparse;-><init>(Ljava/lang/String;[III)V

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToIntArray()[I

    move-result-object v4

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToIntArray()[I

    move-result-object v5

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToDoubleArray()[D

    move-result-object v6

    move v0, v1

    move v2, v1

    :goto_a
    invoke-virtual {v3}, Lcom/jmatio/types/MLSparse;->getN()I

    move-result v7

    if-ge v0, v7, :cond_c

    :goto_b
    add-int/lit8 v7, v0, 0x1

    aget v7, v5, v7

    if-ge v2, v7, :cond_b

    aget-wide v8, v6, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aget v8, v4, v2

    invoke-virtual {v3, v7, v8, v0}, Lcom/jmatio/types/MLSparse;->setReal(Ljava/lang/Double;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v3}, Lcom/jmatio/types/MLSparse;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToDoubleArray()[D

    move-result-object v2

    move v0, v1

    :goto_c
    invoke-virtual {v3}, Lcom/jmatio/types/MLSparse;->getN()I

    move-result v6

    if-ge v1, v6, :cond_e

    :goto_d
    add-int/lit8 v6, v1, 0x1

    aget v6, v5, v6

    if-ge v0, v6, :cond_d

    aget-wide v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aget v7, v4, v0

    invoke-virtual {v3, v6, v7, v1}, Lcom/jmatio/types/MLSparse;->setImaginary(Ljava/lang/Double;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_e
    move-object v1, v3

    goto/16 :goto_2

    :pswitch_e
    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToString()Ljava/lang/String;

    move-result-object v2

    array-length v0, v4

    new-array v3, v0, [B

    move v0, v1

    :goto_e
    array-length v5, v4

    if-ge v0, v5, :cond_f

    aget v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    iget v0, v0, Lcom/jmatio/io/MatFileReader$ISMatTag;->type:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_10

    invoke-direct {p0, p1, v1}, Lcom/jmatio/io/MatFileReader;->readMatrix(Ljava/nio/ByteBuffer;Z)Lcom/jmatio/types/MLArray;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLUInt8;

    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v1, Lcom/jmatio/io/ByteBufferInputStream;

    invoke-virtual {v0}, Lcom/jmatio/types/MLUInt8;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jmatio/types/MLUInt8;->getRealByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {v1, v5, v0}, Lcom/jmatio/io/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/jmatio/types/MLJavaObject;

    invoke-direct {v1, v4, v2, v0}, Lcom/jmatio/types/MLJavaObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected java object content"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    new-instance v2, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v2, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/jmatio/types/MLStructure;

    invoke-direct {v7, v5, v4, v3, v0}, Lcom/jmatio/types/MLStructure;-><init>(Ljava/lang/String;[III)V

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v3, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v3, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    iget v0, v3, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    div-int v4, v0, v2

    new-array v8, v4, [Ljava/lang/String;

    move v0, v1

    :goto_f
    if-ge v0, v4, :cond_11

    new-array v9, v2, [B

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v9}, Lcom/jmatio/io/MatFileReader;->zeroEndByteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v3}, Lcom/jmatio/io/MatFileReader$ISMatTag;->access$000(Lcom/jmatio/io/MatFileReader$ISMatTag;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v2, v1

    :goto_10
    if-ge v2, v10, :cond_14

    move v0, v1

    :goto_11
    if-ge v0, v4, :cond_13

    new-instance v3, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v3, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    iget v3, v3, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    if-lez v3, :cond_12

    invoke-direct {p0, p1, v1}, Lcom/jmatio/io/MatFileReader;->readMatrix(Ljava/nio/ByteBuffer;Z)Lcom/jmatio/types/MLArray;

    move-result-object v3

    aget-object v9, v8, v0

    invoke-virtual {v7, v9, v3, v2}, Lcom/jmatio/types/MLStructure;->setField(Ljava/lang/String;Lcom/jmatio/types/MLArray;I)V

    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_12
    aget-object v3, v8, v0

    new-instance v9, Lcom/jmatio/types/MLEmptyArray;

    invoke-direct {v9}, Lcom/jmatio/types/MLEmptyArray;-><init>()V

    invoke-virtual {v7, v3, v9, v2}, Lcom/jmatio/types/MLStructure;->setField(Ljava/lang/String;Lcom/jmatio/types/MLArray;I)V

    goto :goto_12

    :cond_13
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_14
    new-instance v1, Lcom/jmatio/types/MLObject;

    invoke-direct {v1, v5, v6, v7}, Lcom/jmatio/types/MLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jmatio/types/MLStructure;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_f
        :pswitch_c
        :pswitch_d
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method private readName(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jmatio/io/MatFileReader$ISMatTag;

    invoke-direct {v0, p1}, Lcom/jmatio/io/MatFileReader$ISMatTag;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zeroEndByteArrayToString([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method


# virtual methods
.method public getContent()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMLArray(Ljava/lang/String;)Lcom/jmatio/types/MLArray;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jmatio/types/MLArray;

    return-object v0
.end method

.method public getMatFileHeader()Lcom/jmatio/io/MatFileHeader;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/io/MatFileReader;->matFileHeader:Lcom/jmatio/io/MatFileHeader;

    return-object v0
.end method

.method public declared-synchronized read(Ljava/io/File;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jmatio/io/MatFileFilter;

    invoke-direct {v0}, Lcom/jmatio/io/MatFileFilter;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jmatio/io/MatFileReader;->read(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;I)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Ljava/io/File;I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jmatio/io/MatFileFilter;

    invoke-direct {v0}, Lcom/jmatio/io/MatFileFilter;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/jmatio/io/MatFileReader;->read(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;I)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Ljava/io/File;Lcom/jmatio/io/MatFileFilter;I)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/jmatio/io/MatFileFilter;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jmatio/types/MLArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/jmatio/io/MatFileReader;->filter:Lcom/jmatio/io/MatFileFilter;

    iget-object v2, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/jmatio/io/MatFileReader;->data:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_1
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown file allocation policy"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :catch_0
    move-exception v3

    move-object v4, v9

    move-object v5, v10

    move-object v6, v2

    move-object v2, v3

    move-object v3, v8

    :goto_1
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v4, v6

    :goto_2
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    :try_start_6
    invoke-direct {p0, v9}, Lcom/jmatio/io/MatFileReader;->clean(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :pswitch_1
    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v4

    const-wide/16 v6, 0x0

    :try_start_9
    invoke-virtual {v2, v4, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object v5, v4

    move-object v4, v8

    :goto_3
    :try_start_a
    invoke-direct {p0, v5}, Lcom/jmatio/io/MatFileReader;->readHeader(Ljava/nio/ByteBuffer;)V

    :goto_4
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_7

    invoke-direct {p0, v5}, Lcom/jmatio/io/MatFileReader;->readData(Ljava/nio/ByteBuffer;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v6, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v10

    goto :goto_1

    :pswitch_2
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-object v4

    const/high16 v5, 0x2000000

    :try_start_c
    div-int v5, v3, v5

    const/high16 v6, 0x2000000

    rem-int/2addr v3, v6

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_5
    add-int/2addr v5, v3

    const/4 v3, 0x1

    if-le v5, v3, :cond_5

    const/high16 v3, 0x2000000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/high16 v7, 0x2000000

    mul-int/2addr v7, v3

    int-to-long v12, v7

    invoke-virtual {v2, v6, v12, v13}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    :cond_6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v5, v4

    move-object v4, v8

    goto :goto_3

    :pswitch_3
    :try_start_d
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result-object v4

    :try_start_e
    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v0, v4

    check-cast v0, Ljava/nio/MappedByteBuffer;

    move-object v3, v0

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    goto :goto_3

    :cond_7
    :try_start_f
    invoke-virtual {p0}, Lcom/jmatio/io/MatFileReader;->getContent()Ljava/util/Map;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-result-object v3

    if-eqz v2, :cond_8

    :try_start_10
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    :try_start_11
    invoke-direct {p0, v5}, Lcom/jmatio/io/MatFileReader;->clean(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_a
    monitor-exit p0

    return-object v3

    :catch_2
    move-exception v2

    const/16 v2, 0x3e8

    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_7
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    int-to-long v10, v2

    cmp-long v5, v8, v10

    if-gtz v5, :cond_a

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    :catch_3
    move-exception v3

    const/16 v3, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_8
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v10, v3

    cmp-long v6, v6, v10

    if-gtz v6, :cond_3

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v10, v3

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    goto/16 :goto_2

    :catchall_4
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_2

    :catchall_5
    move-exception v3

    move-object v9, v4

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_2

    :catchall_6
    move-exception v3

    move-object v9, v4

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_2

    :catchall_7
    move-exception v3

    move-object v8, v4

    move-object v9, v5

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_2

    :catch_4
    move-exception v2

    move-object v5, v3

    move-object v6, v4

    move-object v3, v8

    move-object v4, v9

    goto/16 :goto_1

    :catch_5
    move-exception v2

    move-object v3, v8

    move-object v5, v10

    move-object v6, v4

    move-object v4, v9

    goto/16 :goto_1

    :catch_6
    move-exception v3

    move-object v5, v10

    move-object v6, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
