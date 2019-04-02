.class public Lcom/android/camera/stats/CaptureSessionStatsCollector;
.super Ljava/lang/Object;
.source "CaptureSessionStatsCollector.java"


# instance fields
.field protected mActiveSensorSize:Landroid/graphics/Rect;

.field protected mBeautyLevel:I

.field protected mCaptureTimeMillis:J

.field protected mExifInterface:Lcom/android/camera/exif/ExifInterface;

.field protected mFaceProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/stats/Camera2FaceProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilename:Ljava/lang/String;

.field protected mFlashSetting:Ljava/lang/String;

.field protected mGridLinesOn:Ljava/lang/Boolean;

.field protected mIsBeautyOn:Ljava/lang/Boolean;

.field protected mIsFrontFacing:Ljava/lang/Boolean;

.field protected mIsHdr:Ljava/lang/Boolean;

.field protected mLensFocusDistance:Ljava/lang/Float;

.field protected mMode:Ljava/lang/Integer;

.field protected mPictureResolutionData:Ljava/lang/String;

.field protected mTakePhotoCount:J

.field protected mTimerSeconds:Ljava/lang/Float;

.field protected mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field protected final mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

.field protected mVolumeButtonShutter:Ljava/lang/Boolean;

.field protected mWatermarkEnabled:Ljava/lang/Boolean;

.field protected mZoom:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsBeautyOn:Ljava/lang/Boolean;

    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsFrontFacing:Ljava/lang/Boolean;

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsHdr:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mZoom:Ljava/lang/Float;

    .line 62
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/stats/UsageStatistics;)V
    .locals 2
    .param p1, "usageStatistics"    # Lcom/android/camera/stats/UsageStatistics;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsBeautyOn:Ljava/lang/Boolean;

    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsFrontFacing:Ljava/lang/Boolean;

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsHdr:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mZoom:Ljava/lang/Float;

    .line 70
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 71
    return-void
.end method


# virtual methods
.method public beautyLevel()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsBeautyOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-object v1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mBeautyLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->beautyLevel(II)V

    .line 169
    :cond_0
    return-void
.end method

.method public decorateAtTimeBeautyCaptureRequest(IIZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "beautyLevel"    # I
    .param p3, "isBeautyOn"    # Z

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mMode:Ljava/lang/Integer;

    .line 129
    iput p2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mBeautyLevel:I

    .line 130
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsBeautyOn:Ljava/lang/Boolean;

    .line 131
    return-void
.end method

.method public decorateAtTimeCaptureRequest(ILjava/lang/String;ZJ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "pictureResolutionData"    # Ljava/lang/String;
    .param p3, "watermarkEnabled"    # Z
    .param p4, "takePhotoCount"    # J

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mMode:Ljava/lang/Integer;

    .line 118
    iput-object p2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mPictureResolutionData:Ljava/lang/String;

    .line 119
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mWatermarkEnabled:Ljava/lang/Boolean;

    .line 120
    iput-wide p4, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mTakePhotoCount:J

    .line 121
    return-void
.end method

.method public decorateAtTimeOfCaptureRequestAvailable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 6
    .param p1, "captureResult"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    .prologue
    .line 81
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    .line 82
    .local v1, "facesCaptured":[Landroid/hardware/camera2/params/Face;
    if-nez v1, :cond_1

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mFaceProxies:Ljava/util/List;

    .line 91
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    iput-object v2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mLensFocusDistance:Ljava/lang/Float;

    .line 92
    return-void

    .line 85
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mFaceProxies:Ljava/util/List;

    .line 86
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 87
    .local v0, "face":Landroid/hardware/camera2/params/Face;
    iget-object v4, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mFaceProxies:Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/stats/Camera2FaceProxy;->from(Landroid/hardware/camera2/params/Face;)Lcom/android/camera/stats/Camera2FaceProxy;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "exifInterface"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mExifInterface:Lcom/android/camera/exif/ExifInterface;

    .line 145
    return-void
.end method

.method public getElapsedRealTime()J
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCompleteForPhotoCaptureEvent()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mExifInterface:Lcom/android/camera/exif/ExifInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsFrontFacing:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mIsHdr:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mZoom:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mFlashSetting:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mGridLinesOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mTimerSeconds:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mVolumeButtonShutter:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForPhotoCaptureEvent()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markProcessingTimeStart()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getElapsedRealTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mCaptureTimeMillis:J

    .line 152
    return-void
.end method

.method public photoCaptureDoneEvent()V
    .locals 7

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->getElapsedRealTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mCaptureTimeMillis:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 159
    .local v6, "processingTime":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->isValidForPhotoCaptureEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-object v1, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mMode:Ljava/lang/Integer;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mPictureResolutionData:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mWatermarkEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-wide v4, p0, Lcom/android/camera/stats/CaptureSessionStatsCollector;->mTakePhotoCount:J

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->photoCaptureDoneEvent(ILjava/lang/String;ZJ)V

    .line 163
    :cond_0
    return-void
.end method
