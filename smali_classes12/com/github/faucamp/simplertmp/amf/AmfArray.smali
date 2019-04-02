.class public Lcom/github/faucamp/simplertmp/amf/AmfArray;
.super Ljava/lang/Object;
.source "AmfArray.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/amf/AmfData;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/faucamp/simplertmp/amf/AmfData;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    return-void
.end method


# virtual methods
.method public addItem(Lcom/github/faucamp/simplertmp/amf/AmfData;)V
    .locals 1
    .param p1, "dataItem"    # Lcom/github/faucamp/simplertmp/amf/AmfData;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/github/faucamp/simplertmp/amf/AmfArray;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/faucamp/simplertmp/amf/AmfData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 41
    iget v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 42
    const/4 v1, 0x5

    iput v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    .line 43
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfData;

    .line 45
    .local v0, "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    iget v2, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    invoke-interface {v0}, Lcom/github/faucamp/simplertmp/amf/AmfData;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    goto :goto_0

    .line 49
    .end local v0    # "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :cond_0
    iget v1, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    return v1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v2

    .line 30
    .local v2, "length":I
    const/4 v3, 0x5

    iput v3, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 33
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/amf/AmfDecoder;->readFrom(Ljava/io/InputStream;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v0

    .line 34
    .local v0, "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    iget v3, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    invoke-interface {v0}, Lcom/github/faucamp/simplertmp/amf/AmfData;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->size:I

    .line 35
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/amf/AmfArray;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "dataItem":Lcom/github/faucamp/simplertmp/amf/AmfData;
    :cond_0
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
    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
