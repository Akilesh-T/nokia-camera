.class public Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;
.super Ljava/lang/Object;
.source "AmfObject.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/amf/AmfData;


# static fields
.field protected static final OBJECT_END_MARKER:[B


# instance fields
.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/laifeng/sopcastsdk/stream/amf/AmfData;",
            ">;"
        }
    .end annotation
.end field

.field protected size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->OBJECT_END_MARKER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 7

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->getSize()I

    move-result v3

    .line 114
    .local v3, "size":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v4, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->OBJECT:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

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

    .line 119
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;-><init>(Ljava/lang/String;Z)V

    .line 120
    .local v2, "keyString":Lcom/laifeng/sopcastsdk/stream/amf/AmfString;
    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    invoke-interface {v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    .end local v2    # "keyString":Lcom/laifeng/sopcastsdk/stream/amf/AmfString;
    :cond_0
    sget-object v4, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->OBJECT_END_MARKER:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method public getProperty(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/amf/AmfData;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    return-object v0
.end method

.method public getSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 99
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 100
    iput v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    .line 101
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

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

    .line 102
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->sizeOf(Ljava/lang/String;Z)I

    move-result v1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    .line 103
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    invoke-interface {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->getSize()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    goto :goto_0

    .line 105
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    :cond_0
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    .line 108
    :cond_1
    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    return v1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 70
    iput v6, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    .line 71
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 75
    .local v2, "markInputStream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->mark(I)V

    .line 76
    new-array v0, v9, [B

    .line 77
    .local v0, "endMarker":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 79
    aget-byte v4, v0, v7

    sget-object v5, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->OBJECT_END_MARKER:[B

    aget-byte v5, v5, v7

    if-ne v4, v5, :cond_1

    aget-byte v4, v0, v6

    sget-object v5, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->OBJECT_END_MARKER:[B

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_1

    aget-byte v4, v0, v8

    sget-object v5, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->OBJECT_END_MARKER:[B

    aget-byte v5, v5, v8

    if-ne v4, v5, :cond_1

    .line 81
    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    .line 82
    return-void

    .line 71
    .end local v0    # "endMarker":[B
    .end local v2    # "markInputStream":Ljava/io/InputStream;
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 85
    .restart local v0    # "endMarker":[B
    .restart local v2    # "markInputStream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 87
    invoke-static {p1, v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->readStringFrom(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "key":Ljava/lang/String;
    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    invoke-static {v1, v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->sizeOf(Ljava/lang/String;Z)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    .line 90
    invoke-static {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfDecoder;->readFrom(Ljava/io/InputStream;)Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    move-result-object v3

    .line 91
    .local v3, "value":Lcom/laifeng/sopcastsdk/stream/amf/AmfData;
    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    invoke-interface {v3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->size:I

    .line 92
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 48
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;

    invoke-direct {v1, p2, p3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;-><init>(D)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;

    int-to-double v2, p2

    invoke-direct {v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;-><init>(D)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;

    invoke-direct {v1, p2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
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
    .line 54
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->OBJECT:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->properties:Ljava/util/Map;

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

    .line 59
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    invoke-interface {v1, p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfData;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 64
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/laifeng/sopcastsdk/stream/amf/AmfData;>;"
    :cond_0
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->OBJECT_END_MARKER:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 65
    return-void
.end method
