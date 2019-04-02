.class public Lcom/drew/metadata/jpeg/HuffmanTablesDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "HuffmanTablesDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/jpeg/HuffmanTablesDescriptor;->getNumberOfTablesDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getNumberOfTablesDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 62
    iget-object v1, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 63
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, " Huffman table"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, " Huffman tables"

    goto :goto_1
.end method
