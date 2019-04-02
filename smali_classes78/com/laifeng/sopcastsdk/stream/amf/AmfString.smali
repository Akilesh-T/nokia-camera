.class public Lcom/laifeng/sopcastsdk/stream/amf/AmfString;
.super Ljava/lang/Object;
.source "AmfString.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/amf/AmfData;


# static fields
.field private static final TAG:Ljava/lang/String; = "AmfString"


# instance fields
.field private key:Z

.field private size:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->size:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;-><init>(Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isKey"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->size:I

    .line 29
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->key:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isKey"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->size:I

    .line 38
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->key:Z

    .line 39
    return-void
.end method

.method public static readStringFrom(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "isKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->readUnsignedInt16(Ljava/io/InputStream;)I

    move-result v1

    .line 89
    .local v1, "length":I
    new-array v0, v1, [B

    .line 90
    .local v0, "byteValue":[B
    invoke-static {p0, v0}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 91
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static sizeOf(Ljava/lang/String;Z)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "isKey"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int v0, v1, v2

    .line 128
    .local v0, "size":I
    return v0

    .line 127
    .end local v0    # "size":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "isKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 98
    .local v0, "byteValue":[B
    if-nez p2, :cond_0

    .line 99
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->STRING:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 102
    :cond_0
    array-length v1, v0

    invoke-static {p0, v1}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->writeUnsignedInt16(Ljava/io/OutputStream;I)V

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 105
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->getSize()I

    move-result v1

    .line 116
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->isKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    sget-object v2, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->STRING:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->isKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->size:I

    .line 110
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->size:I

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isKey()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->key:Z

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->readUnsignedInt16(Ljava/io/InputStream;)I

    move-result v1

    .line 75
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->size:I

    .line 77
    new-array v0, v1, [B

    .line 78
    .local v0, "byteValue":[B
    invoke-static {p1, v0}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 79
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setKey(Z)V
    .locals 0
    .param p1, "key"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->key:Z

    .line 55
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 62
    .local v0, "byteValue":[B
    iget-boolean v1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->key:Z

    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->STRING:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 66
    :cond_0
    array-length v1, v0

    invoke-static {p1, v1}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->writeUnsignedInt16(Ljava/io/OutputStream;I)V

    .line 68
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 69
    return-void
.end method
