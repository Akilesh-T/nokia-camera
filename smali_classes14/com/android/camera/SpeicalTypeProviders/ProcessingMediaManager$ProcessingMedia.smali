.class final Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessingMedia"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final bitmapLock:Ljava/lang/Object;

.field private final mediaStoreId:J

.field private final progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final progressStatus:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;


# direct methods
.method constructor <init>(JLcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;)V
    .locals 1
    .param p1, "mediaStoreId"    # J
    .param p3, "progressStatus"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmapLock:Ljava/lang/Object;

    .line 198
    iput-wide p1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->mediaStoreId:J

    .line 199
    iput-object p3, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->progressStatus:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    .line 200
    return-void
.end method


# virtual methods
.method getBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 223
    iget-object v8, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmapLock:Ljava/lang/Object;

    monitor-enter v8

    .line 224
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 225
    const/16 v7, 0x1f4

    const/16 v9, 0x1f4

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    .line 227
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    .local v1, "canvas":Landroid/graphics/Canvas;
    const v7, -0xffff01

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 230
    iget-wide v10, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->mediaStoreId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->density:F

    .line 233
    .local v4, "textScale":F
    new-instance v2, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 234
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, -0x777778

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 239
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v3, v7, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 240
    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/lit8 v5, v7, 0x2

    .line 241
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v7, v9

    div-int/lit8 v6, v7, 0x2

    .line 243
    .local v6, "y":I
    int-to-float v7, v5

    int-to-float v9, v6

    invoke-virtual {v1, v3, v7, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "textScale":F
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v7, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    return-object v7

    .line 245
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method getMediaStoreId()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->mediaStoreId:J

    return-wide v0
.end method

.method getProgressPercentage()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method getProgressStatus()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->progressStatus:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v0}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->getIdentifier()I

    move-result v0

    return v0
.end method

.method updateProgressPercentage(I)V
    .locals 3
    .param p1, "percentage"    # I

    .prologue
    .line 211
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a percentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 215
    return-void
.end method
