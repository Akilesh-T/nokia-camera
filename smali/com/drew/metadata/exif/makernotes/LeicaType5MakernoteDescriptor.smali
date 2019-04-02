.class public Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "LeicaType5MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 53
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x40d
        :pswitch_0
    .end packed-switch
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 9
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;

    const/16 v3, 0x40d

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->getByteArray(I)[B

    move-result-object v1

    .line 61
    .local v1, "values":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v4, :cond_1

    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 77
    :goto_0
    return-object v2

    .line 64
    :cond_1
    const-string v2, "%d %d %d %d"

    new-array v3, v4, [Ljava/lang/Object;

    aget-byte v4, v1, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    aget-byte v4, v1, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    aget-byte v4, v1, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    aget-byte v4, v1, v8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "join":Ljava/lang/String;
    const-string v2, "0 0 0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    const-string v2, "Program AE"

    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "1 0 0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    const-string v2, "Aperture-priority AE"

    goto :goto_0

    .line 70
    :cond_3
    const-string v2, "1 1 0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    const-string v2, "Aperture-priority AE (1)"

    goto :goto_0

    .line 72
    :cond_4
    const-string v2, "2 0 0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    const-string v2, "Shutter speed priority AE"

    goto :goto_0

    .line 74
    :cond_5
    const-string v2, "3 0 0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 75
    const-string v2, "Manual"

    goto :goto_0

    .line 77
    :cond_6
    const-string v2, "Unknown (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
