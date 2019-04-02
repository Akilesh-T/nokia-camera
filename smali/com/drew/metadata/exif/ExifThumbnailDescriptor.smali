.class public Lcom/drew/metadata/exif/ExifThumbnailDescriptor;
.super Lcom/drew/metadata/exif/ExifDescriptorBase;
.source "ExifThumbnailDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/exif/ExifDescriptorBase",
        "<",
        "Lcom/drew/metadata/exif/ExifThumbnailDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/ExifThumbnailDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/ExifThumbnailDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/exif/ExifDescriptorBase;-><init>(Lcom/drew/metadata/Directory;)V

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

    .line 52
    invoke-super {p0, p1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->getThumbnailOffsetDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->getThumbnailLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnailLengthDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    const/16 v2, 0x202

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbnailOffsetDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    const/16 v2, 0x201

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
