.class public Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PsdHeaderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/photoshop/PsdHeaderDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/photoshop/PsdHeaderDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/photoshop/PsdHeaderDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getBitsPerChannelDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " per channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "s"

    goto :goto_1
.end method

.method public getChannelCountDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 64
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "s"

    goto :goto_1
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Grayscale"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Indexed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RGB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CMYK"

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v2, "Multichannel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Duotone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Lab"

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 56
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->getChannelCountDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->getBitsPerChannelDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->getImageHeightDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->getImageWidthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getImageHeightDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 102
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "s"

    goto :goto_1
.end method

.method public getImageWidthDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/drew/metadata/photoshop/PsdHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 110
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 114
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v2

    .line 112
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pixel"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "s"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    .end local v1    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 114
    goto :goto_0
.end method
