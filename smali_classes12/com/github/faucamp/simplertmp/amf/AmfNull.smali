.class public Lcom/github/faucamp/simplertmp/amf/AmfNull;
.super Ljava/lang/Object;
.source "AmfNull.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/amf/AmfData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
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
    .line 28
    sget-object v0, Lcom/github/faucamp/simplertmp/amf/AmfType;->NULL:Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 33
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
    .line 25
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
    .line 19
    sget-object v0, Lcom/github/faucamp/simplertmp/amf/AmfType;->NULL:Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 20
    return-void
.end method
