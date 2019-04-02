.class public Lcom/drew/metadata/bmp/BmpHeaderDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "BmpHeaderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/bmp/BmpHeaderDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/bmp/BmpHeaderDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/bmp/BmpHeaderDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCompressionDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x0

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 63
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 81
    .end local v2    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v3

    .line 65
    .restart local v2    # "value":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    .local v1, "headerSize":Ljava/lang/Integer;
    if-nez v1, :cond_1

    move-object v3, v4

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 78
    const/4 v3, 0x5

    invoke-super {p0, v3}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 70
    :pswitch_0
    const-string v3, "None"

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v3, "RLE 8-bit/pixel"

    goto :goto_0

    .line 72
    :pswitch_2
    const-string v3, "RLE 4-bit/pixel"

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_2

    const-string v3, "Bit field"

    goto :goto_0

    :cond_2
    const-string v3, "Huffman 1D"

    goto :goto_0

    .line 74
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_3

    const-string v3, "JPEG"

    goto :goto_0

    :cond_3
    const-string v3, "RLE-24"

    goto :goto_0

    .line 75
    :pswitch_5
    const-string v3, "PNG"

    goto :goto_0

    .line 76
    :pswitch_6
    const-string v3, "Bit field"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v1    # "headerSize":Ljava/lang/Integer;
    .end local v2    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 81
    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 47
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->getCompressionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
