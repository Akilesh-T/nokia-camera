.class public Lcom/drew/metadata/exif/PanasonicRawIFD0Descriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicRawIFD0Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;
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
    .locals 2
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :sswitch_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/PanasonicRawIFD0Descriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_1
    const/16 v0, 0x112

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/PanasonicRawIFD0Descriptor;->getOrientationDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x112 -> :sswitch_1
    .end sparse-switch
.end method
