.class public Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "DCImageRefocusImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final OUTPUT_INDEX:I

.field private final TARGET_INPUT_SIZE:I

.field private final mBlurIntensity:I

.field private mBokehImgData:[B

.field private final mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

.field private final mCalibrationData:[B

.field private mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

.field private final mDualCamLayoutOrientation:I

.field private final mFocusPosiiton:Landroid/graphics/Point;

.field private final mHorizontalViewAngle:F

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private mOriginMainImgData:[B

.field private mReceivedImgCount:I

.field private mReceivedSlaveImgCount:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "DCIRImageEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIII[BIFILandroid/graphics/Point;)V
    .locals 4
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "imgWidth"    # I
    .param p5, "imgHeight"    # I
    .param p6, "imgFormat"    # I
    .param p7, "calibrationData"    # [B
    .param p8, "dualCamLayoutOrientation"    # I
    .param p9, "horizontalViewAngle"    # F
    .param p10, "blurIntensity"    # I
    .param p11, "focusPosiiton"    # Landroid/graphics/Point;

    .prologue
    .line 54
    const-class v0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->OUTPUT_INDEX:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedImgCount:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedSlaveImgCount:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehImgData:[B

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mOriginMainImgData:[B

    .line 55
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TARGET_INPUT_SIZE:I

    .line 57
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgWidth:I

    .line 58
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgHeight:I

    .line 59
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgFormat:I

    .line 60
    iput-object p7, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mCalibrationData:[B

    .line 61
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDualCamLayoutOrientation:I

    .line 62
    iput p9, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mHorizontalViewAngle:F

    .line 63
    iput p10, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBlurIntensity:I

    .line 64
    iput-object p11, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mFocusPosiiton:Landroid/graphics/Point;

    .line 66
    new-instance v0, Lcom/android/camera/mpo/Bokeh_Info;

    invoke-direct {v0}, Lcom/android/camera/mpo/Bokeh_Info;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    .line 67
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    float-to-long v2, p9

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mFov:J

    .line 68
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    int-to-long v2, p10

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBlurLevel:J

    .line 69
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget v1, p11, Landroid/graphics/Point;->y:I

    sub-int v1, p5, v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    .line 70
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget v1, p11, Landroid/graphics/Point;->x:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    .line 71
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const-wide/32 v2, 0x30001

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    .line 72
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mOrientation:J

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 109
    :cond_0
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 79
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    .line 100
    :cond_0
    :goto_0
    return v9

    .line 81
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgFormat:I

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct/range {v1 .. v8}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;-><init>(JJIJ)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    .line 92
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mCalibrationData:[B

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mCalibrationData:[B

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDualCamLayoutOrientation:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mHorizontalViewAngle:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->setCalibData([BIF)I

    move-result v0

    .line 94
    .local v0, "ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set CalibData ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    .end local v0    # "ret":I
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBlurIntensity:I

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->setBlurIntensity(I)I

    .line 98
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mFocusPosiiton:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mFocusPosiiton:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->setFocusPos(II)I

    .line 100
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    move v9, v1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    move v1, v9

    .line 100
    goto :goto_1
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz p3, :cond_0

    .line 134
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    if-ne p1, v0, :cond_3

    .line 135
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mOriginMainImgData:[B

    .line 136
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedImgCount:I

    .line 142
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgWidth:I

    int-to-long v2, v1

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgHeight:I

    int-to-long v4, v1

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgFormat:I

    move-object v1, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->setInputImage(Lcom/android/camera/one/CameraType;JJI[B)I

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 137
    :cond_3
    sget-object v0, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    if-ne p1, v0, :cond_2

    .line 138
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehImgData:[B

    .line 139
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedSlaveImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedSlaveImgCount:I

    goto :goto_1
.end method

.method protected processReultImageInternal()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 149
    :try_start_0
    iget-object v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v5

    .line 177
    :goto_0
    return v3

    .line 150
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedImgCount:I

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mReceivedSlaveImgCount:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TARGET_INPUT_SIZE:I

    if-ne v5, v6, :cond_2

    .line 153
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    invoke-virtual {v5}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->calcDepthMapSize()I

    move-result v1

    .line 154
    .local v1, "depthMapSize":I
    if-lez v1, :cond_1

    .line 155
    new-array v0, v1, [B

    .line 156
    .local v0, "depthMap":[B
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehImgData:[B

    invoke-virtual {v3, v5, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->doRefocus([B[BI)I

    move-result v2

    .line 157
    .local v2, "ret":I
    sget-object v3, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doRefocus ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iput-boolean v4, v3, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    .line 160
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iput-object v0, v3, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    .line 161
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehImgData:[B

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgWidth:I

    iget v7, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgHeight:I

    invoke-static {v5, v6, v7}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v5

    iput-object v5, v3, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 162
    sget-object v3, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v5, "mBokehInfo.mPrimaryData encoded"

    invoke-static {v3, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mOriginMainImgData:[B

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgWidth:I

    iget v7, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgHeight:I

    invoke-static {v5, v6, v7}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v5

    iput-object v5, v3, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    .line 164
    sget-object v3, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v5, "mBokehInfo.mSubData encoded"

    invoke-static {v3, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v3

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-interface {v3, v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V

    move v3, v4

    .line 167
    goto :goto_0

    .line 150
    .end local v0    # "depthMap":[B
    .end local v1    # "depthMapSize":I
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 169
    .restart local v1    # "depthMapSize":I
    :cond_1
    sget-object v5, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "depthMapSize error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iput-boolean v3, v5, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    .line 171
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mOriginMainImgData:[B

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgWidth:I

    iget v7, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mImgHeight:I

    invoke-static {v5, v6, v7}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v5

    iput-object v5, v3, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 172
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v3

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-interface {v3, v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V

    move v3, v4

    .line 173
    goto/16 :goto_0

    .line 176
    .end local v1    # "depthMapSize":I
    :cond_2
    sget-object v4, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v5, "input image number error."

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;->release()V

    .line 120
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mDCIREngine:Lcom/thirdparty/arcsoft/ArcsoftDCImageRefocus;

    .line 123
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mOriginMainImgData:[B

    .line 124
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;->mBokehImgData:[B

    .line 125
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
