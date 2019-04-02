.class public Lcom/github/faucamp/simplertmp/amf/AmfNumber;
.super Ljava/lang/Object;
.source "AmfNumber.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/amf/AmfData;


# static fields
.field public static final SIZE:I = 0x9


# instance fields
.field value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->value:D

    .line 22
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
    .line 49
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 50
    invoke-static {p0}, Lcom/github/faucamp/simplertmp/Util;->readDouble(Ljava/io/InputStream;)D

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
    .line 54
    sget-object v0, Lcom/github/faucamp/simplertmp/amf/AmfType;->NUMBER:Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/github/faucamp/simplertmp/Util;->writeDouble(Ljava/io/OutputStream;D)V

    .line 56
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x9

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->value:D

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
    .line 44
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readDouble(Ljava/io/InputStream;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->value:D

    .line 45
    return-void
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->value:D

    .line 33
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
    .line 37
    sget-object v0, Lcom/github/faucamp/simplertmp/amf/AmfType;->NUMBER:Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 38
    iget-wide v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->value:D

    invoke-static {p1, v0, v1}, Lcom/github/faucamp/simplertmp/Util;->writeDouble(Ljava/io/OutputStream;D)V

    .line 39
    return-void
.end method
