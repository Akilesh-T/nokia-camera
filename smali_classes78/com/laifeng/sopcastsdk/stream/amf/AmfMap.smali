.class public Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;
.super Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;
.source "AmfMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 7

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->getSize()I

    move-result v3

    .line 59
    .local v3, "size":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v4, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->OBJECT:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->properties:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->properties:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;-><init>(Ljava/lang/String;Z)V

    .line 66
    .local v2, "keyString":Lcom/laifeng/sopcastsdk/stream/amf/AmfString;
    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    invoke-interface {v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 69
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    .end local v2    # "keyString":Lcom/laifeng/sopcastsdk/stream/amf/AmfString;
    :cond_0
    sget-object v4, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->OBJECT_END_MARKER:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-super {p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->getSize()I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->size:I

    .line 51
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->size:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->size:I

    .line 53
    :cond_0
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->size:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    .line 43
    .local v0, "length":I
    invoke-super {p0, p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->readFrom(Ljava/io/InputStream;)V

    .line 44
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->size:I

    .line 45
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->MAP:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 26
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 29
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    invoke-interface {v1, p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 36
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    :cond_0
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->OBJECT_END_MARKER:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 37
    return-void
.end method
