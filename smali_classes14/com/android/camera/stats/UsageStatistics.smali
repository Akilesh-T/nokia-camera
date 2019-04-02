.class public Lcom/android/camera/stats/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# static fields
.field public static final NONE:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final VIEW_TIMEOUT_MILLIS:J

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/camera/stats/UsageStatistics;

.field private static sMegaPixelFormat:Ljava/text/DecimalFormat;

.field private static sRoundedMegaPixelFormat:Ljava/text/DecimalFormat;


# instance fields
.field private mCamcorderProfileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:I

.field private needOpenTestDataCollectLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/stats/UsageStatistics;->sMegaPixelFormat:Ljava/text/DecimalFormat;

    .line 52
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/stats/UsageStatistics;->sRoundedMegaPixelFormat:Ljava/text/DecimalFormat;

    .line 54
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "UsageStatistics"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/UsageStatistics;->mCamcorderProfileNames:Ljava/util/Map;

    .line 55
    iput-boolean v1, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    .line 56
    iput v1, p0, Lcom/android/camera/stats/UsageStatistics;->mCurrentMode:I

    return-void
.end method

.method private checkHasSystemFeature()Z
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.evenwell.DataCollect"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static instance()Lcom/android/camera/stats/UsageStatistics;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->sInstance:Lcom/android/camera/stats/UsageStatistics;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/camera/stats/UsageStatistics;

    invoke-direct {v0}, Lcom/android/camera/stats/UsageStatistics;-><init>()V

    sput-object v0, Lcom/android/camera/stats/UsageStatistics;->sInstance:Lcom/android/camera/stats/UsageStatistics;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/camera/stats/UsageStatistics;->sInstance:Lcom/android/camera/stats/UsageStatistics;

    return-object v0
.end method


# virtual methods
.method public backgrounded()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public beautyLevel(II)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "level"    # I

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "levelData":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v3, :cond_1

    .line 321
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send Event beautyLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    :cond_1
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v4, 0x172c

    const/16 v5, 0x1728

    invoke-static {v3, v4, v5, v2}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 324
    .end local v2    # "levelData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Fail to get beautyLevel"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 327
    .local v1, "error":Ljava/lang/Error;
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Fail to get beautyLevel"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public burstCaptureDoneEvent(ILjava/lang/String;Lcom/android/camera/exif/ExifInterface;ZZFLjava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Float;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "fileRef"    # Ljava/lang/String;
    .param p3, "exifRef"    # Lcom/android/camera/exif/ExifInterface;
    .param p4, "front"    # Z
    .param p5, "isHDR"    # Z
    .param p6, "zoom"    # F
    .param p7, "flashSetting"    # Ljava/lang/String;
    .param p8, "gridLinesOn"    # Z
    .param p9, "timerSeconds"    # Ljava/lang/Float;
    .param p10, "processingTime"    # Ljava/lang/Float;
    .param p11, "touch"    # Lcom/android/camera/ui/TouchCoordinate;
    .param p12, "volumeButtonShutter"    # Ljava/lang/Boolean;
    .param p14, "lensDistance"    # Ljava/lang/Float;
    .param p15, "activeSensorSize"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/camera/exif/ExifInterface;",
            "ZZF",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lcom/android/camera/ui/TouchCoordinate;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/stats/Camera2FaceProxy;",
            ">;",
            "Ljava/lang/Float;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p13, "faces":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/stats/Camera2FaceProxy;>;"
    return-void
.end method

.method public cameraFailure(ILjava/lang/String;II)V
    .locals 0
    .param p1, "cause"    # I
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "agentAction"    # I
    .param p4, "agentState"    # I

    .prologue
    .line 168
    return-void
.end method

.method public cameraFrameDrop(DD)V
    .locals 0
    .param p1, "deltaMs"    # D
    .param p3, "previousDeltaMs"    # D

    .prologue
    .line 133
    return-void
.end method

.method public changeScreen(ILjava/lang/Integer;)V
    .locals 0
    .param p1, "newScreen"    # I
    .param p2, "interactionCause"    # Ljava/lang/Integer;

    .prologue
    .line 171
    return-void
.end method

.method public controlUsed(I)V
    .locals 0
    .param p1, "control"    # I

    .prologue
    .line 174
    return-void
.end method

.method public faceEffectDoneEvent(Lcom/android/camera/app/AppController;ILcom/android/camera/effect/EffectChooseState;)V
    .locals 7
    .param p1, "mAppController"    # Lcom/android/camera/app/AppController;
    .param p2, "mode"    # I
    .param p3, "currentEffectType"    # Lcom/android/camera/effect/EffectChooseState;

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    :try_start_0
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "currentValue":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    if-ne p3, v4, :cond_4

    .line 354
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_sticker_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_2
    :goto_1
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "faceEffectData":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v4, :cond_3

    .line 365
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send Event faceEffectDoneEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    :cond_3
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v5, 0x172c

    const v6, 0xe74a

    invoke-static {v4, v5, v6, v3}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 371
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v3    # "faceEffectData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Fail to sendEvent faceEffectDoneEvent"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentValue":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v4, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    if-ne p3, v4, :cond_5

    .line 356
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_animoji_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 357
    :cond_5
    sget-object v4, Lcom/android/camera/effect/EffectChooseState;->LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

    if-ne p3, v4, :cond_2

    .line 358
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_portrait_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 373
    .end local v0    # "currentValue":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 374
    .local v2, "error":Ljava/lang/Error;
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Fail to sendEvent faceEffectDoneEvent"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public foregrounded(IIZZZJ)V
    .locals 0
    .param p1, "source"    # I
    .param p2, "mode"    # I
    .param p3, "isKeyguardLocked"    # Z
    .param p4, "isKeyguardSecure"    # Z
    .param p5, "startupOnCreate"    # Z
    .param p6, "controlTime"    # J

    .prologue
    .line 127
    return-void
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/stats/UsageStatistics;->mCurrentMode:I

    return v0
.end method

.method public getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;
    .locals 14
    .param p1, "pictureSizes"    # Lcom/android/camera/util/Size;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v10

    if-nez v10, :cond_0

    .line 74
    const-string v7, "0"

    .line 91
    :goto_0
    return-object v7

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/settings/ResolutionUtil;->getApproximateSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 78
    .local v0, "approximateSize":Lcom/android/camera/util/Size;
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v11

    mul-int/2addr v10, v11

    int-to-double v10, v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double v8, v10, v12

    .line 79
    .local v8, "sizeInMega":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v8, v10

    if-ltz v10, :cond_1

    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->sRoundedMegaPixelFormat:Ljava/text/DecimalFormat;

    .line 80
    .local v4, "fomator":Ljava/text/DecimalFormat;
    :goto_1
    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "megaPixels":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/settings/ResolutionUtil;->aspectRatioNumerator(Lcom/android/camera/util/Size;)I

    move-result v6

    .line 82
    .local v6, "numerator":I
    invoke-static {v0}, Lcom/android/camera/settings/ResolutionUtil;->aspectRatioDenominator(Lcom/android/camera/util/Size;)I

    move-result v1

    .line 83
    .local v1, "denominator":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "pictureResolutionData":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get current Resolution setting: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    .end local v0    # "approximateSize":Lcom/android/camera/util/Size;
    .end local v1    # "denominator":I
    .end local v4    # "fomator":Ljava/text/DecimalFormat;
    .end local v5    # "megaPixels":Ljava/lang/String;
    .end local v6    # "numerator":I
    .end local v7    # "pictureResolutionData":Ljava/lang/String;
    .end local v8    # "sizeInMega":D
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "Fail to get current Resolution"

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    const-string v7, "0"

    goto :goto_0

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "approximateSize":Lcom/android/camera/util/Size;
    .restart local v8    # "sizeInMega":D
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->sMegaPixelFormat:Ljava/text/DecimalFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 89
    .end local v0    # "approximateSize":Lcom/android/camera/util/Size;
    .end local v8    # "sizeInMega":D
    :catch_1
    move-exception v3

    .line 90
    .local v3, "error":Ljava/lang/Error;
    sget-object v10, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "Fail to get current Resolution"

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    const-string v7, "0"

    goto :goto_0
.end method

.method public googleLensEvent()V
    .locals 6

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    :goto_0
    return-void

    .line 336
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v2, :cond_1

    .line 337
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Send Event googleLensEvent"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    :cond_1
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v3, 0x172c

    const/16 v4, 0x1729

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to sendEvent googleLensEvent"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 343
    .local v1, "error":Ljava/lang/Error;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to sendEvent googleLensEvent"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    sput-object p1, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    .line 106
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "camcorderProfileNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/camera/stats/UsageStatistics;->mCamcorderProfileNames:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/util/ProductModelUtil;->getExtraVideoQualityNameMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 111
    .local v2, "nameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 112
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 113
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/camera/stats/UsageStatistics;->mCamcorderProfileNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 116
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public jankDetectionEnabled()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public liveStreamingDoneEvent(IJI)V
    .locals 6
    .param p1, "camMode"    # I
    .param p2, "videoLength"    # J
    .param p4, "platform"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    :goto_0
    return-void

    .line 302
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "liveStreamingData":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v3, :cond_1

    .line 304
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send Event liveStreamingDoneEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    :cond_1
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v4, 0x172b

    const/16 v5, 0x1727

    invoke-static {v3, v4, v5, v2}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 307
    .end local v2    # "liveStreamingData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Fail to get liveStreamingDoneEvent"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 310
    .local v1, "error":Ljava/lang/Error;
    sget-object v3, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Fail to get liveStreamingDoneEvent"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mediaInteraction(Ljava/lang/String;IIF)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "interactionType"    # I
    .param p3, "cause"    # I
    .param p4, "age"    # F

    .prologue
    .line 119
    return-void
.end method

.method public mediaView(Ljava/lang/String;JF)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "modifiedMillis"    # J
    .param p4, "zoom"    # F

    .prologue
    .line 122
    return-void
.end method

.method public photoCaptureDoneEvent(ILjava/lang/String;ZJ)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "pictureResolutionData"    # Ljava/lang/String;
    .param p3, "watermarkEnabled"    # Z
    .param p4, "takePhotoCount"    # J

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    :goto_0
    return-void

    .line 253
    :cond_0
    if-eqz p3, :cond_2

    .line 254
    :try_start_0
    const-string v3, "1"

    .line 258
    .local v3, "withWaterMark":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "takePhotoData":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v4, :cond_1

    .line 260
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send Event photoCaptureDoneEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    :cond_1
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v5, 0x172c

    const/16 v6, 0x1725

    invoke-static {v4, v5, v6, v2}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 263
    .end local v2    # "takePhotoData":Ljava/lang/String;
    .end local v3    # "withWaterMark":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Fail to get photoCaptureDoneEvent"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "withWaterMark":Ljava/lang/String;
    goto :goto_1

    .line 265
    .end local v3    # "withWaterMark":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 266
    .local v1, "error":Ljava/lang/Error;
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Fail to get photoCaptureDoneEvent"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportMemoryConsumed(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p1, "memoryData"    # Ljava/util/HashMap;
    .param p2, "reportType"    # Ljava/lang/String;

    .prologue
    .line 180
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 0
    .param p1, "currentMode"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/camera/stats/UsageStatistics;->mCurrentMode:I

    .line 97
    return-void
.end method

.method public storageWarning(J)V
    .locals 0
    .param p1, "storageSpace"    # J

    .prologue
    .line 139
    return-void
.end method

.method public switchFrontCameraResolution(Ljava/lang/String;)V
    .locals 5
    .param p1, "pictureResolutionData"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    :goto_0
    return-void

    .line 204
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v2, :cond_1

    .line 205
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Event switchFrontCameraResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    :cond_1
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v3, 0x172d

    const/16 v4, 0x1722

    invoke-static {v2, v3, v4, p1}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchFrontCameraResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 211
    .local v1, "error":Ljava/lang/Error;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchFrontCameraResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchFrontVideoResolution(Ljava/lang/String;)V
    .locals 5
    .param p1, "mVideoResolutionData"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v2, :cond_1

    .line 237
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Event switchFrontVideoResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    :cond_1
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v3, 0x172d

    const/16 v4, 0x1724

    invoke-static {v2, v3, v4, p1}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchFrontVideoResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 243
    .local v1, "error":Ljava/lang/Error;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchFrontVideoResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchRearCameraResolution(Ljava/lang/String;)V
    .locals 5
    .param p1, "pictureResolutionData"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v2, :cond_1

    .line 189
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Event switchRearCameraResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    :cond_1
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v3, 0x172d

    const/16 v4, 0x1721

    invoke-static {v2, v3, v4, p1}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchRearCameraResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "error":Ljava/lang/Error;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchRearCameraResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchRearVideoResolution(Ljava/lang/String;)V
    .locals 5
    .param p1, "mVideoResolutionData"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v2, :cond_1

    .line 221
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Event switchRearVideoResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    :cond_1
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v3, 0x172d

    const/16 v4, 0x1723

    invoke-static {v2, v3, v4, p1}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchRearVideoResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 227
    .local v1, "error":Ljava/lang/Error;
    sget-object v2, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Fail to get switchRearVideoResolution"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V
    .locals 0
    .param p1, "touch"    # Lcom/android/camera/ui/TouchCoordinate;
    .param p2, "duration"    # Ljava/lang/Float;

    .prologue
    .line 177
    return-void
.end method

.method public videoCaptureDoneEvent(IILjava/lang/String;IJ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "selectedQuality"    # I
    .param p3, "codec"    # Ljava/lang/String;
    .param p4, "frameRate"    # I
    .param p5, "vidoeLength"    # J

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/camera/stats/UsageStatistics;->checkHasSystemFeature()Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    :goto_0
    return-void

    .line 275
    :cond_0
    :try_start_0
    const-string v3, "0"

    .line 276
    .local v3, "videoResolutionData":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 277
    const/16 v4, 0x2717

    if-ne p2, v4, :cond_3

    .line 278
    const-string v3, "18:9,HD"

    .line 285
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "takeVideoData":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/camera/stats/UsageStatistics;->needOpenTestDataCollectLog:Z

    if-eqz v4, :cond_2

    .line 287
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send Event videoCaptureDoneEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    :cond_2
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->mContext:Landroid/content/Context;

    const/16 v5, 0x172b

    const/16 v6, 0x1726

    invoke-static {v4, v5, v6, v2}, Lcom/fihtdc/DataCollect/DataCollect;->sendEvent(Landroid/content/Context;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 290
    .end local v2    # "takeVideoData":Ljava/lang/String;
    .end local v3    # "videoResolutionData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Fail to get videoCaptureDoneEvent"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "videoResolutionData":Ljava/lang/String;
    :cond_3
    const/16 v4, 0x2718

    if-ne p2, v4, :cond_4

    .line 280
    :try_start_1
    const-string v3, "18:9,FHD"

    goto :goto_1

    .line 282
    :cond_4
    iget-object v4, p0, Lcom/android/camera/stats/UsageStatistics;->mCamcorderProfileNames:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "videoResolutionData":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "videoResolutionData":Ljava/lang/String;
    goto :goto_1

    .line 292
    .end local v3    # "videoResolutionData":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 293
    .local v1, "error":Ljava/lang/Error;
    sget-object v4, Lcom/android/camera/stats/UsageStatistics;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Fail to get videoCaptureDoneEvent"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public videoCaptureDoneEvent(Ljava/lang/String;JZFIIJLjava/lang/String;Z)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "durationMsec"    # J
    .param p4, "front"    # Z
    .param p5, "zoom"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "size"    # J
    .param p10, "flashSetting"    # Ljava/lang/String;
    .param p11, "gridLinesOn"    # Z

    .prologue
    .line 144
    return-void
.end method
