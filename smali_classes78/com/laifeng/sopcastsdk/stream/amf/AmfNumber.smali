.class public Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;
.super Ljava/lang/Object;
.source "AmfNumber.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/amf/AmfData;


# static fields
.field public static final SIZE:I = 0x9


# instance fields
.field value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->value:D

    .line 25
    return-void
.end method

.method public static readNumberFrom(Ljava/io/InputStream;)D
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 53
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->readDouble(Ljava/io/InputStream;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static writeNumberTo(Ljava/io/OutputStream;D)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "number"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->NUMBER:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    invoke-static {p0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->writeDouble(Ljava/io/OutputStream;D)V

    .line 59
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .prologue
    .line 68
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->NUMBER:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    iget-wide v2, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->value:D

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x9

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->value:D

    return-wide v0
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
    .line 47
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->readDouble(Ljava/io/InputStream;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->value:D

    .line 48
    return-void
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->value:D

    .line 36
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
    .line 40
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->NUMBER:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 41
    iget-wide v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->value:D

    invoke-static {p1, v0, v1}, Lcom/laifeng/sopcastsdk/stream/amf/Util;->writeDouble(Ljava/io/OutputStream;D)V

    .line 42
    return-void
.end method
