.class public Lcom/drew/metadata/jfif/JfifDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "JfifDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/jfif/JfifDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/jfif/JfifDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/jfif/JfifDirectory;
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

    .line 61
    :pswitch_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageResXDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageResYDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageResUnitsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getImageResUnitsDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/jfif/JfifDirectory;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 107
    const-string v1, "unit"

    goto :goto_0

    .line 103
    :pswitch_0
    const-string v1, "none"

    goto :goto_0

    .line 104
    :pswitch_1
    const-string v1, "inch"

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v1, "centimetre"

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getImageResXDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 88
    iget-object v1, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/jfif/JfifDirectory;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 91
    :goto_0
    return-object v1

    :cond_0
    const-string v2, "%d dot%s"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, ""

    :goto_1
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "s"

    goto :goto_1
.end method

.method public getImageResYDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 77
    iget-object v1, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/jfif/JfifDirectory;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const-string v2, "%d dot%s"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, ""

    :goto_1
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "s"

    goto :goto_1
.end method

.method public getImageVersionDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/jfif/JfifDirectory;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "%d.%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
