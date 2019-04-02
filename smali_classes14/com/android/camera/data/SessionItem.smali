.class public Lcom/android/camera/data/SessionItem;
.super Ljava/lang/Object;
.source "SessionItem.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripItem;


# instance fields
.field private final mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/android/camera/data/FilmstripItemData;

.field protected final mMetaData:Lcom/android/camera/data/Metadata;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/util/Size;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dimension"    # Lcom/android/camera/util/Size;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/camera/data/SessionItem;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/camera/data/SessionItem;->mUri:Landroid/net/Uri;

    .line 69
    new-instance v1, Lcom/android/camera/data/Metadata;

    invoke-direct {v1}, Lcom/android/camera/data/Metadata;-><init>()V

    iput-object v1, p0, Lcom/android/camera/data/SessionItem;->mMetaData:Lcom/android/camera/data/Metadata;

    .line 70
    iget-object v1, p0, Lcom/android/camera/data/SessionItem;->mMetaData:Lcom/android/camera/data/Metadata;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/Metadata;->setLoaded(Z)V

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 73
    .local v0, "creationDate":Ljava/util/Date;
    new-instance v1, Lcom/android/camera/data/FilmstripItemData$Builder;

    invoke-direct {v1, p2}, Lcom/android/camera/data/FilmstripItemData$Builder;-><init>(Landroid/net/Uri;)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/camera/data/FilmstripItemData$Builder;->withCreationDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemData$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/camera/data/FilmstripItemData$Builder;->withLastModifiedDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemData$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1, p3}, Lcom/android/camera/data/FilmstripItemData$Builder;->withDimensions(Lcom/android/camera/util/Size;)Lcom/android/camera/data/FilmstripItemData$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData$Builder;->build()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    .line 79
    new-instance v1, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    sget-object v2, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_RENDERING:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 80
    invoke-virtual {v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/data/SessionItem;->mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 82
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/common/base/Optional;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/data/SessionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Lcom/android/camera/Storage;->containsPlaceholderSize(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/android/camera/data/SessionItem;->getSessionSize(Landroid/net/Uri;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 59
    .local v0, "dimension":Lcom/android/camera/util/Size;
    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_1
    new-instance v1, Lcom/android/camera/data/SessionItem;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/camera/data/SessionItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/util/Size;)V

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0
.end method

.method private static getSessionSize(Landroid/net/Uri;)Lcom/android/camera/util/Size;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/camera/Storage;->getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v0

    .line 86
    .local v0, "size":Landroid/graphics/Point;
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/graphics/Point;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public generateThumbnail(IIF)Lcom/google/common/base/Optional;
    .locals 1
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
    .line 174
    iget-object v0, p0, Lcom/android/camera/data/SessionItem;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/camera/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/data/SessionItem;->mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

    return-object v0
.end method

.method public getData()Lcom/android/camera/data/FilmstripItemData;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    return-object v0
.end method

.method public getDimensions()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType()Lcom/android/camera/data/FilmstripItemType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/camera/data/FilmstripItemType;->SESSION:Lcom/android/camera/data/FilmstripItemType;

    return-object v0
.end method

.method public getMediaDetails()Lcom/google/common/base/Optional;
    .locals 1
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
    .line 139
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/android/camera/data/Metadata;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/data/SessionItem;->mMetaData:Lcom/android/camera/data/Metadata;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .locals 4
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
    .line 97
    .local p1, "optionalView":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/view/View;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 104
    .local v0, "imageView":Landroid/widget/ImageView;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 105
    .local v1, "placeholder":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/android/camera/data/SessionItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    return-object v0

    .line 100
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "placeholder":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/data/SessionItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    const v2, 0x7f0f000b

    invoke-virtual {p0}, Lcom/android/camera/data/SessionItem;->getItemViewType()Lcom/android/camera/data/FilmstripItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 108
    .restart local v1    # "placeholder":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    :cond_1
    const v2, 0x7f0e0096

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public recycle(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 179
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public refresh()Lcom/android/camera/data/FilmstripItem;
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/data/SessionItem;->getSessionSize(Landroid/net/Uri;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 145
    .local v0, "dimension":Lcom/android/camera/util/Size;
    if-nez v0, :cond_0

    .line 146
    sget-object v1, Lcom/android/camera/data/SessionItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot refresh item, session does not exist."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-object p0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-static {v1}, Lcom/android/camera/data/FilmstripItemData$Builder;->from(Lcom/android/camera/data/FilmstripItemData;)Lcom/android/camera/data/FilmstripItemData$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Lcom/android/camera/data/FilmstripItemData$Builder;->withDimensions(Lcom/android/camera/util/Size;)Lcom/android/camera/data/FilmstripItemData$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData$Builder;->build()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/data/SessionItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    goto :goto_0
.end method

.method public renderFullRes(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 130
    return-void
.end method

.method public renderThumbnail(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 127
    return-void
.end method

.method public renderTiny(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 124
    return-void
.end method

.method public setSuggestedSize(II)V
    .locals 0
    .param p1, "widthPx"    # I
    .param p2, "heightPx"    # I

    .prologue
    .line 121
    return-void
.end method
