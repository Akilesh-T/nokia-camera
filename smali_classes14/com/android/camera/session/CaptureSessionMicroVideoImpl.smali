.class public Lcom/android/camera/session/CaptureSessionMicroVideoImpl;
.super Ljava/lang/Object;
.source "CaptureSessionMicroVideoImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBrandLogoViewData:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private mContentUri:Landroid/net/Uri;

.field private mForceHideThumbnail:Z

.field private mHasPreviouslySetProgress:Z

.field private mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mIsFinished:Z

.field private mIsImageHWRotate:Z

.field private mLocation:Landroid/location/Location;

.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private mPictureSize:Lcom/android/camera/util/Size;

.field private mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

.field private final mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

.field private mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

.field private final mProgressListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/camera/session/CaptureSession$ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressMessageId:I

.field private mProgressPercent:I

.field private mSaveImgLock:Ljava/lang/Object;

.field private mSaveRawCount:I

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStartMillis:J

.field private final mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

.field private final mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWatermarkViewData:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/watermark/WatermarkViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureSessionImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/TemporarySessionFile;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "temporarySessionFile"    # Lcom/android/camera/session/TemporarySessionFile;
    .param p6, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p7, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p8, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .param p9, "placeholderManager"    # Lcom/android/camera/session/PlaceholderManager;
    .param p10, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;
    .param p11, "previewDataRenderFactory"    # Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressListeners:Ljava/util/HashSet;

    .line 95
    iput v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressPercent:I

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveImgLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 109
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mHasPreviouslySetProgress:Z

    .line 111
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 112
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 117
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mForceHideThumbnail:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsImageHWRotate:Z

    .line 144
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    .line 145
    iput-wide p2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    .line 146
    iput-object p4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    .line 147
    iput-object p5, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    .line 148
    iput-object p6, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 149
    iput-object p7, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 150
    iput-object p8, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 151
    iput-object p9, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 152
    iput-object p10, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 153
    iput v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveRawCount:I

    .line 154
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z

    .line 155
    iput-object p11, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    .line 156
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/PlaceholderManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/SessionNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/app/MediaSaver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/TemporarySessionFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    return-object v0
.end method

.method private dealwithMicroVideo(ZIZ)Ljava/lang/String;
    .locals 22
    .param p1, "isFront"    # Z
    .param p2, "orientation"    # I
    .param p3, "isAOP"    # Z

    .prologue
    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->getVideoFrameData()Ljava/util/Collection;

    move-result-object v10

    .line 1007
    .local v10, "mQueueCacheYUV":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/opengl/capturedata/YUVData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->getSurfaceWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42800000    # 64.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4050000000000000L    # 64.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v4, v0

    .line 1008
    .local v4, "aligned64_width":I
    new-instance v16, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-object/from16 v17, v0

    .line 1009
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->getSurfaceHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->isFront()Z

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;-><init>(IIZ)V

    .line 1010
    .local v16, "videoEncoder":Lcom/android/camera/microvideo/VideoEncoderFromBuffer;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 1011
    const/4 v11, 0x0

    .line 1012
    .local v11, "totalTime":I
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1013
    .local v9, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1014
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/opengl/capturedata/YUVData;

    .line 1015
    .local v8, "firstYuvData":Lcom/android/camera/opengl/capturedata/YUVData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1016
    .local v14, "timeS":J
    invoke-virtual {v8}, Lcom/android/camera/opengl/capturedata/YUVData;->getByte()[B

    move-result-object v17

    invoke-virtual {v8}, Lcom/android/camera/opengl/capturedata/YUVData;->getPts()J

    move-result-wide v18

    invoke-virtual/range {v16 .. v19}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->encodeFrame([BJ)V

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1018
    .local v12, "timeE":J
    sub-long v6, v12, v14

    .line 1019
    .local v6, "diff":J
    sget-object v17, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "encodeFrame cost time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1020
    long-to-int v0, v6

    move/from16 v17, v0

    add-int v11, v11, v17

    .line 1021
    goto :goto_0

    .line 1022
    .end local v6    # "diff":J
    .end local v8    # "firstYuvData":Lcom/android/camera/opengl/capturedata/YUVData;
    .end local v12    # "timeE":J
    .end local v14    # "timeS":J
    :cond_0
    sget-object v17, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "encodeFrame cost time:!!!!!!!!!!!!!: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/microvideo/VideoEncoderFromBuffer;->close()Ljava/lang/String;

    move-result-object v5

    .line 1024
    .local v5, "filePath":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1025
    const/4 v5, 0x0

    .line 1034
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v11    # "totalTime":I
    :goto_1
    return-object v5

    .line 1027
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v9    # "it":Ljava/util/Iterator;
    .restart local v11    # "totalTime":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1028
    .restart local v14    # "timeS":J
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/camera/microvideo/YuvUtils;->getFinalMicroVideoFile(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v5

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1030
    .restart local v12    # "timeE":J
    sub-long v6, v12, v14

    .line 1031
    .restart local v6    # "diff":J
    sget-object v17, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rotation cost time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 1034
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "diff":J
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v11    # "totalTime":I
    .end local v12    # "timeE":J
    .end local v14    # "timeS":J
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifySessionCaptureIndicatorAvailable(Landroid/net/Uri;Landroid/graphics/Bitmap;IZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 908
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 889
    iget v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    if-lez v0, :cond_0

    .line 890
    iget v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V

    .line 892
    :cond_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressPercent:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V

    .line 893
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 894
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    .line 340
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mForceHideThumbnail:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v0, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureCanceled()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 353
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-virtual {v0}, Lcom/android/camera/brandlogo/BrandLogoViewData;->recycleBitmap()V

    .line 357
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_3
    monitor-exit p0

    return-void

    .line 340
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeSession()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 904
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z

    .line 796
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$8;

    invoke-direct {v1, p0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$8;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 829
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 6
    .param p1, "failureMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 879
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 882
    :cond_1
    iput p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    .line 883
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->putErrorMessage(Landroid/net/Uri;I)V

    .line 884
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mForceHideThumbnail:Z

    if-nez v2, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 885
    return-void

    .line 884
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getBrandLogoViewData()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 912
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressPercent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgressMessageId()I
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mForceHideThumbnail:Z

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsImageHWRotate:Z

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 1072
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 1077
    return-void
.end method

.method public prepareImageTitle()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 931
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 899
    return-void
.end method

.method public saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 16
    .param p1, "data"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/mpo/Bokeh_Info;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    if-eqz v2, :cond_5

    .line 490
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v15

    .line 492
    .local v15, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 496
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z

    .line 499
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->updateExif([B)[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 500
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->updateExif([B)[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v2, :cond_3

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    new-instance v13, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$3;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addMpoImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 548
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v2}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 550
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 556
    .end local v15    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_2
    :goto_1
    return-object v15

    .line 528
    .restart local v15    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v10, "image/jpeg"

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/mpo/Bokeh_Info;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 533
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_1

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v14

    .line 539
    .local v14, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not write file"

    invoke-static {v2, v3, v14}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 543
    :cond_4
    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->finishWithFailure(IZ)V

    .line 544
    invoke-virtual {v15, v14}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 533
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 556
    .end local v15    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v15

    goto/16 :goto_1
.end method

.method public declared-synchronized saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 15
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v14

    .line 366
    .local v14, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 370
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z

    .line 371
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_5

    .line 373
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "mWatermarkViewData availale"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 376
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "mWatermarkViewData final image merged"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 380
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v0, v2, :cond_4

    .line 381
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    new-instance v11, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$1;

    invoke-direct {v11, p0, v14}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$1;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    const-string v12, "image/jpeg"

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v12}, Lcom/android/camera/app/MediaSaver;->addDualSightImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 479
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 481
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_3
    monitor-exit p0

    return-object v14

    .line 405
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    new-instance v11, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$2;

    invoke-direct {v11, p0, v14}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$2;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v11}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    .end local v14    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 431
    .restart local v14    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_5
    :try_start_2
    iget-object v11, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "mWatermarkViewData availale"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 436
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "mWatermarkViewData final image merged"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    :cond_6
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    if-eqz v0, :cond_9

    .line 441
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->isFront()Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v2}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v3}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->isAOP()Z

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->dealwithMicroVideo(ZIZ)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "videoPath":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 443
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v9, "image/jpeg"

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholderMicroVideo(Ljava/lang/String;Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 462
    .end local v1    # "videoPath":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 464
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 466
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v13

    .line 470
    .local v13, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Could not write file"

    invoke-static {v0, v2, v13}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 474
    :cond_7
    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->finishWithFailure(IZ)V

    .line 475
    invoke-virtual {v14, v13}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 446
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v1    # "videoPath":Ljava/lang/String;
    :cond_8
    :try_start_6
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v10, "image/jpeg"

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    goto :goto_1

    .line 464
    .end local v1    # "videoPath":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 450
    :cond_9
    :try_start_8
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v10, "image/jpeg"

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1
.end method

.method public saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 19
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            "I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v18

    .line 563
    .local v18, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 564
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_1

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 567
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    .line 569
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v4, :cond_6

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 573
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "mWatermarkViewData availale"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v4 .. v9}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 575
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "mWatermarkViewData final image merged"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v6, :cond_5

    .line 580
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    new-instance v15, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$4;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    const-string v16, "image/jpeg"

    move-object/from16 v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {v5 .. v16}, Lcom/android/camera/app/MediaSaver;->addDualSightImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 678
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v4}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 680
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 683
    :cond_4
    return-object v18

    .line 604
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    new-instance v15, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$5;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {v5 .. v15}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    goto :goto_0

    .line 630
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 633
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "mWatermarkViewData availale"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v4 .. v9}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 635
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "mWatermarkViewData final image merged"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 639
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    if-eqz v4, :cond_a

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v4}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->isFront()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v6}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->getOrientation()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPreviewDataRenderFactory:Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    invoke-virtual {v7}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->isAOP()Z

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->dealwithMicroVideo(ZIZ)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "videoPath":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v13, "image/jpeg"

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholderMicroVideo(Ljava/lang/String;Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 661
    .end local v5    # "videoPath":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v4, v6, v7}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 663
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_3

    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 668
    :catch_0
    move-exception v17

    .line 669
    .local v17, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Could not write file"

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_8

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 673
    :cond_8
    const/4 v4, -0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->finishWithFailure(IZ)V

    .line 674
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 645
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v5    # "videoPath":Ljava/lang/String;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v14, "image/jpeg"

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p1

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v6 .. v14}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    goto :goto_1

    .line 663
    .end local v5    # "videoPath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 649
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v14, "image/jpeg"

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p1

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v6 .. v14}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    return-void
.end method

.method public savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 21
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "postProcessImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 692
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v19

    .line 694
    .local v19, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_0

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onPostProcessImage()V

    .line 698
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v4, :cond_3

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveImgLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 701
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 702
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "final image had saved, ignore here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 703
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 727
    :goto_0
    monitor-exit v20

    .line 762
    :goto_1
    return-object v19

    .line 706
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 707
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "mWatermarkViewData availale"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v4 .. v9}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 709
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "mWatermarkViewData post-process image merged"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 713
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v16, "image/fake"

    new-instance v17, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/SettableFuture;)V

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-interface/range {v5 .. v17}, Lcom/android/camera/app/MediaSaver;->updateImage(Landroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v4

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 730
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 731
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    if-eqz v4, :cond_4

    .line 732
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "final image had saved, ignore here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 753
    :goto_2
    monitor-exit v13

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 754
    :catch_0
    move-exception v18

    .line 755
    .local v18, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not write file : "

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 736
    .end local v18    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 737
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "mWatermarkViewData availale"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v4 .. v9}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 739
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "mWatermarkViewData post-process image merged"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 742
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    const-string v12, "image/fake"

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/session/PlaceholderManager;->updatePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2

    .line 749
    :cond_6
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "session had been cancel after saving PostProcessImage, delete here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mContentUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/android/camera/app/MediaSaver;->deleteImageFromMediaStore(Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 759
    :cond_7
    sget-object v4, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "session had been cancel before saving PostProcessImage, ignore here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 760
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 767
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 769
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onRawImage()V

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    if-eqz v1, :cond_1

    .line 774
    iget v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveRawCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    .line 775
    .local v3, "title":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveRawCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSaveRawCount:I

    .line 776
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    new-instance v9, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;

    invoke-direct {v9, p0, v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object v2, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v9}, Lcom/android/camera/app/MediaSaver;->addRawImage([BLjava/lang/String;JLandroid/location/Location;IILcom/android/camera/app/MediaSaver$OnRawDataSavedListener;)V

    .line 785
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 774
    :cond_2
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setBrandLogoViewData(Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 927
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 966
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 977
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mForceHideThumbnail:Z

    .line 946
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 955
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsImageHWRotate:Z

    .line 956
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 1087
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mLocation:Landroid/location/Location;

    .line 191
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 987
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 1042
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 997
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 969
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mHasPreviouslySetProgress:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingStarted()V

    .line 204
    :cond_0
    iput p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressPercent:I

    .line 205
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressPercent:I

    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgress(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 206
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 207
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    .line 219
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, p1, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgressText(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 221
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 223
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 1047
    return-void
.end method

.method public setWatermarkViewData(Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/watermark/WatermarkViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 923
    return-void
.end method

.method public declared-synchronized startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    monitor-exit p0

    return-void

    .line 260
    :cond_0
    if-eqz p1, :cond_1

    .line 261
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 262
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 265
    :cond_1
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    .line 267
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertEmptyPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 269
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    .line 270
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholder"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_0
    if-eqz p1, :cond_1

    .line 282
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 283
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 286
    :cond_1
    iput p3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    .line 287
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;Landroid/graphics/Bitmap;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 289
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    .line 290
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 323
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 324
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 325
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 328
    :cond_0
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    .line 329
    iput p3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    .line 330
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/session/PlaceholderManager;->convertToPlaceholder(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 332
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;[BI)V
    .locals 6
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholder"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    if-eqz p1, :cond_2

    .line 303
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 304
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 307
    :cond_2
    iput p3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mProgressMessageId:I

    .line 308
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTitle:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionStartMillis:J

    invoke-virtual {v1, v2, p2, v4, v5}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;[BJ)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 310
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v1, v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    .line 311
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v1, v2, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 312
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 313
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 314
    invoke-virtual {v1, v2}, Lcom/android/camera/session/PlaceholderManager;->getPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 315
    .local v0, "placeholderBitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    .end local v0    # "placeholderBitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterImageSavedListener()V
    .locals 0

    .prologue
    .line 936
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onTinyThumb()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mWatermarkViewData availale"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkThmbnail(Landroid/graphics/Bitmap;ILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 248
    sget-object v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mWatermarkViewData thumbnail merged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V

    .line 251
    return-void
.end method

.method public updatePreview()V
    .locals 3

    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    invoke-virtual {v1}, Lcom/android/camera/session/TemporarySessionFile;->isUsable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    invoke-virtual {v1}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 850
    .local v0, "path":Ljava/io/File;
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$9;-><init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 868
    .end local v0    # "path":Ljava/io/File;
    :goto_0
    return-void

    .line 847
    :cond_0
    sget-object v1, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot update preview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onMediumThumb()V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0
.end method
