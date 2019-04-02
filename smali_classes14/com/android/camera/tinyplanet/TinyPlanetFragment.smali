.class public Lcom/android/camera/tinyplanet/TinyPlanetFragment;
.super Landroid/app/DialogFragment;
.source "TinyPlanetFragment.java"

# interfaces
.implements Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
    }
.end annotation


# static fields
.field public static final ARGUMENT_TITLE:Ljava/lang/String; = "title"

.field public static final ARGUMENT_URI:Ljava/lang/String; = "uri"

.field public static final CROPPED_AREA_FULL_PANO_HEIGHT_PIXELS:Ljava/lang/String; = "FullPanoHeightPixels"

.field public static final CROPPED_AREA_FULL_PANO_WIDTH_PIXELS:Ljava/lang/String; = "FullPanoWidthPixels"

.field public static final CROPPED_AREA_IMAGE_HEIGHT_PIXELS:Ljava/lang/String; = "CroppedAreaImageHeightPixels"

.field public static final CROPPED_AREA_IMAGE_WIDTH_PIXELS:Ljava/lang/String; = "CroppedAreaImageWidthPixels"

.field public static final CROPPED_AREA_LEFT:Ljava/lang/String; = "CroppedAreaLeftPixels"

.field public static final CROPPED_AREA_TOP:Ljava/lang/String; = "CroppedAreaTopPixels"

.field private static final FILENAME_PREFIX:Ljava/lang/String; = "TINYPLANET_"

.field public static final GOOGLE_PANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final RENDER_DELAY_MILLIS:I = 0x32

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

.field private mCurrentAngle:F

.field private mCurrentZoom:F

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mOriginalTitle:Ljava/lang/String;

.field private mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

.field private mPreviewSizePx:I

.field private mRenderOneMore:Ljava/lang/Boolean;

.field private mRendering:Ljava/lang/Boolean;

.field private mResultBitmap:Landroid/graphics/Bitmap;

.field private final mResultLock:Ljava/util/concurrent/locks/Lock;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceImageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TinyPlanetActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 94
    iput v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    .line 95
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    .line 103
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mOriginalTitle:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    .line 122
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    .line 139
    new-instance v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onZoomChange(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onAngleChange(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onCreateTinyPlanet()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createFinalTinyPlanet()Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mOriginalTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetPreview;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->scheduleUpdate()V

    return-void
.end method

.method private addExif([B)[B
    .locals 7
    .param p1, "jpeg"    # [B

    .prologue
    .line 384
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 385
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 386
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 385
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 387
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 389
    .local v2, "jpegOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v1, p1, v2}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not write EXIF"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createFinalTinyPlanet()Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
    .locals 8

    .prologue
    .line 344
    iget-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 346
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 347
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    .line 348
    iget-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    iget-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 355
    iget-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceImageUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createPaddedSourceImage(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    .local v0, "sourceBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 357
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 359
    .local v2, "height":I
    div-int/lit8 v4, v1, 0x2

    .line 360
    .local v4, "outputSize":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 363
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    iget v6, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    invoke-static/range {v0 .. v6}, Lcom/android/camera/tinyplanet/TinyPlanetNative;->process(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V

    .line 368
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    const/4 v0, 0x0

    .line 371
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    .local v7, "jpeg":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 373
    new-instance v5, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->addExif([B)[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;-><init>([BI)V

    return-object v5

    .line 351
    .end local v0    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "outputSize":I
    .end local v7    # "jpeg":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method private static createPaddedBitmap(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "bitmapIn"    # Landroid/graphics/Bitmap;
    .param p1, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p2, "intermediateWidth"    # I

    .prologue
    .line 457
    :try_start_0
    const-string v17, "CroppedAreaImageWidthPixels"

    .line 458
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v6

    .line 459
    .local v6, "croppedAreaWidth":I
    const-string v17, "CroppedAreaImageHeightPixels"

    .line 460
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v5

    .line 461
    .local v5, "croppedAreaHeight":I
    const-string v17, "FullPanoWidthPixels"

    .line 462
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v10

    .line 463
    .local v10, "fullPanoWidth":I
    const-string v17, "FullPanoHeightPixels"

    .line 464
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v9

    .line 465
    .local v9, "fullPanoHeight":I
    const-string v17, "CroppedAreaLeftPixels"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v11

    .line 466
    .local v11, "left":I
    const-string v17, "CroppedAreaTopPixels"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 468
    .local v16, "top":I
    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 495
    .end local v5    # "croppedAreaHeight":I
    .end local v6    # "croppedAreaWidth":I
    .end local v9    # "fullPanoHeight":I
    .end local v10    # "fullPanoWidth":I
    .end local v11    # "left":I
    .end local v16    # "top":I
    .end local p0    # "bitmapIn":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 473
    .restart local v5    # "croppedAreaHeight":I
    .restart local v6    # "croppedAreaWidth":I
    .restart local v9    # "fullPanoHeight":I
    .restart local v10    # "fullPanoWidth":I
    .restart local v11    # "left":I
    .restart local v16    # "top":I
    .restart local p0    # "bitmapIn":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v12, 0x0

    .line 474
    .local v12, "paddedBitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 475
    .local v15, "scale":F
    :goto_1
    if-nez v12, :cond_2

    .line 477
    int-to-float v0, v10

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    mul-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :try_start_1
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    goto :goto_1

    .line 480
    :catch_0
    move-exception v8

    .line 481
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 482
    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v15, v17

    .line 483
    goto :goto_1

    .line 485
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .local v13, "paddedCanvas":Landroid/graphics/Canvas;
    add-int v14, v11, v6

    .line 488
    .local v14, "right":I
    add-int v4, v16, v5

    .line 489
    .local v4, "bottom":I
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v0, v11

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v15

    int-to-float v0, v4

    move/from16 v20, v0

    mul-float v20, v20, v15

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 490
    .local v7, "destRect":Landroid/graphics/RectF;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 p0, v12

    .line 491
    goto :goto_0

    .line 492
    .end local v4    # "bottom":I
    .end local v5    # "croppedAreaHeight":I
    .end local v6    # "croppedAreaWidth":I
    .end local v7    # "destRect":Landroid/graphics/RectF;
    .end local v9    # "fullPanoHeight":I
    .end local v10    # "fullPanoWidth":I
    .end local v11    # "left":I
    .end local v12    # "paddedBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "paddedCanvas":Landroid/graphics/Canvas;
    .end local v14    # "right":I
    .end local v15    # "scale":F
    .end local v16    # "top":I
    :catch_1
    move-exception v17

    goto :goto_0
.end method

.method private createPaddedSourceImage(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "sourceImageUri"    # Landroid/net/Uri;
    .param p2, "previewSize"    # Z

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 263
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 264
    sget-object v4, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not create input stream for image."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->dismiss()V

    .line 267
    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 269
    .local v2, "sourceBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v3

    .line 272
    .local v3, "xmp":Lcom/adobe/xmp/XMPMeta;
    if-eqz v3, :cond_1

    .line 273
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getDisplaySize()I

    move-result v1

    .line 274
    .local v1, "size":I
    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createPaddedBitmap(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 276
    .end local v1    # "size":I
    :cond_1
    return-object v2

    .line 273
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method private getDisplaySize()I
    .locals 4

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 398
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 399
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 400
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 448
    :goto_0
    return-object v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Could not load source image."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 499
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAngleChange(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 430
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentAngle:F

    .line 431
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->scheduleUpdate()V

    .line 432
    return-void
.end method

.method private onCreateTinyPlanet()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRendering:Ljava/lang/Boolean;

    monitor-enter v2

    .line 287
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mRenderOneMore:Ljava/lang/Boolean;

    .line 288
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "savingTinyPlanet":Ljava/lang/String;
    new-instance v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    .line 334
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    return-void

    .line 288
    .end local v0    # "savingTinyPlanet":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onZoomChange(I)V
    .locals 2
    .param p1, "zoom"    # I

    .prologue
    .line 425
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCurrentZoom:F

    .line 426
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->scheduleUpdate()V

    .line 427
    return-void
.end method

.method private scheduleUpdate()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mCreateTinyPlanetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const/4 v0, 0x0

    const v1, 0x7f0a008f

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->setStyle(II)V

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    const v4, 0x7f040095

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0f0216

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    iput-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    .line 198
    iget-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreview:Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    invoke-virtual {v4, p0}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->setPreviewSizeChangeListener(Lcom/android/camera/tinyplanet/TinyPlanetPreview$PreviewSizeListener;)V

    .line 201
    const v4, 0x7f0f0217

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 202
    .local v3, "zoomSlider":Landroid/widget/SeekBar;
    new-instance v4, Lcom/android/camera/tinyplanet/TinyPlanetFragment$2;

    invoke-direct {v4, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$2;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 220
    const v4, 0x7f0f0218

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 221
    .local v0, "angleSlider":Landroid/widget/SeekBar;
    new-instance v4, Lcom/android/camera/tinyplanet/TinyPlanetFragment$3;

    invoke-direct {v4, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$3;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 238
    const v4, 0x7f0f0219

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 239
    .local v1, "createButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/camera/tinyplanet/TinyPlanetFragment$4;

    invoke-direct {v4, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$4;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mOriginalTitle:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceImageUri:Landroid/net/Uri;

    .line 248
    iget-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceImageUri:Landroid/net/Uri;

    invoke-direct {p0, v4, v6}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->createPaddedSourceImage(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 250
    iget-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 251
    sget-object v4, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not decode source image."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->dismiss()V

    .line 254
    :cond_0
    return-object v2
.end method

.method public onSizeChanged(I)V
    .locals 3
    .param p1, "sizePx"    # I

    .prologue
    .line 405
    iput p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    .line 406
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    .line 409
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    :cond_1
    iget v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    iget v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mPreviewSizePx:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 419
    invoke-direct {p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->scheduleUpdate()V

    .line 420
    return-void

    .line 417
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->mResultLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
