.class public Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;
.super Ljava/lang/Object;
.source "YUVImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.implements Lcom/google/common/util/concurrent/FutureCallback;
.implements Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;",
        ">;",
        "Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private final mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

.field private final mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfinite:Z

.field private mPostHandleUltraWideDC:Z

.field private final mProfile:Lcom/android/camera/stats/profiler/Profile;

.field private final mRequiredImgNum:I

.field private final mService:Ljava/util/concurrent/ExecutorService;

.field private final mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "YUVImageProcessor"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 13
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "singleImageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;
    .param p3, "listener"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .param p4, "imageEngineFactoryBase"    # Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
    .param p5, "requiredImgNum"    # I
    .param p6, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p7, "isFrontFacing"    # Z
    .param p8, "currentIso"    # I
    .param p9, "beautySetting"    # Z
    .param p10, "beautyLevel"    # I
    .param p11, "screenOrientation"    # I
    .param p12, "effectMode"    # I
    .param p13, "effectSetting"    # Ljava/lang/String;
    .param p14, "guard"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p15, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mPostHandleUltraWideDC:Z

    .line 86
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 87
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    .line 90
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    .line 92
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 93
    move/from16 v0, p5

    iput v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mRequiredImgNum:I

    .line 94
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_1

    .line 95
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    if-nez p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    const/16 v8, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move-object/from16 v9, p15

    invoke-virtual/range {v1 .. v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newHDRImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 114
    :goto_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "ImageEngine created"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 116
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    .line 117
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    .line 118
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    .line 119
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "ImageProcessor created"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 120
    return-void

    .line 95
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 96
    :cond_1
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_3

    .line 97
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    if-nez p7, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    const/16 v8, 0x11

    const/4 v10, 0x0

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v9, p8

    move-object/from16 v11, p15

    invoke-virtual/range {v1 .. v11}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newDenoiseImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIIZLandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 98
    :cond_3
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_5

    .line 99
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    if-nez p7, :cond_4

    const/4 v5, 0x1

    :goto_3
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    const/16 v8, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v9, p8

    move-object/from16 v10, p15

    invoke-virtual/range {v1 .. v10}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newNightShotImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 100
    :cond_5
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_7

    .line 101
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    if-nez p7, :cond_6

    const/4 v5, 0x1

    :goto_4
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    const/16 v8, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newBeautyImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 102
    :cond_7
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->PHOTO_UW:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_9

    .line 103
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    if-nez p7, :cond_8

    const/4 v5, 0x1

    :goto_5
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    const/16 v8, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newUltraWideImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 104
    :cond_9
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->PICSELFIE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_b

    .line 105
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    if-nez p7, :cond_a

    const/4 v5, 0x1

    :goto_6
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    const/16 v8, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newPicSelfieImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIZII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    .line 106
    :cond_b
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->MEGVII:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_c

    .line 107
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    const/16 v8, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v7, p11

    move/from16 v9, p12

    move-object/from16 v10, p13

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newMegviiImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIIILjava/lang/String;ZI)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto/16 :goto_1

    .line 108
    :cond_c
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->SR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_e

    .line 109
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    if-nez p7, :cond_d

    const/4 v5, 0x1

    :goto_7
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    const/16 v8, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v9, p8

    move-object/from16 v10, p15

    invoke-virtual/range {v1 .. v10}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newSRImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto/16 :goto_1

    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    .line 111
    :cond_e
    const/4 v1, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow capture intent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;Z)V
    .locals 1
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "singleImageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;
    .param p3, "listener"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .param p4, "imageEngineFactoryBase"    # Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
    .param p5, "requiredImgNum"    # I
    .param p6, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p7, "isFrontFacing"    # Z
    .param p8, "currentIso"    # I
    .param p9, "beautySetting"    # Z
    .param p10, "beautyLevel"    # I
    .param p11, "screenOrientation"    # I
    .param p12, "effectMode"    # I
    .param p13, "effectSetting"    # Ljava/lang/String;
    .param p14, "guard"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p15, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p16, "postHandleUltraWideDC"    # Z

    .prologue
    .line 66
    invoke-direct/range {p0 .. p15}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 69
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mPostHandleUltraWideDC:Z

    .line 70
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mInfinite:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mRequiredImgNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mPostHandleUltraWideDC:Z

    return v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "abort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "index"    # I
    .param p3, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p4, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v7, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;

    invoke-direct {v7, p0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$1;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;->convertImageAndProcess(Lcom/android/camera/one/CameraType;Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 142
    return-void
.end method

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/DualSightCamType;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_0
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :catch_0
    move-exception v0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;[B)V
    .locals 2
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "photoData"    # [B

    .prologue
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;->saveAndCloseRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 163
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 253
    :goto_0
    return-void

    .line 240
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$5;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$5;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 212
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->abort()V

    .line 214
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostImage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
    if-eqz p4, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$8;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$8;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPostProcessDone([B)V
    .locals 3
    .param p1, "jepgData"    # [B

    .prologue
    .line 350
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostProcessDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onPostProcessDone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessAbort()V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onProcessDone(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "data"    # [B

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 340
    :goto_0
    return-void

    .line 288
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 2
    .param p1, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    .line 345
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onProcessDone(Bokeh_Info bokehInfo)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 282
    :goto_0
    return-void

    .line 269
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V
    .locals 3
    .param p1, "result"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 186
    sget-object v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess : result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    if-nez p1, :cond_1

    .line 188
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "process error : get empty result."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get empty result"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->onFailure(Ljava/lang/Throwable;)V

    .line 208
    :goto_1
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$3;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$3;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 207
    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 205
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "process stop : ignore result."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    check-cast p1, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "start fail"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    monitor-exit v1

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$2;-><init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
