.class public Lcom/github/faucamp/simplertmp/amf/AmfMap;
.super Lcom/github/faucamp/simplertmp/amf/AmfObject;
.source "AmfMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/amf/AmfObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-super {p0}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getSize()I

    move-result v0

    iput v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->size:I

    .line 49
    iget v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->size:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->size:I

    .line 51
    :cond_0
    iget v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->size:I

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
    .line 40
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    .line 41
    .local v0, "length":I
    invoke-super {p0, p1}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->readFrom(Ljava/io/InputStream;)V

    .line 42
    iget v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->size:I

    .line 43
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
    .line 21
    sget-object v1, Lcom/github/faucamp/simplertmp/amf/AmfType;->MAP:Lcom/github/faucamp/simplertmp/amf/AmfType;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/amf/AmfType;->getValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 24
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 27
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfMap;->properties:Ljava/util/Map;

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

    .line 29
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/github/faucamp/simplertmp/amf/AmfData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/github/faucamp/simplertmp/amf/AmfString;->writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/faucamp/simplertmp/amf/AmfData;

    invoke-interface {v1, p1}, Lcom/github/faucamp/simplertmp/amf/AmfData;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 34
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/github/faucamp/simplertmp/amf/AmfData;>;"
    :cond_0
    sget-object v1, Lcom/github/faucamp/simplertmp/amf/AmfMap;->OBJECT_END_MARKER:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 35
    return-void
.end method
