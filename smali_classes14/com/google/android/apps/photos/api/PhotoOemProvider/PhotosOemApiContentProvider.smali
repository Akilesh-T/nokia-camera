.class public final Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;
.super Landroid/content/ContentProvider;
.source "PhotosOemApiContentProvider.java"


# static fields
.field private static final DELETE_BY_ID:I = 0x6

.field private static EDITOR_ICON_ID:I = 0x0

.field private static final EDIT_TYPE_HINT:I = 0x3

.field private static final LAUNCH_TYPE_HINT:I = 0x5

.field private static final LOAD_BADGE_ICON:I = 0x3

.field private static final LOAD_DIALOG_ICON:I = 0x5

.field private static final LOAD_EXTERNAL_EDITOR_ICON:I = 0xc

.field private static final LOAD_INTERACT_ICON:I = 0x4

.field private static final LOAD_SEARCH_ICON:I = 0xb

.field private static final MATCH_PATH_DELETE_BY_ID:Ljava/lang/String; = "delete/#"

.field private static final MATCH_PATH_DISCOVER:Ljava/lang/String; = "discover"

.field private static final MATCH_PATH_DISCOVER_TYPE_INFOS:Ljava/lang/String; = "discover/*"

.field private static final MATCH_PATH_SPECIAL_TYPE_ID:Ljava/lang/String; = "type/*"

.field private static final MATCH_PATH_SPECIAL_TYPE_METADATA:Ljava/lang/String; = "data/*"

.field private static final MATCH_PROCESSING_BY_ID:Ljava/lang/String; = "processing/#"

.field private static final MATCH_PROCESSING_METADATA:Ljava/lang/String; = "processing"

.field private static final MATCH_REMAINDER:Ljava/lang/String; = "/*"

.field private static final QUERY_DISCOVER:I = 0x9

.field private static final QUERY_DISCOVER_SPECIAL_TYPES:I = 0xa

.field private static final QUERY_PROCESSING_METADATA:I = 0x7

.field private static final QUERY_PROCESSING_METADATA_BY_ID:I = 0x8

.field private static final QUERY_SPECIAL_TYPE_ID:I = 0x1

.field private static final QUERY_SPECIAL_TYPE_METADATA:I = 0x2

.field private static final RESOURCE_ID_PATH_INDEX:I = 0x1

.field private static final SECURE_TYPE_HINT:I = 0x4

.field private static final STAR_TYPE_HINT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GP_OemContentProvider"

.field private static final TYPE_URI_PROJECTION:[Ljava/lang/String;

.field private static final VERSION:I = 0x4


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditorIconUri:Ljava/lang/String;

.field private mTrustedPartners:Lcom/google/android/apps/photos/api/signature/TrustedPartners;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const v0, 0x7f020083

    sput v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->EDITOR_ICON_ID:I

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "special_type_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addSpecialTypeRow([Ljava/lang/String;Landroid/database/MatrixCursor;Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;)V
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "result"    # Landroid/database/MatrixCursor;
    .param p3, "specialType"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .prologue
    const/4 v4, 0x0

    .line 340
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 341
    .local v2, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 342
    .local v1, "i":I
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, p1, v5

    .line 343
    .local v0, "column":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 350
    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 353
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 342
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 343
    :pswitch_0
    const-string v7, "special_type_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    goto :goto_1

    .line 345
    :pswitch_1
    invoke-virtual {p3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_2

    .line 355
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 356
    return-void

    .line 343
    :pswitch_data_0
    .packed-switch -0x35cc0146
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/google/android/apps/photos/api/IconQuery$Type;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 632
    .local v8, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x1

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 633
    .local v11, "resourceIdString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 639
    .local v10, "resourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 640
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v4

    .line 643
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 644
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/photos/api/IconQuery$Type;->getDimensionResourceId()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 646
    .local v9, "pixels":I
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v9, v9, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 651
    .local v6, "original":Landroid/graphics/Bitmap;
    move-object v13, v6

    .line 652
    .local v13, "result":Landroid/graphics/Bitmap;
    sget-object v14, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 653
    const/16 v14, 0x14

    new-array v5, v14, [F

    fill-array-data v5, :array_0

    .line 659
    .local v5, "matrix":[F
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 660
    .local v3, "colorSwapped":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 661
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 662
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v14, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 663
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v6, v14, v15, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 664
    move-object v13, v3

    .line 666
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "colorSwapped":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":[F
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_0
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    return-object v14

    .line 653
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private loadProcessingThumb(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "mediaStoreId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraServicesImpl;->getPostProcessManager()Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->get(J)Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;

    move-result-object v0

    .line 581
    .local v0, "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getFDfromBitmap(Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private notifyProcessing(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 206
    return-void
.end method

.method private queryDiscover(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 301
    const-string v4, "GP_OemContentProvider"

    const-string v6, "queryDiscover"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 303
    .local v2, "result":Landroid/database/MatrixCursor;
    array-length v4, p2

    new-array v3, v4, [Ljava/lang/Object;

    .line 304
    .local v3, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 305
    .local v1, "i":I
    array-length v7, p2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, p2, v6

    .line 306
    .local v0, "column":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 329
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 332
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 305
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 306
    :sswitch_0
    const-string v8, "discover_id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v8, "discover_name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "discover_icon_uri"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v8, "show_in_carousel"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v8, "show_in_search_suggestion"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    .line 308
    :pswitch_0
    const-string v4, "com.evenwell.bokeheditor.providers.discovery"

    aput-object v4, v3, v1

    goto :goto_2

    .line 311
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f080332

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_2

    .line 314
    :pswitch_2
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "content"

    .line 315
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    .line 316
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v8, "icon"

    .line 317
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const v8, 0x7f020112

    .line 318
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_2

    .line 321
    :pswitch_3
    const-string v4, "1"

    aput-object v4, v3, v1

    goto :goto_2

    .line 324
    :pswitch_4
    const-string v4, "1"

    aput-object v4, v3, v1

    goto :goto_2

    .line 334
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 335
    return-object v2

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f8ebadf -> :sswitch_1
        -0x7269db08 -> :sswitch_3
        -0x1ec47acf -> :sswitch_0
        0x1493dc3c -> :sswitch_2
        0x3657e863 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private queryDiscoverSupportedTypes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 294
    const-string v1, "GP_OemContentProvider"

    const-string v2, "queryDiscoverSupportedTypes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 296
    .local v0, "result":Landroid/database/MatrixCursor;
    sget-object v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DUAL_SIGHT_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->addSpecialTypeRow([Ljava/lang/String;Landroid/database/MatrixCursor;Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;)V

    .line 297
    return-object v0
.end method

.method private queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 13
    .param p1, "mediaStoreId"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 256
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v5, v12, [Ljava/lang/String;

    const-string v6, "media_store_id"

    aput-object v6, v5, v4

    const-string v6, "progress_status"

    aput-object v6, v5, v3

    const-string v6, "progress_percentage"

    aput-object v6, v5, v11

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 263
    .local v0, "cursor":Landroid/database/MatrixCursor;
    if-nez p1, :cond_0

    move v2, v3

    .line 265
    .local v2, "queryAll":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    invoke-virtual {v0, v10}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 267
    const-string v3, "GP_OemContentProvider"

    const-string v4, "AndroidContext is not valid, Skip it!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_1
    return-object v0

    .end local v2    # "queryAll":Z
    :cond_0
    move v2, v4

    .line 263
    goto :goto_0

    .line 272
    .restart local v2    # "queryAll":Z
    :cond_1
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/CameraServicesImpl;->getPostProcessManager()Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->getmProcessingMedias()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;

    .line 273
    .local v1, "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 274
    :cond_3
    const-string v6, "GP_OemContentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryProcessingMetadata : MediaStoreId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ProgressStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getProgressStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ProgressPercentage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getProgressPercentage()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 276
    const-string v6, "GP_OemContentProvider"

    const-string v7, "media is Recycled, Skip it!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 279
    :cond_4
    new-array v6, v12, [Ljava/lang/Object;

    .line 280
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    .line 281
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getProgressStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 282
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getProgressPercentage()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    .line 279
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 288
    .end local v1    # "media":Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
    :cond_5
    invoke-virtual {v0, v10}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    goto/16 :goto_1
.end method

.method private querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 361
    .local v2, "mediaStoreId":J
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    move-result-object v6

    .line 362
    .local v6, "helper":Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;
    invoke-virtual {v6}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 363
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->getTypeFromDB(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    move-result-object v4

    .line 365
    .local v4, "type":Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    const-string v0, "GP_OemContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "queryType : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", type:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->UNKNOWN:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    if-ne v4, v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->isImage(Landroid/content/Context;J)Z

    move-result v9

    .line 368
    .local v9, "isImage":Z
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->isVideo(Landroid/content/Context;J)Z

    move-result v10

    .line 369
    .local v10, "isVideo":Z
    const-string v0, "GP_OemContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isImage: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", isVideo: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->NONE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 372
    if-eqz v9, :cond_7

    .line 374
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->getImageType(Landroid/content/Context;J)I

    move-result v7

    .line 375
    .local v7, "imageType":I
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->isDualSightType(Landroid/content/Context;J)Z

    move-result v8

    .line 377
    .local v8, "isDualSightType":Z
    const v0, 0x30001

    if-ne v7, v0, :cond_4

    .line 378
    const-string v0, "GP_OemContentProvider"

    const-string v5, "Set type = SpecialType.DEPTH_TYPE"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 415
    .end local v7    # "imageType":I
    .end local v8    # "isDualSightType":Z
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->NONE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    if-eq v4, v0, :cond_1

    .line 420
    if-eqz v9, :cond_8

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->writeSpecialTypeToDb(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;Z)V

    .line 425
    .end local v9    # "isImage":Z
    .end local v10    # "isVideo":Z
    :cond_1
    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "special_type_id"

    aput-object v12, v0, v5

    invoke-direct {v11, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 426
    .local v11, "result":Landroid/database/MatrixCursor;
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    if-eq v4, v0, :cond_2

    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DUAL_SIGHT_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    if-eq v4, v0, :cond_2

    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->G_IMAGE_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    if-ne v4, v0, :cond_3

    .line 431
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v5

    invoke-virtual {v11, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 434
    :cond_3
    return-object v11

    .line 380
    .end local v11    # "result":Landroid/database/MatrixCursor;
    .restart local v7    # "imageType":I
    .restart local v8    # "isDualSightType":Z
    .restart local v9    # "isImage":Z
    .restart local v10    # "isVideo":Z
    :cond_4
    const v0, 0x30002

    if-ne v7, v0, :cond_5

    .line 381
    const-string v0, "GP_OemContentProvider"

    const-string v5, "Set type = SpecialType.G_DEPTH_TYPE"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->G_DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    goto :goto_0

    .line 383
    :cond_5
    const v0, 0x30003

    if-ne v7, v0, :cond_6

    .line 384
    const-string v0, "GP_OemContentProvider"

    const-string v5, "Set type = SpecialType.G_IMAGE_IMAGETYPE"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->G_IMAGE_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    goto :goto_0

    .line 386
    :cond_6
    if-eqz v8, :cond_0

    .line 387
    const-string v0, "GP_OemContentProvider"

    const-string v5, "Set type= SpecialType.DUAL_SIGHT_TYPE"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DUAL_SIGHT_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    goto :goto_0

    .line 391
    .end local v7    # "imageType":I
    .end local v8    # "isDualSightType":Z
    :cond_7
    if-eqz v10, :cond_0

    .line 396
    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->getSpecialTypeFromDB(Landroid/database/sqlite/SQLiteDatabase;JZ)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    move-result-object v4

    .line 397
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->UNKNOWN:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    if-ne v4, v0, :cond_0

    .line 398
    sget-object v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->NONE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->getMp4VideoFilePath(Landroid/content/Context;J)Ljava/lang/String;

    goto :goto_0

    .line 420
    :cond_8
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private querySpecialTypeMetadata(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 457
    const-string v6, "GP_OemContentProvider"

    const-string v8, "querySpecialTypeMetadata"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "specialTypeIdString":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    move-result-object v4

    .line 461
    .local v4, "specialType":Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 462
    .local v2, "result":Landroid/database/MatrixCursor;
    array-length v6, p2

    new-array v3, v6, [Ljava/lang/Object;

    .line 463
    .local v3, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 464
    .local v1, "i":I
    array-length v9, p2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v0, p2, v8

    .line 465
    .local v0, "column":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 509
    const/4 v6, 0x0

    aput-object v6, v3, v1

    .line 513
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 464
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 465
    :sswitch_0
    const-string v10, "configuration"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string v10, "special_type_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v10, "special_type_description"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string v10, "special_type_icon_uri"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v10, "edit_activity_package_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v10, "edit_activity_class_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const-string v10, "interact_activity_package_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "interact_activity_class_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_8
    const-string v10, "launch_activity_class_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_9
    const-string v10, "launch_activity_package_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_a
    const-string v10, "editor_description"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0xa

    goto :goto_1

    .line 467
    :pswitch_0
    invoke-virtual {v4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getConfiguration()Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 470
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v10, v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->nameResourceId:I

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 473
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v10, v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->descriptionResourceId:I

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 476
    :pswitch_3
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v10, "content"

    .line 477
    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v10, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    .line 478
    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v10, "icon"

    .line 479
    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget v10, v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->iconResourceId:I

    .line 480
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 484
    :pswitch_4
    const-string v6, "com.evenwell.bokeheditor"

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 487
    :pswitch_5
    const-string v6, "com.evenwell.bokeheditor.ui.activity.RefocusActivity"

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 491
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 494
    :pswitch_7
    invoke-virtual {v4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getInteractActivityClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 497
    :pswitch_8
    invoke-virtual {v4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getLaunchActivityClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 500
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 503
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const v10, 0x7f080076

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 516
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 517
    return-object v2

    .line 465
    :sswitch_data_0
    .sparse-switch
        -0x7b3cb4fb -> :sswitch_3
        -0x51f4f261 -> :sswitch_4
        -0x1cf2d178 -> :sswitch_9
        -0x1a31b7d6 -> :sswitch_a
        -0x24f3e6a -> :sswitch_8
        0xd31806a -> :sswitch_1
        0x14538ccb -> :sswitch_6
        0x37f97a6d -> :sswitch_5
        0x626fd499 -> :sswitch_7
        0x733374f6 -> :sswitch_0
        0x757df53d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private querySpecialTypesVersion()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "version"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    return-object v0
.end method

.method private validateCallingPackage()Z
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mTrustedPartners:Lcom/google/android/apps/photos/api/signature/TrustedPartners;

    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/photos/api/signature/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 672
    if-nez p1, :cond_1

    .line 673
    const-string v7, "GP_OemContentProvider"

    const-string v8, " writeBitmapToFd failed bitmap null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v4, 0x0

    .line 686
    :cond_0
    :goto_0
    return-object v4

    .line 676
    :cond_1
    const/4 v2, 0x0

    .line 677
    .local v2, "exception":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 678
    .local v3, "inputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 680
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 681
    .local v0, "descriptors":[Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    aget-object v4, v0, v7

    .line 682
    .local v4, "outputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x1

    aget-object v3, v0, v7

    .line 683
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v7, 0x64

    :try_start_1
    invoke-virtual {p1, p2, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 685
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 690
    if-eqz v3, :cond_2

    .line 692
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 697
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 699
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_0

    .line 693
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 694
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_1

    .line 687
    .end local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 688
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    move-object v2, v1

    .line 690
    if-eqz v3, :cond_3

    .line 692
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 697
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 699
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 705
    :cond_4
    :goto_4
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 693
    :catch_3
    move-exception v1

    .line 694
    move-object v2, v1

    goto :goto_3

    .line 700
    :catch_4
    move-exception v1

    .line 701
    move-object v2, v1

    .line 702
    goto :goto_4

    .line 690
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 692
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 697
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 699
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 702
    :cond_6
    :goto_7
    throw v7

    .line 693
    :catch_5
    move-exception v1

    .line 694
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_6

    .line 700
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 701
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_7

    .line 690
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 687
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private writeSpecialTypeToDb(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;Z)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "mediaStoreId"    # J
    .param p4, "type"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    .param p5, "isVideo"    # Z

    .prologue
    .line 439
    const-string v3, "GP_OemContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSpecialTypeToDb: mediaStoreId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isVideo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-wide/16 v0, -0x1

    .line 443
    .local v0, "rowId":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "media_store_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    const-string v3, "special_type_id"

    invoke-virtual {p4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-eqz p5, :cond_0

    .line 448
    const-string v3, "video_special_type"

    const-string v4, ""

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v3, "depth_type"

    const-string v4, ""

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 112
    const-string v0, "GP_OemContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/ProviderInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p1}, Lcom/android/camera/util/AndroidContext;->initialize(Landroid/content/Context;)V

    .line 116
    iput-object p1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/google/android/apps/photos/api/signature/TrustedPartners;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/photos/api/signature/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mTrustedPartners:Lcom/google/android/apps/photos/api/signature/TrustedPartners;

    .line 120
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    .line 121
    const-string v0, "GP_OemContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Photos] mAuthority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "type/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "data/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "discover"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "discover/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "icon/#/badge"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "icon/#/interact"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "icon/#/search"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "icon/#/dialog"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "delete/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "processing"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "processing/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/icon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->EDITOR_ICON_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mEditorIconUri:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "icon/#/editor"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 149
    const-string v0, "version"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->querySpecialTypesVersion()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    invoke-direct {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->validateCallingPackage()Z

    move-result v6

    if-nez v6, :cond_0

    .line 211
    const-string v5, "GP_OemContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling by not valid package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return v4

    .line 215
    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 244
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    move-result-object v2

    .line 219
    .local v2, "helper":Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;
    invoke-virtual {v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 220
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "mediaStoreId":Ljava/lang/String;
    const-string v6, "GP_OemContentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete(),  mediaStoreId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v6, "depth_type"

    const-string v7, "media_store_id = ?"

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v4

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, "deleteCount":I
    const-string v6, "GP_OemContentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete(),  deleteCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-nez v1, :cond_1

    .line 232
    const-string v6, "video_special_type"

    const-string v7, "media_store_id = ?"

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v4

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 236
    const-string v4, "GP_OemContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete(),  video deleteCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v4, v5

    .line 242
    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 711
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 717
    const-string v3, "GP_OemContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert, uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-wide/16 v4, -0x1

    .line 719
    .local v4, "rowId":J
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    move-result-object v1

    .line 720
    .local v1, "helper":Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 721
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "depth_type"

    const-string v6, ""

    invoke-virtual {v0, v3, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 722
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "content"

    .line 723
    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mAuthority:Ljava/lang/String;

    .line 724
    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 725
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 726
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 727
    .local v2, "newUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 728
    return-object v2
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->validateCallingPackage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling by not valid package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v2, 0x0

    .line 560
    :goto_0
    return-object v2

    .line 528
    :cond_0
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFile : uri =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v2, "r"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 563
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    :pswitch_1
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOAD_BADGE_ICON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget-object v2, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 541
    :pswitch_2
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOAD_SEARCH_ICON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v2, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 545
    :pswitch_3
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOAD_INTERACT_ICON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v2, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 549
    :pswitch_4
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOAD_DIALOG_ICON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-object v2, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 553
    :pswitch_5
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_PROCESSING_METADATA_BY_ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 555
    .local v0, "mediaStoreId":J
    invoke-direct {p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->notifyProcessing(Landroid/net/Uri;)V

    .line 556
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->loadProcessingThumb(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 559
    .end local v0    # "mediaStoreId":J
    :pswitch_6
    const-string v2, "GP_OemContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOAD_EXTERNAL_EDITOR_ICON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sget-object v2, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->validateCallingPackage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const-string v1, "GP_OemContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling by not valid package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string v1, "GP_OemContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 186
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->querySpecialTypeMetadata(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->notifyProcessing(Landroid/net/Uri;)V

    .line 177
    invoke-direct {p0, v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->notifyProcessing(Landroid/net/Uri;)V

    .line 180
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->queryDiscover(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->queryDiscoverSupportedTypes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 734
    const-string v4, "GP_OemContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update, uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v3, "media_store_id=?"

    .line 736
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;

    move-result-object v1

    .line 737
    .local v1, "helper":Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 738
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "depth_type"

    invoke-virtual {v0, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 739
    .local v2, "update_count":I
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PhotosOemApiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 740
    return v2
.end method
