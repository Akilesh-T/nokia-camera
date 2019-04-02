.class public Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;
.super Ljava/lang/Object;
.source "AmfBoolean.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/amf/AmfData;


# static fields
.field public static final SIZE:I = 0x2


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;->value:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 56
    .local v0, "data":[B
    sget-object v3, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->BOOLEAN:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 57
    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;->value:Z

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 58
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method public isValue()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;->value:Z

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
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;->value:Z

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;->value:Z

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
    .line 38
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->BOOLEAN:Lcom/laifeng/sopcastsdk/stream/amf/AmfType;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/amf/AmfBoolean;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
