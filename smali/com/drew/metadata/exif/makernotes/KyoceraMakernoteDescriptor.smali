.class public Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "KyoceraMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 57
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDescriptor;->getProprietaryThumbnailDataDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getProprietaryThumbnailDataDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDescriptor;->getByteLengthDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
