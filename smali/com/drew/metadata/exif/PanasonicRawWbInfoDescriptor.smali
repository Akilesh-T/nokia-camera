.class public Lcom/drew/metadata/exif/PanasonicRawWbInfoDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicRawWbInfoDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 58
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 56
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDescriptor;->getWbTypeDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public getWbTypeDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicRawWbInfoDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    .local v0, "wbtype":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-super {p0, v1}, Lcom/drew/metadata/TagDescriptor;->getLightSourceDescription(S)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
