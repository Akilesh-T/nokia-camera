.class public Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;
.super Ljava/lang/Object;
.source "AmfNull.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/amf/AmfData;


# static fields
.field public static final SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeNullTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->NULL:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    .prologue
    .line 41
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 42
    .local v0, "data":[B
    const/4 v1, 0x0

    sget-object v2, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->NULL:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 43
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->NULL:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 23
    return-void
.end method
