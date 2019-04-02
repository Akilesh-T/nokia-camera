.class public Lcom/github/faucamp/simplertmp/amf/AmfBoolean;
.super Ljava/lang/Object;
.source "AmfBoolean.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/amf/AmfData;


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;->value:Z

    .line 25
    return-void
.end method

.method public static readBooleanFrom(Ljava/io/InputStream;)Z
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    return v0
.end method

.method public isValue()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;->value:Z

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

    .line 38
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;->value:Z

    .line 39
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;->value:Z

    .line 21
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
    .line 32
    sget-object v0, Lcom/github/faucamp/simplertmp/amf/AmfType;->BOOLEAN:Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfType;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 33
    iget-boolean v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfBoolean;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
