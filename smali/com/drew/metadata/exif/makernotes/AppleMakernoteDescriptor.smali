.class public Lcom/drew/metadata/exif/makernotes/AppleMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "AppleMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 50
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/AppleMakernoteDescriptor;->getHdrImageTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public getHdrImageTypeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 57
    const/16 v0, 0xa

    const/4 v1, 0x3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "HDR Image"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Original Image"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/AppleMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
