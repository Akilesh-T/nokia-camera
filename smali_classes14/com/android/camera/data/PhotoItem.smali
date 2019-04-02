.class public Lcom/android/camera/data/PhotoItem;
.super Lcom/android/camera/data/FilmstripItemBase;
.source "PhotoItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/FilmstripItemBase",
        "<",
        "Lcom/android/camera/data/FilmstripItemData;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_PEEK_BITMAP_PIXELS:I = 0x186a00

.field private static final PHOTO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private mSessionPlaceholderBitmap:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PhotoItem"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/PhotoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 55
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_EDIT:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_DELETE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SWIPE_AWAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_ZOOM_IN_PLACE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->HAS_DETAILED_CAPTURE_INFO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_IMAGE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/PhotoItem;->PHOTO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/PhotoItemFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/camera/data/GlideFilmstripManager;
    .param p3, "data"    # Lcom/android/camera/data/FilmstripItemData;
    .param p4, "photoItemFactory"    # Lcom/android/camera/data/PhotoItemFactory;

    .prologue
    .line 72
    sget-object v0, Lcom/android/camera/data/PhotoItem;->PHOTO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/data/FilmstripItemBase;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/FilmstripItemAttributes;)V

    .line 68
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/PhotoItem;->mSessionPlaceholderBitmap:Lcom/google/common/base/Optional;

    .line 73
    iput-object p4, p0, Lcom/android/camera/data/PhotoItem;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 74
    return-void
.end method

.method private renderFullSize(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 214
    .local v0, "size":Lcom/android/camera/util/Size;
    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v2, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {p0, v2}, Lcom/android/camera/data/PhotoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/camera/data/GlideFilmstripManager;->loadFull(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;Lcom/android/camera/util/Size;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 215
    invoke-direct {p0, p1}, Lcom/android/camera/data/PhotoItem;->renderScreenSize(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 214
    return-object v1
.end method

.method private renderScreenSize(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v2, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    .line 196
    invoke-virtual {p0, v2}, Lcom/android/camera/data/PhotoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/PhotoItem;->mSuggestedSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/data/GlideFilmstripManager;->loadScreen(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;Lcom/android/camera/util/Size;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 200
    .local v0, "request":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mSessionPlaceholderBitmap:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lcom/android/camera/data/PhotoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "using session bitmap as placeholder"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mSessionPlaceholderBitmap:Lcom/google/common/base/Optional;

    .line 203
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 202
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/data/PhotoItem;->renderTinySize(Landroid/net/Uri;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private renderTinySize(Landroid/net/Uri;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            "**",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/data/PhotoItem;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {p0, v1}, Lcom/android/camera/data/PhotoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/GlideFilmstripManager;->loadTinyThumb(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()Z
    .locals 6

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/camera/data/PhotoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    .line 97
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    invoke-super {p0}, Lcom/android/camera/data/FilmstripItemBase;->delete()Z

    move-result v1

    return v1
.end method

.method protected fillImageView(Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 142
    const v0, 0x7f080132

    .line 143
    .local v0, "stringId":I
    invoke-virtual {p0}, Lcom/android/camera/data/PhotoItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/Metadata;->isHasRgbzData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const v0, 0x7f08021a

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/data/PhotoItem;->mDateFormatter:Ljava/text/DateFormat;

    iget-object v5, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    .line 149
    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 147
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public generateThumbnail(IIF)Lcom/google/common/base/Optional;
    .locals 17
    .param p1, "boundingWidthPx"    # I
    .param p2, "boundingHeightPx"    # I
    .param p3, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/PhotoItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v10

    .line 223
    .local v10, "data":Lcom/android/camera/data/FilmstripItemData;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/PhotoItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->isRendering()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 271
    :goto_0
    return-object v3

    .line 230
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v16

    .line 236
    .local v16, "width":I
    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    .line 237
    .local v14, "height":I
    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v15

    .line 239
    .local v15, "orientation":I
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v15, v0, v1}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIF)Landroid/graphics/Point;

    move-result-object v11

    .line 245
    .local v11, "dim":Landroid/graphics/Point;
    rem-int/lit16 v3, v15, 0xb4

    if-eqz v3, :cond_1

    .line 246
    iget v12, v11, Landroid/graphics/Point;->x:I

    .line 247
    .local v12, "dummy":I
    iget v3, v11, Landroid/graphics/Point;->y:I

    iput v3, v11, Landroid/graphics/Point;->x:I

    .line 248
    iput v12, v11, Landroid/graphics/Point;->y:I

    .line 254
    .end local v12    # "dummy":I
    :cond_1
    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    .line 255
    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    iget v5, v11, Landroid/graphics/Point;->x:I

    iget v6, v11, Landroid/graphics/Point;->y:I

    .line 258
    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v7

    const v8, 0x186a00

    .line 252
    invoke-static/range {v2 .. v8}, Lcom/android/camera/data/FilmstripItemUtils;->loadImageThumbnailFromStream(Ljava/io/InputStream;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 259
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/camera/data/PhotoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateThumbnail : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    if-eqz v2, :cond_2

    .line 263
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    const/4 v2, 0x0

    .line 271
    :cond_2
    :goto_2
    invoke-static {v9}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    goto :goto_0

    .line 231
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "dim":Landroid/graphics/Point;
    .end local v14    # "height":I
    .end local v15    # "orientation":I
    .end local v16    # "width":I
    :catch_0
    move-exception v13

    .line 232
    .local v13, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/camera/data/PhotoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    goto/16 :goto_0

    .line 259
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "dim":Landroid/graphics/Point;
    .restart local v14    # "height":I
    .restart local v15    # "orientation":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 264
    :catch_1
    move-exception v13

    .line 265
    .local v13, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    const/4 v2, 0x0

    .line 268
    goto :goto_2

    .line 267
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    const/4 v2, 0x0

    throw v3
.end method

.method public getItemViewType()Lcom/android/camera/data/FilmstripItemType;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/camera/data/FilmstripItemType;->PHOTO:Lcom/android/camera/data/FilmstripItemType;

    return-object v0
.end method

.method public getMediaDetails()Lcom/google/common/base/Optional;
    .locals 4
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
    .line 103
    invoke-super {p0}, Lcom/android/camera/data/FilmstripItemBase;->getMediaDetails()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 104
    .local v1, "optionalDetails":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/data/MediaDetails;>;"
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/MediaDetails;

    .line 106
    .local v0, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    iget-object v2, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/data/MediaDetails;->extractExifInfo(Lcom/android/camera/data/MediaDetails;Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 109
    .end local v0    # "mediaDetails":Lcom/android/camera/data/MediaDetails;
    :cond_0
    return-object v1
.end method

.method public getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .locals 3
    .param p2, "adapter"    # Lcom/android/camera/data/LocalFilmstripDataAdapter;
    .param p3, "isInProgress"    # Z
    .param p4, "videoClickedCallback"    # Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/camera/data/LocalFilmstripDataAdapter;",
            "Z",
            "Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "optionalView":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/view/View;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .local v0, "imageView":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/data/PhotoItem;->fillImageView(Landroid/widget/ImageView;)V

    .line 132
    return-object v0

    .line 126
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    const v1, 0x7f0f000b

    invoke-virtual {p0}, Lcom/android/camera/data/PhotoItem;->getItemViewType()Lcom/android/camera/data/FilmstripItemType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public recycle(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 155
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/PhotoItem;->mSessionPlaceholderBitmap:Lcom/google/common/base/Optional;

    .line 156
    return-void
.end method

.method public refresh()Lcom/android/camera/data/FilmstripItem;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/data/PhotoItem;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    return-object v0
.end method

.method public renderFullRes(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 183
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/android/camera/data/PhotoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "renderFullRes was called with an object that is not an ImageView!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public renderThumbnail(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 174
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/PhotoItem;->renderScreenSize(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 179
    :goto_0
    return-void

    .line 177
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    sget-object v0, Lcom/android/camera/data/PhotoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "renderThumbnail was called with an object that is not an ImageView!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public renderTiny(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 165
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/PhotoItem;->renderTinySize(Landroid/net/Uri;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 170
    :goto_0
    return-void

    .line 168
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    sget-object v0, Lcom/android/camera/data/PhotoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "renderTiny was called with an object that is not an ImageView!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
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
    .line 85
    .local p1, "sessionPlaceholderBitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/camera/data/PhotoItem;->mSessionPlaceholderBitmap:Lcom/google/common/base/Optional;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/PhotoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
