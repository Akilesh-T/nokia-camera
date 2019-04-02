.class public Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;
.super Landroid/content/ContentProvider;
.source "DepthTypeDBProvider.java"


# static fields
.field private static final DELETE_BY_ID:I = 0x6

.field private static final EDITOR_ACTIVITY_NAME:Ljava/lang/String; = "com.evenwell.bokeheditor.ui.activity.RefocusActivity"

.field private static EDITOR_ICON_ID:I = 0x0

.field private static final EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.evenwell.bokeheditor"

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

.field private static final TAG:Ljava/lang/String; = "CameraProvider"

.field private static final VERSION:I = 0x4

.field private static final mWhere:Ljava/lang/String; = "media_store_id=?"


# instance fields
.field private authority:Ljava/lang/String;

.field private editorIconUri:Ljava/lang/String;

.field iconResource:I

.field private mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

.field private mIsDepthType:Z

.field private mIsDualSightType:Z

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f020083

    sput v0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->EDITOR_ICON_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    .line 88
    iput-boolean v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mIsDepthType:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mIsDualSightType:Z

    .line 90
    iput v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->iconResource:I

    return-void
.end method

.method private addSpecialTypeRow([Ljava/lang/String;Landroid/database/MatrixCursor;Lcom/android/camera/SpeicalTypeProviders/SpecialType;)V
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "result"    # Landroid/database/MatrixCursor;
    .param p3, "specialType"    # Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .prologue
    const/4 v4, 0x0

    .line 234
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 235
    .local v2, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 236
    .local v1, "i":I
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, p1, v5

    .line 237
    .local v0, "column":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 244
    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 247
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 236
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 237
    :pswitch_0
    const-string v7, "special_type_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    goto :goto_1

    .line 239
    :pswitch_1
    invoke-virtual {p3}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_2

    .line 249
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 250
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch -0x35cc0146
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private loadIcon(Landroid/net/Uri;Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 460
    .local v8, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x1

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 461
    .local v11, "resourceIdString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 467
    .local v10, "resourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 468
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v4

    .line 471
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 472
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->getDimensionResourceId()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 474
    .local v9, "pixels":I
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v9, v9, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 479
    .local v6, "original":Landroid/graphics/Bitmap;
    move-object v13, v6

    .line 480
    .local v13, "result":Landroid/graphics/Bitmap;
    sget-object v14, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->DIALOG:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 481
    const/16 v14, 0x14

    new-array v5, v14, [F

    fill-array-data v5, :array_0

    .line 487
    .local v5, "matrix":[F
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 488
    .local v3, "colorSwapped":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 489
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 490
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v14, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 491
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v6, v14, v15, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 492
    move-object v13, v3

    .line 494
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "colorSwapped":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":[F
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_0
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    return-object v14

    .line 481
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
    .locals 7
    .param p1, "mediaStoreId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 557
    .line 558
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    move-result-object v2

    .line 559
    .local v2, "processingMediaManager":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->get(J)Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    move-result-object v1

    .line 560
    .local v1, "media":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    if-nez v1, :cond_0

    .line 561
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 564
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3
.end method

.method private queryDiscover(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 186
    const-string v4, "CameraProvider"

    const-string v6, "queryDiscoverSupportedTypes"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 188
    .local v2, "result":Landroid/database/MatrixCursor;
    array-length v4, p2

    new-array v3, v4, [Ljava/lang/Object;

    .line 189
    .local v3, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 190
    .local v1, "i":I
    array-length v7, p2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, p2, v6

    .line 191
    .local v0, "column":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 214
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 217
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 190
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 191
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

    .line 193
    :pswitch_0
    const-string v4, "com.evenwell.bokeheditor.providers.discovery"

    aput-object v4, v3, v1

    goto :goto_2

    .line 196
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f080332

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_2

    .line 199
    :pswitch_2
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "content"

    .line 200
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    .line 201
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v8, "icon"

    .line 202
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const v8, 0x7f020112

    .line 203
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_2

    .line 206
    :pswitch_3
    const-string v4, "1"

    aput-object v4, v3, v1

    goto :goto_2

    .line 209
    :pswitch_4
    const-string v4, "1"

    aput-object v4, v3, v1

    goto :goto_2

    .line 220
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 221
    return-object v2

    .line 191
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
    .line 179
    const-string v1, "CameraProvider"

    const-string v2, "queryDiscoverSupportedTypes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 181
    .local v0, "result":Landroid/database/MatrixCursor;
    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DUAL_SIGHT_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->addSpecialTypeRow([Ljava/lang/String;Landroid/database/MatrixCursor;Lcom/android/camera/SpeicalTypeProviders/SpecialType;)V

    .line 182
    return-object v0
.end method

.method private queryPreferredEditorData()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "editor_package_name"

    const-string v2, "com.evenwell.bokeheditor"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "editor_activity_name"

    const-string v2, "com.evenwell.bokeheditor.ui.activity.RefocusActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "editor_icon_uri"

    iget-object v2, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->editorIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object v0
.end method

.method private queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 14
    .param p1, "mediaStoreId"    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 602
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "media_store_id"

    aput-object v7, v6, v5

    const-string v7, "progress_status"

    aput-object v7, v6, v4

    const-string v7, "progress_percentage"

    aput-object v7, v6, v12

    invoke-direct {v0, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 608
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    move-result-object v2

    .line 609
    .local v2, "processingMediaManager":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;
    if-nez p1, :cond_2

    move v3, v4

    .line 610
    .local v3, "queryAll":Z
    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->getProcessingMedia()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    .line 611
    .local v1, "media":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 612
    :cond_1
    new-array v7, v13, [Ljava/lang/Object;

    .line 613
    invoke-virtual {v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    .line 614
    invoke-virtual {v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getProgressStatus()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 615
    invoke-virtual {v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->getProgressPercentage()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    .line 612
    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "media":Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    .end local v3    # "queryAll":Z
    :cond_2
    move v3, v5

    .line 609
    goto :goto_0

    .line 620
    .restart local v3    # "queryAll":Z
    :cond_3
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 621
    return-object v0
.end method

.method private querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 314
    const-string v10, "CameraProvider"

    const-string v11, "queryType"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 316
    .local v6, "mediaStoreId":J
    iget-object v10, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    invoke-virtual {v10}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 317
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, v6, v7}, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->getTypeFromDB(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    move-result-object v8

    .line 318
    .local v8, "type":Lcom/android/camera/SpeicalTypeProviders/SpecialType;
    const-string v10, "CameraProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "queryType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v10, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->UNKNOWN:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    if-ne v8, v10, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v7}, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->isImage(Landroid/content/Context;J)Z

    move-result v3

    .line 321
    .local v3, "isImage":Z
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v7}, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->isVideo(Landroid/content/Context;J)Z

    move-result v4

    .line 322
    .local v4, "isVideo":Z
    sget-object v8, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->NONE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .line 323
    const-string v10, "CameraProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isImage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v10, "CameraProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz v3, :cond_5

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v7}, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->isDepthType(Landroid/content/Context;J)Z

    move-result v1

    .line 327
    .local v1, "isDepthType":Z
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v7}, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->isDualSightType(Landroid/content/Context;J)Z

    move-result v2

    .line 328
    .local v2, "isDualSightType":Z
    if-eqz v1, :cond_4

    .line 329
    const-string v10, "CameraProvider"

    const-string v11, "Set type = SpecialType.DEPTH_TYPE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v8, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DEPTH_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .line 342
    .end local v1    # "isDepthType":Z
    .end local v2    # "isDualSightType":Z
    :cond_0
    :goto_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "media_store_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-string v10, "special_type_id"

    invoke-virtual {v8}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v10, "depth_type"

    const-string v11, ""

    invoke-virtual {v0, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 348
    .end local v3    # "isImage":Z
    .end local v4    # "isVideo":Z
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v10, "CameraProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v5, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "special_type_id"

    aput-object v12, v10, v11

    invoke-direct {v5, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 351
    .local v5, "result":Landroid/database/MatrixCursor;
    sget-object v10, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DEPTH_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    if-eq v8, v10, :cond_2

    sget-object v10, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DUAL_SIGHT_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    if-ne v8, v10, :cond_3

    .line 352
    :cond_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 355
    :cond_3
    return-object v5

    .line 331
    .end local v5    # "result":Landroid/database/MatrixCursor;
    .restart local v1    # "isDepthType":Z
    .restart local v2    # "isDualSightType":Z
    .restart local v3    # "isImage":Z
    .restart local v4    # "isVideo":Z
    :cond_4
    if-eqz v2, :cond_0

    .line 332
    const-string v10, "CameraProvider"

    const-string v11, "Set type= SpecialType.DUAL_SIGHT_TYPE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v8, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DUAL_SIGHT_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    goto :goto_0

    .line 335
    .end local v1    # "isDepthType":Z
    .end local v2    # "isDualSightType":Z
    :cond_5
    if-eqz v4, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v7}, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->isDualSightType(Landroid/content/Context;J)Z

    move-result v2

    .line 337
    .restart local v2    # "isDualSightType":Z
    if-eqz v2, :cond_0

    .line 338
    const-string v10, "CameraProvider"

    const-string v11, "Set type= SpecialType.DUAL_SIGHT_TYPE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v8, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DUAL_SIGHT_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    goto :goto_0
.end method

.method private querySpecialTypeMetadata(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 359
    const-string v6, "CameraProvider"

    const-string v8, "querySpecialTypeMetadata"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "specialTypeIdString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->valueOf(Ljava/lang/String;)Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    move-result-object v4

    .line 363
    .local v4, "specialType":Lcom/android/camera/SpeicalTypeProviders/SpecialType;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 364
    .local v2, "result":Landroid/database/MatrixCursor;
    array-length v6, p2

    new-array v3, v6, [Ljava/lang/Object;

    .line 365
    .local v3, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 366
    .local v1, "i":I
    array-length v9, p2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v0, p2, v8

    .line 367
    .local v0, "column":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 410
    const/4 v6, 0x0

    aput-object v6, v3, v1

    .line 414
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 366
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 367
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

    .line 369
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getConfiguration()Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 372
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v10, v4, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->nameResourceId:I

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 375
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v10, v4, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->descriptionResourceId:I

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 378
    :pswitch_3
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v10, "content"

    .line 379
    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v10, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    .line 380
    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v10, "icon"

    .line 381
    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget v10, v4, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->iconResourceId:I

    .line 382
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 386
    :pswitch_4
    const-string v6, "com.evenwell.bokeheditor"

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 389
    :pswitch_5
    const-string v6, "com.evenwell.bokeheditor.ui.activity.RefocusActivity"

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 393
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 396
    :pswitch_7
    invoke-virtual {v4}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getInteractActivityClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 399
    :pswitch_8
    invoke-virtual {v4}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getLaunchActivityClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 402
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 405
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const v10, 0x7f080076

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto/16 :goto_2

    .line 417
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 418
    return-object v2

    .line 367
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
    .line 625
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "version"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    return-object v0
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
    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, "exception":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 571
    .local v3, "inputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 573
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 574
    .local v0, "descriptors":[Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    aget-object v4, v0, v7

    .line 575
    .local v4, "outputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x1

    aget-object v3, v0, v7

    .line 576
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v7, 0x64

    :try_start_1
    invoke-virtual {p1, p2, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 578
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    if-eqz v3, :cond_0

    .line 585
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 592
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 579
    :cond_1
    :goto_1
    return-object v4

    .line 586
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_0

    .line 593
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 594
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_1

    .line 580
    .end local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 581
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    move-object v2, v1

    .line 583
    if-eqz v3, :cond_2

    .line 585
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 590
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 592
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 598
    :cond_3
    :goto_4
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 586
    :catch_3
    move-exception v1

    .line 587
    move-object v2, v1

    goto :goto_3

    .line 593
    :catch_4
    move-exception v1

    .line 594
    move-object v2, v1

    .line 595
    goto :goto_4

    .line 583
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_4

    .line 585
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 590
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 592
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 595
    :cond_5
    :goto_7
    throw v7

    .line 586
    :catch_5
    move-exception v1

    .line 587
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_6

    .line 593
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 594
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v1

    goto :goto_7

    .line 583
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

    .line 580
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 99
    const-string v0, "CameraProvider"

    const-string v1, "attachInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "CameraProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallingPackage() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "CameraProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 105
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "type/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "data/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "discover"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "discover/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "icon/#/badge"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "icon/#/interact"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "icon/#/search"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "icon/#/dialog"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "delete/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "processing"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "processing/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/icon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->EDITOR_ICON_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->editorIconUri:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    const-string v2, "icon/#/editor"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
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
    .line 127
    const-string v0, "version"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->querySpecialTypesVersion()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 283
    const-string v3, "CameraProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 303
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    invoke-virtual {v3}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 289
    .local v1, "mDB":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "mediaStoreId":Ljava/lang/String;
    const-string v3, "CameraProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete(),  mediaStoreId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v3, "depth_type"

    const-string v4, "media_store_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, "deleteCount":I
    const-string v3, "CameraProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete(),  deleteCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 301
    return v7

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 255
    const-string v4, "CameraProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert, uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-wide/16 v2, -0x1

    .line 258
    .local v2, "rowId":J
    iget-object v4, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    invoke-virtual {v4}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 260
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "depth_type"

    const-string v5, ""

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 261
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    .line 262
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->authority:Ljava/lang/String;

    .line 263
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 264
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 265
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, "newUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 268
    return-object v1
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    .line 310
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    const/4 v3, 0x4

    .line 425
    const-string v2, "r"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
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

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 452
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

    .line 430
    :pswitch_1
    const-string v2, "CameraProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading badge icon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->BADGE:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->loadIcon(Landroid/net/Uri;Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 450
    :goto_0
    return-object v2

    .line 433
    :pswitch_2
    const-string v2, "CameraProvider"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    const-string v2, "CameraProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading search icon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->SEARCH:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->loadIcon(Landroid/net/Uri;Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_0

    .line 438
    :pswitch_3
    const-string v2, "CameraProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading interact icon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->INTERACT:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->loadIcon(Landroid/net/Uri;Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_0

    .line 441
    :pswitch_4
    const-string v2, "CameraProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading dialog icon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->DIALOG:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->loadIcon(Landroid/net/Uri;Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_0

    .line 444
    :pswitch_5
    const-string v2, "CameraProvider"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    const-string v2, "CameraProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading processing thumb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 448
    .local v0, "mediaStoreId":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->loadProcessingThumb(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 450
    .end local v0    # "mediaStoreId":J
    :pswitch_6
    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;->EDITOR:Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->loadIcon(Landroid/net/Uri;Lcom/android/camera/SpeicalTypeProviders/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 428
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

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    invoke-virtual {v3}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 151
    .local v1, "mDB":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 152
    .local v2, "qBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v0, 0x0

    .line 153
    .local v0, "c":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 169
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "mDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "qBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 155
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "mDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "qBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    .line 174
    :goto_1
    monitor-exit p0

    return-object v3

    .line 158
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->querySpecialTypeMetadata(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 161
    :pswitch_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    .line 163
    :pswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    .line 165
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->queryDiscover(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    .line 167
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->queryDiscoverSupportedTypes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 153
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
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 273
    const-string v2, "CameraProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->mHelper:Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;

    invoke-virtual {v2}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 275
    .local v0, "mDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "depth_type"

    const-string v3, "media_store_id=?"

    invoke-virtual {v0, v2, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 276
    .local v1, "update_count":I
    invoke-virtual {p0}, Lcom/android/camera/SpeicalTypeProviders/DepthTypeDBProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 278
    return v1
.end method
