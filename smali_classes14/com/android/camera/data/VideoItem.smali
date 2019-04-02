.class public Lcom/android/camera/data/VideoItem;
.super Lcom/android/camera/data/FilmstripItemBase;
.source "VideoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/VideoItem$VideoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/FilmstripItemBase",
        "<",
        "Lcom/android/camera/data/VideoItemData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final VIDEO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;


# instance fields
.field private mCachedSize:Lcom/android/camera/util/Size;

.field private final mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoItem"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/VideoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 55
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_PLAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

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

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->HAS_DETAILED_CAPTURE_INFO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_VIDEO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/VideoItem;->VIDEO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/VideoItemData;Lcom/android/camera/data/VideoItemFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/camera/data/GlideFilmstripManager;
    .param p3, "data"    # Lcom/android/camera/data/VideoItemData;
    .param p4, "videoItemFactory"    # Lcom/android/camera/data/VideoItemFactory;

    .prologue
    .line 71
    sget-object v0, Lcom/android/camera/data/VideoItem;->VIDEO_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/data/FilmstripItemBase;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/FilmstripItemAttributes;)V

    .line 72
    iput-object p4, p0, Lcom/android/camera/data/VideoItem;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 73
    return-void
.end method

.method private getBestHeight()I
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mMetaData:Lcom/android/camera/data/Metadata;

    invoke-virtual {v1}, Lcom/android/camera/data/Metadata;->getVideoHeight()I

    move-result v0

    .line 92
    .local v0, "metadataHeight":I
    if-lez v0, :cond_0

    .line 95
    .end local v0    # "metadataHeight":I
    :goto_0
    return v0

    .restart local v0    # "metadataHeight":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v1, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v1}, Lcom/android/camera/data/VideoItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getBestWidth()I
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mMetaData:Lcom/android/camera/data/Metadata;

    invoke-virtual {v1}, Lcom/android/camera/data/Metadata;->getVideoWidth()I

    move-result v0

    .line 83
    .local v0, "metadataWidth":I
    if-lez v0, :cond_0

    .line 86
    .end local v0    # "metadataWidth":I
    :goto_0
    return v0

    .restart local v0    # "metadataWidth":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v1, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v1}, Lcom/android/camera/data/VideoItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 237
    const v1, 0x7f0f000a

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "container":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/camera/data/VideoItem$VideoViewHolder;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Lcom/android/camera/data/VideoItem$VideoViewHolder;

    .line 242
    .end local v0    # "container":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "container":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderTiny(Lcom/android/camera/data/VideoItem$VideoViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/android/camera/data/VideoItem$VideoViewHolder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {p0, v2}, Lcom/android/camera/data/VideoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/data/GlideFilmstripManager;->loadMediaStoreThumb(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    .line 233
    invoke-static {p1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 234
    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 6

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v1, Lcom/android/camera/data/VideoItemData;

    .line 126
    invoke-virtual {v1}, Lcom/android/camera/data/VideoItemData;->getContentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Lcom/android/camera/data/FilmstripItemBase;->delete()Z

    move-result v1

    return v1
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
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/android/camera/data/VideoItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/android/camera/data/FilmstripItemUtils;->loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/camera/data/VideoItem;->getWidth()I

    move-result v1

    .line 114
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/camera/data/VideoItem;->getHeight()I

    move-result v0

    .line 115
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->mCachedSize:Lcom/android/camera/util/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->mCachedSize:Lcom/android/camera/util/Size;

    .line 116
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->mCachedSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 117
    :cond_0
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-direct {v2, v1, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/android/camera/data/VideoItem;->mCachedSize:Lcom/android/camera/util/Size;

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->mCachedSize:Lcom/android/camera/util/Size;

    return-object v2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->mMetaData:Lcom/android/camera/data/Metadata;

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->isVideoRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType()Lcom/android/camera/data/FilmstripItemType;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/android/camera/data/FilmstripItemType;->VIDEO:Lcom/android/camera/data/FilmstripItemType;

    return-object v0
.end method

.method public getMediaDetails()Lcom/google/common/base/Optional;
    .locals 8
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
    .line 132
    invoke-super {p0}, Lcom/android/camera/data/FilmstripItemBase;->getMediaDetails()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 133
    .local v2, "optionalDetails":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/data/MediaDetails;>;"
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/MediaDetails;

    .line 135
    .local v1, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    iget-object v4, p0, Lcom/android/camera/data/VideoItem;->mContext:Landroid/content/Context;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v3, Lcom/android/camera/data/VideoItemData;

    .line 136
    invoke-virtual {v3}, Lcom/android/camera/data/VideoItemData;->getVideoDurationMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 135
    invoke-static {v4, v6, v7}, Lcom/android/camera/data/MediaDetails;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "duration":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 139
    .end local v0    # "duration":Ljava/lang/String;
    .end local v1    # "mediaDetails":Lcom/android/camera/data/MediaDetails;
    :cond_0
    return-object v2
.end method

.method public getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .locals 10
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
    .line 155
    .local p1, "optionalView":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/view/View;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 157
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v3

    .line 168
    .local v3, "viewHolder":Lcom/android/camera/data/VideoItem$VideoViewHolder;
    :goto_0
    if-eqz v3, :cond_1

    .line 170
    invoke-static {v3}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$000(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/android/camera/data/VideoItem$1;

    invoke-direct {v5, p0, p4}, Lcom/android/camera/data/VideoItem$1;-><init>(Lcom/android/camera/data/VideoItem;Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v4, p0, Lcom/android/camera/data/VideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08028c

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/camera/data/VideoItem;->mDateFormatter:Ljava/text/DateFormat;

    iget-object v4, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v4, Lcom/android/camera/data/VideoItemData;

    .line 179
    invoke-virtual {v4}, Lcom/android/camera/data/VideoItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    .line 177
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    :goto_1
    return-object v2

    .line 159
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewHolder":Lcom/android/camera/data/VideoItem$VideoViewHolder;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/data/VideoItem;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04003f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 160
    .restart local v2    # "view":Landroid/view/View;
    const v4, 0x7f0f000b

    invoke-virtual {p0}, Lcom/android/camera/data/VideoItem;->getItemViewType()Lcom/android/camera/data/FilmstripItemType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 161
    const v4, 0x7f0f0119

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 162
    .local v1, "videoView":Landroid/widget/ImageView;
    const v4, 0x7f0f011a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    .local v0, "playButton":Landroid/widget/ImageView;
    new-instance v3, Lcom/android/camera/data/VideoItem$VideoViewHolder;

    invoke-direct {v3, v1, v0}, Lcom/android/camera/data/VideoItem$VideoViewHolder;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 165
    .restart local v3    # "viewHolder":Lcom/android/camera/data/VideoItem$VideoViewHolder;
    const v4, 0x7f0f000a

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 185
    .end local v0    # "playButton":Landroid/widget/ImageView;
    .end local v1    # "videoView":Landroid/widget/ImageView;
    :cond_1
    sget-object v4, Lcom/android/camera/data/VideoItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "getView called with a view that is not compatible with VideoItem."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->mMetaData:Lcom/android/camera/data/Metadata;

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->isVideoRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/VideoItem;->getBestWidth()I

    move-result v0

    goto :goto_0
.end method

.method public recycle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v0

    .line 210
    .local v0, "holder":Lcom/android/camera/data/VideoItem$VideoViewHolder;
    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 213
    :cond_0
    return-void
.end method

.method public refresh()Lcom/android/camera/data/FilmstripItem;
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v0

    return-object v0
.end method

.method public renderFullRes(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 205
    return-void
.end method

.method public renderThumbnail(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/camera/data/VideoItem;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {p0, v2}, Lcom/android/camera/data/VideoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->mSuggestedSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/data/GlideFilmstripManager;->loadScreen(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;Lcom/android/camera/util/Size;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/data/VideoItem;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    .line 199
    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    .line 200
    invoke-virtual {p0, v3}, Lcom/android/camera/data/VideoItem;->generateSignature(Lcom/android/camera/data/FilmstripItemData;)Lcom/bumptech/glide/load/Key;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v0, v3}, Lcom/android/camera/data/GlideFilmstripManager;->loadMediaStoreThumb(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/data/VideoItem$VideoViewHolder;->access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 202
    return-void
.end method

.method public renderTiny(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/camera/data/VideoItem;->getViewHolder(Landroid/view/View;)Lcom/android/camera/data/VideoItem$VideoViewHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/VideoItem;->renderTiny(Lcom/android/camera/data/VideoItem$VideoViewHolder;)V

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
