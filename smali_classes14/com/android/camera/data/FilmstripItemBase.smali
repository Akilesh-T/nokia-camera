.class public abstract Lcom/android/camera/data/FilmstripItemBase;
.super Ljava/lang/Object;
.source "FilmstripItemBase.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/data/FilmstripItemData;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/data/FilmstripItem;"
    }
.end annotation


# static fields
.field public static final QUERY_ALL_MEDIA_ID:I = -0x1


# instance fields
.field protected final mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

.field protected final mContext:Landroid/content/Context;

.field protected final mData:Lcom/android/camera/data/FilmstripItemData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mDateFormatter:Ljava/text/DateFormat;

.field protected final mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

.field protected final mMetaData:Lcom/android/camera/data/Metadata;

.field protected mSuggestedSize:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/FilmstripItemAttributes;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glideManager"    # Lcom/android/camera/data/GlideFilmstripManager;
    .param p4, "attributes"    # Lcom/android/camera/data/FilmstripItemAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            "TT;",
            "Lcom/android/camera/data/FilmstripItemAttributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    .local p3, "data":Lcom/android/camera/data/FilmstripItemData;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mDateFormatter:Ljava/text/DateFormat;

    .line 57
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemBase;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/camera/data/FilmstripItemBase;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 59
    iput-object p3, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    .line 60
    iput-object p4, p0, Lcom/android/camera/data/FilmstripItemBase;->mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 62
    new-instance v0, Lcom/android/camera/data/Metadata;

    invoke-direct {v0}, Lcom/android/camera/data/Metadata;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mMetaData:Lcom/android/camera/data/Metadata;

    .line 64
    sget-object v0, Lcom/android/camera/data/GlideFilmstripManager;->TINY_THUMB_SIZE:Lcom/android/camera/util/Size;

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mSuggestedSize:Lcom/android/camera/util/Size;

    .line 65
    return-void
.end method

.method private deleteIfEmptyCameraSubDir(Ljava/io/File;)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 145
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v2, Lcom/android/camera/Storage;->DIRECTORY_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "cameraPathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "fileParentPathStr":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/data/FilmstripItemBase;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraPathStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  fileParentPathStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    sget-object v2, Lcom/android/camera/data/FilmstripItemBase;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()Z
    .locals 3

    .prologue
    .line 74
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "fileToDelete":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 76
    .local v0, "deletionSucceeded":Z
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/data/FilmstripItemBase;->deleteIfEmptyCameraSubDir(Ljava/io/File;)V

    .line 77
    return v0
.end method

.method protected final generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;
    .locals 8
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItemData;

    .prologue
    .line 137
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    .line 138
    .local v0, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    .line 140
    .local v2, "modTimeSeconds":J
    :goto_1
    new-instance v1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    return-object v1

    .line 137
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v2    # "modTimeSeconds":J
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    goto :goto_1
.end method

.method public getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

    return-object v0
.end method

.method public getData()Lcom/android/camera/data/FilmstripItemData;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    return-object v0
.end method

.method public getDimensions()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDetails()Lcom/google/common/base/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/data/MediaDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    new-instance v1, Lcom/android/camera/data/MediaDetails;

    invoke-direct {v1}, Lcom/android/camera/data/MediaDetails;-><init>()V

    .line 97
    .local v1, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 98
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemBase;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 99
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemBase;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 100
    const/16 v4, 0xc8

    iget-object v5, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 101
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/camera/data/FilmstripItemBase;->mDateFormatter:Ljava/text/DateFormat;

    iget-object v6, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    .line 102
    invoke-virtual {v6}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 103
    iget-object v4, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getSizeInBytes()J

    move-result-wide v2

    .line 104
    .local v2, "mSizeInBytes":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 105
    const/16 v4, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 108
    :cond_0
    iget-object v4, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getLocation()Lcom/android/camera/data/Location;

    move-result-object v0

    .line 109
    .local v0, "location":Lcom/android/camera/data/Location;
    sget-object v4, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    if-eq v0, v4, :cond_1

    .line 110
    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/android/camera/data/Location;->getLocationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 112
    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    return-object v4
.end method

.method public getMetadata()Lcom/android/camera/data/Metadata;
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mMetaData:Lcom/android/camera/data/Metadata;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v0

    return v0
.end method

.method public recycle(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 91
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public setSessionPlaceholderBitmap(Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    .local p1, "sessionPlaceholderBitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    return-void
.end method

.method public setSuggestedSize(II)V
    .locals 2
    .param p1, "widthPx"    # I
    .param p2, "heightPx"    # I

    .prologue
    .line 82
    .local p0, "this":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<TT;>;"
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 83
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemBase;->mSuggestedSize:Lcom/android/camera/util/Size;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/android/camera/data/FilmstripItemBase;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Suggested size was set to a zero area value!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
