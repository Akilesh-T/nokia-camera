.class public Lcom/android/camera/data/PlaceholderItem;
.super Ljava/lang/Object;
.source "PlaceholderItem.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripItem;


# static fields
.field private static final PLACEHOLDER_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

.field private static final SIMPLE_VIEW_URI_SCHEME:Ljava/lang/String; = "simple_view_data"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

.field private final mItemData:Lcom/android/camera/data/FilmstripItemData;

.field private final mItemViewType:Lcom/android/camera/data/FilmstripItemType;

.field private final mMetaData:Lcom/android/camera/data/Metadata;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PlaceholderItem"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/PlaceholderItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 39
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/PlaceholderItem;->PLACEHOLDER_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/camera/data/FilmstripItemType;II)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "viewType"    # Lcom/android/camera/data/FilmstripItemType;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/data/PlaceholderItem;->mView:Landroid/view/View;

    .line 52
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/data/PlaceholderItem;->mItemViewType:Lcom/android/camera/data/FilmstripItemType;

    .line 53
    new-instance v11, Lcom/android/camera/util/Size;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 54
    .local v11, "dimensions":Lcom/android/camera/util/Size;
    new-instance v7, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 55
    .local v7, "creationDate":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 56
    .local v8, "lastModifiedDate":Ljava/util/Date;
    new-instance v2, Lcom/android/camera/data/Metadata;

    invoke-direct {v2}, Lcom/android/camera/data/Metadata;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->mMetaData:Lcom/android/camera/data/Metadata;

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->mMetaData:Lcom/android/camera/data/Metadata;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/data/Metadata;->setLoaded(Z)V

    .line 58
    new-instance v16, Landroid/net/Uri$Builder;

    invoke-direct/range {v16 .. v16}, Landroid/net/Uri$Builder;-><init>()V

    .line 59
    .local v16, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "uuid":Ljava/lang/String;
    const-string v2, "simple_view_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 63
    .local v10, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/android/camera/data/FilmstripItemData;

    const-wide/16 v3, -0x1

    const-string v6, ""

    const-string v9, ""

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    sget-object v15, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/data/FilmstripItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/util/Size;JILcom/android/camera/data/Location;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->mItemData:Lcom/android/camera/data/FilmstripItemData;

    .line 76
    sget-object v2, Lcom/android/camera/data/PlaceholderItem;->PLACEHOLDER_ITEM_ATTRIBUTES:Lcom/android/camera/data/FilmstripItemAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/data/PlaceholderItem;->mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 77
    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .prologue
    .line 101
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
    .line 140
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->mAttributes:Lcom/android/camera/data/FilmstripItemAttributes;

    return-object v0
.end method

.method public getData()Lcom/android/camera/data/FilmstripItemData;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->mItemData:Lcom/android/camera/data/FilmstripItemData;

    return-object v0
.end method

.method public getDimensions()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->mItemData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType()Lcom/android/camera/data/FilmstripItemType;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->mItemViewType:Lcom/android/camera/data/FilmstripItemType;

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
    .line 130
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/android/camera/data/Metadata;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->mMetaData:Lcom/android/camera/data/Metadata;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->mItemData:Lcom/android/camera/data/FilmstripItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .locals 1
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
    .line 108
    .local p1, "optionalView":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/camera/data/PlaceholderItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public recycle(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 126
    return-void
.end method

.method public refresh()Lcom/android/camera/data/FilmstripItem;
    .locals 0

    .prologue
    .line 96
    return-object p0
.end method

.method public renderFullRes(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 121
    return-void
.end method

.method public renderThumbnail(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 118
    return-void
.end method

.method public renderTiny(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 115
    return-void
.end method

.method public setSuggestedSize(II)V
    .locals 0
    .param p1, "widthPx"    # I
    .param p2, "heightPx"    # I

    .prologue
    .line 112
    return-void
.end method
