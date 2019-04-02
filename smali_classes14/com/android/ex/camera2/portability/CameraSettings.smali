.class public abstract Lcom/android/ex/camera2/portability/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    }
.end annotation


# static fields
.field public static final MAX_BEAUTY_FLAWLESS:I = 0x14

.field public static final MAX_BEAUTY_VALUE:I = 0xc7

.field public static final MAX_BOKEH_VALUE:I = 0x64

.field private static final MAX_JPEG_COMPRESSION_QUALITY:I = 0x64

.field public static final MIN_BEAUTY_FLAWLESS:I = 0x0

.field public static final MIN_BEAUTY_VALUE:I = 0x0

.field public static final MIN_BOKEH_VALUE:I = 0x0

.field private static final MIN_JPEG_COMPRESSION_QUALITY:I = 0x1

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field protected mAutoExposureLocked:Z

.field protected mAutoHDRSupported:Z

.field protected mAutoWhiteBalanceLocked:Z

.field protected mBeautySupported:Z

.field protected mBokehMPOSupported:Z

.field protected mBokehSupported:Z

.field protected mCDSEnabled:Z

.field protected mCDSSupported:Z

.field protected mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field protected mCurrentBeautyFlawlessLevel:I

.field protected mCurrentBeautySkinValue:I

.field protected mCurrentBeautyWhiteValue:I

.field protected mCurrentBokehBlurValue:I

.field protected mCurrentBokehMPOMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

.field protected mCurrentBokehMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

.field protected mCurrentExposureTime:D

.field protected mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field protected mCurrentFlipMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

.field protected mCurrentFocusDiopter:D

.field protected mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field protected mCurrentFocusScale:I

.field protected mCurrentHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

.field protected mCurrentISO:I

.field protected mCurrentPhotoFormat:I

.field protected mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

.field private mCurrentPreviewFormat:I

.field protected mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

.field protected mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field protected mCurrentWBBGain:D

.field protected mCurrentWBCCT:I

.field protected mCurrentWBGGain:D

.field protected mCurrentWBRGain:D

.field protected mCurrentZoomRatio:F

.field protected mCusPreviewMaxFPSEnable:Z

.field protected mCusPreviewMaxFPSSetSupported:Z

.field protected mCustomizePipFPSEnabled:Z

.field protected mCustomizePipFPSSupported:Z

.field protected mDISSupported:Z

.field protected mEISSupported:Z

.field protected mEnableAutoHDR:Z

.field protected mEnableBeauty:Z

.field protected mEnableDIS:Z

.field protected mEnableEIS:Z

.field protected mEnableLongShot:Z

.field protected mEnableOptiZoom:Z

.field protected mEnableZSL:Z

.field protected mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

.field protected mExposureCompensationIndex:I

.field protected mFlipModeSupported:Z

.field protected final mFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final mGeneralSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

.field protected mHDR1XSupported:Z

.field protected mHFRSupported:Z

.field protected mHWRotateSupported:Z

.field protected mJpegCompressQuality:B

.field protected mLongShotSupported:Z

.field protected mManualExposureMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

.field protected mManualExposureSupported:Z

.field protected mManualFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

.field protected mManualFocusSupported:Z

.field protected mManualWBMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

.field protected mManualWBSupported:Z

.field protected final mMeteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field protected mOptiZoomSupported:Z

.field protected mPreviewFpsRangeMax:I

.field protected mPreviewFpsRangeMin:I

.field protected mPreviewFrameRate:I

.field protected mRecordingHintEnabled:Z

.field protected mSelfieBokeh:Z

.field protected mSizesLocked:Z

.field protected mSurroundSoundSupported:Z

.field protected mTouchAfAecEnabled:Z

.field protected mTouchAfAecSupported:Z

.field protected mVideoStabilizationEnabled:Z

.field protected mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field protected mZSLSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamSet"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHFRSupported:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFlipModeSupported:Z

    .line 79
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 84
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableZSL:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoHDRSupported:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableAutoHDR:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBeautySupported:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableBeauty:Z

    .line 93
    iput v2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautySkinValue:I

    .line 94
    iput v2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyWhiteValue:I

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyFlawlessLevel:I

    .line 97
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mOptiZoomSupported:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableOptiZoom:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mLongShotSupported:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableLongShot:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHWRotateSupported:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusSupported:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureSupported:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBSupported:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSurroundSoundSupported:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mDISSupported:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableDIS:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEISSupported:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableEIS:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSSupported:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSEnabled:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSSetSupported:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSEnable:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHDR1XSupported:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSSupported:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSEnabled:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecSupported:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecEnabled:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehSupported:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehMPOSupported:Z

    .line 141
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehBlurValue:I

    .line 142
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSelfieBokeh:Z

    .line 547
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 548
    return-void
.end method

.method protected constructor <init>(Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 4
    .param p1, "src"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x32

    const/4 v3, 0x0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    .line 59
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHFRSupported:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFlipModeSupported:Z

    .line 79
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 84
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableZSL:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoHDRSupported:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableAutoHDR:Z

    .line 90
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBeautySupported:Z

    .line 91
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableBeauty:Z

    .line 93
    iput v2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautySkinValue:I

    .line 94
    iput v2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyWhiteValue:I

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyFlawlessLevel:I

    .line 97
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mOptiZoomSupported:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableOptiZoom:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mLongShotSupported:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableLongShot:Z

    .line 103
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHWRotateSupported:Z

    .line 104
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusSupported:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureSupported:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBSupported:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSurroundSoundSupported:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mDISSupported:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableDIS:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEISSupported:Z

    .line 125
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableEIS:Z

    .line 126
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSSupported:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSEnabled:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSSetSupported:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSEnable:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHDR1XSupported:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSSupported:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSEnabled:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecSupported:Z

    .line 135
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecEnabled:Z

    .line 137
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehSupported:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehMPOSupported:Z

    .line 141
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehBlurValue:I

    .line 142
    iput-boolean v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSelfieBokeh:Z

    .line 557
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 558
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 559
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 560
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    .line 561
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 562
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 563
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 564
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 566
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    .line 567
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 569
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 570
    iget-byte v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    iput-byte v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    .line 571
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    .line 572
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    .line 573
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    .line 574
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 575
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 576
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 577
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 578
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .line 579
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .line 580
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .line 581
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    .line 582
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    .line 583
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    .line 584
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    .line 585
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    .line 586
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 587
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 588
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 589
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableZSL:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableZSL:Z

    .line 590
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    .line 591
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableAutoHDR:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableAutoHDR:Z

    .line 592
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoHDRSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoHDRSupported:Z

    .line 593
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mBeautySupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBeautySupported:Z

    .line 594
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableBeauty:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableBeauty:Z

    .line 595
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautySkinValue:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautySkinValue:I

    .line 596
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyWhiteValue:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyWhiteValue:I

    .line 597
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyFlawlessLevel:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyFlawlessLevel:I

    .line 598
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mOptiZoomSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mOptiZoomSupported:Z

    .line 599
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableOptiZoom:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableOptiZoom:Z

    .line 600
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mLongShotSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mLongShotSupported:Z

    .line 601
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableLongShot:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableLongShot:Z

    .line 602
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mHWRotateSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHWRotateSupported:Z

    .line 603
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusSupported:Z

    .line 604
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureSupported:Z

    .line 605
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBSupported:Z

    .line 606
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusScale:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusScale:I

    .line 607
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusDiopter:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusDiopter:D

    .line 608
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentExposureTime:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentExposureTime:D

    .line 609
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentISO:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentISO:I

    .line 610
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBRGain:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBRGain:D

    .line 611
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBBGain:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBBGain:D

    .line 612
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBGGain:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBGGain:D

    .line 613
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBCCT:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBCCT:I

    .line 614
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mSurroundSoundSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSurroundSoundSupported:Z

    .line 615
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mDISSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mDISSupported:Z

    .line 616
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableDIS:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableDIS:Z

    .line 617
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEISSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEISSupported:Z

    .line 618
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableEIS:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableEIS:Z

    .line 619
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSSupported:Z

    .line 620
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSEnabled:Z

    .line 621
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSSetSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSSetSupported:Z

    .line 622
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSEnable:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSEnable:Z

    .line 623
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 624
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mHDR1XSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHDR1XSupported:Z

    .line 625
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSSupported:Z

    .line 626
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSEnabled:Z

    .line 627
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecSupported:Z

    .line 628
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecEnabled:Z

    .line 629
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehSupported:Z

    .line 630
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehMPOSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehMPOSupported:Z

    .line 631
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    .line 632
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMPOMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMPOMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    .line 633
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehBlurValue:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehBlurValue:I

    .line 634
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mHFRSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHFRSupported:Z

    .line 635
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mSelfieBokeh:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSelfieBokeh:Z

    .line 636
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mFlipModeSupported:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFlipModeSupported:Z

    .line 637
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlipMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlipMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .line 638
    return-void

    .line 564
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v2}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    goto/16 :goto_0

    .line 567
    :cond_1
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v1, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public abstract applyCaptureSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Lcom/android/ex/camera2/portability/CameraCapabilities;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract applyPreviewSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Lcom/android/ex/camera2/portability/CameraCapabilities;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public clearGpsData()V
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    .line 1066
    return-void
.end method

.method public abstract copy()Lcom/android/ex/camera2/portability/CameraSettings;
.end method

.method public getAndSetForCaptureOnlyOnce()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 162
    :cond_0
    return v0
.end method

.method public getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object v0
.end method

.method public getCurrentBeautySkin()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautySkinValue:I

    return v0
.end method

.method public getCurrentBeautyWhite()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyWhiteValue:I

    return v0
.end method

.method public getCurrentBokehBlurValue()I
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehBlurValue:I

    return v0
.end method

.method public getCurrentBokehMPOMode()Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMPOMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    return-object v0
.end method

.method public getCurrentBokehMode()Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    return-object v0
.end method

.method public getCurrentExposureTime()D
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentExposureTime:D

    return-wide v0
.end method

.method public getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0
.end method

.method public getCurrentFlawlessLevel()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyFlawlessLevel:I

    return v0
.end method

.method public getCurrentFlipMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlipMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    return-object v0
.end method

.method public getCurrentFocusDiopter()D
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusDiopter:D

    return-wide v0
.end method

.method public getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object v0
.end method

.method public getCurrentFocusScale()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusScale:I

    return v0
.end method

.method public getCurrentHFR()Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    return-object v0
.end method

.method public getCurrentISO()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentISO:I

    return v0
.end method

.method public getCurrentPhotoFormat()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    return v0
.end method

.method public getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .prologue
    .line 775
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public getCurrentPicSizeToParamStrings()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1139
    const-string v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPreviewFormat()I
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    return v0
.end method

.method public getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .prologue
    .line 734
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method

.method public getCurrentWBBGain()D
    .locals 2

    .prologue
    .line 360
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBBGain:D

    return-wide v0
.end method

.method public getCurrentWBCCT()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBCCT:I

    return v0
.end method

.method public getCurrentWBGGain()D
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBGGain:D

    return-wide v0
.end method

.method public getCurrentWBRGain()D
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBRGain:D

    return-wide v0
.end method

.method public getCurrentZoomRatio()F
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    return v0
.end method

.method public getExifThumbnailSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    goto :goto_0
.end method

.method public getExposureCompensationIndex()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getGpsData()Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;-><init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V

    goto :goto_0
.end method

.method public getManualExposureMode()Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    return-object v0
.end method

.method public getManualFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    return-object v0
.end method

.method public getManualWBMode()Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    return-object v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method

.method public getPhotoJpegCompressionQuality()I
    .locals 1

    .prologue
    .line 857
    iget-byte v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    return v0
.end method

.method public getPreviewFpsRangeMax()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    return v0
.end method

.method public getPreviewFpsRangeMin()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    return v0
.end method

.method public getPreviewFrameRate()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    return v0
.end method

.method public getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object v0
.end method

.method public isAutoExposureLocked()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    return v0
.end method

.method public isAutoHDREnabled()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableAutoHDR:Z

    return v0
.end method

.method protected isAutoHDRSupported()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoHDRSupported:Z

    return v0
.end method

.method public isAutoWhiteBalanceLocked()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    return v0
.end method

.method public isBeautyEnabled()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableBeauty:Z

    return v0
.end method

.method protected isBeautySupported()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBeautySupported:Z

    return v0
.end method

.method public isBokehMPOSupported()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehMPOSupported:Z

    return v0
.end method

.method public isBokehSupported()Z
    .locals 1

    .prologue
    .line 1127
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehSupported:Z

    return v0
.end method

.method public isCDSEnabled()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSEnabled:Z

    return v0
.end method

.method protected isCDSSupported()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSSupported:Z

    return v0
.end method

.method public isCusPreviewMaxFPSEnable()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSEnable:Z

    return v0
.end method

.method public isCustomizePipFpsEnable()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSEnabled:Z

    return v0
.end method

.method public isDISEnabled()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableDIS:Z

    return v0
.end method

.method protected isDISSupported()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mDISSupported:Z

    return v0
.end method

.method public isEISEnabled()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableEIS:Z

    return v0
.end method

.method protected isEISSupported()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEISSupported:Z

    return v0
.end method

.method protected isHDR1XSupported()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHDR1XSupported:Z

    return v0
.end method

.method protected isHFRSupported()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHFRSupported:Z

    return v0
.end method

.method protected isHWRotateSupported()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHWRotateSupported:Z

    return v0
.end method

.method public isLongShotEnabled()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableLongShot:Z

    return v0
.end method

.method protected isLongShotSupported()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mLongShotSupported:Z

    return v0
.end method

.method protected isManualExposureSupported()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureSupported:Z

    return v0
.end method

.method protected isManualFocusSupported()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusSupported:Z

    return v0
.end method

.method protected isManualWBSupported()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBSupported:Z

    return v0
.end method

.method public isOptiZoomEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableOptiZoom:Z

    return v0
.end method

.method protected isOptiZoomSupported()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mOptiZoomSupported:Z

    return v0
.end method

.method public isRecordingHintEnabled()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    return v0
.end method

.method public isSelfieBokeh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSelfieBokeh:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected isSurroundSoundSupported()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSurroundSoundSupported:Z

    return v0
.end method

.method public isTouchAfAecEnabled()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecEnabled:Z

    return v0
.end method

.method protected isTouchAfAecSupported()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecSupported:Z

    return v0
.end method

.method public isVideoStabilizationEnabled()Z
    .locals 1

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    return v0
.end method

.method public isZSLEnabled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableZSL:Z

    return v0
.end method

.method protected isZSLSupported()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    return v0
.end method

.method public setAutoExposureLock(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    .line 896
    return-void
.end method

.method protected setAutoHDRSupported(Z)V
    .locals 0
    .param p1, "autoHDRSupported"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoHDRSupported:Z

    .line 197
    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 1013
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    .line 1014
    return-void
.end method

.method public setBeautyFlawlessLevel(I)V
    .locals 1
    .param p1, "flawlessLevel"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 240
    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 241
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyFlawlessLevel:I

    .line 242
    return-void
.end method

.method public setBeautySkin(I)V
    .locals 1
    .param p1, "skinValue"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 220
    const/16 v0, 0xc7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 221
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautySkinValue:I

    .line 222
    return-void
.end method

.method protected setBeautySupported(Z)V
    .locals 0
    .param p1, "beautySupported"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBeautySupported:Z

    .line 205
    return-void
.end method

.method public setBeautyWhite(I)V
    .locals 1
    .param p1, "whiteValue"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 230
    const/16 v0, 0xc7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 231
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBeautyWhiteValue:I

    .line 232
    return-void
.end method

.method public setBokehMPOMode(Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;)V
    .locals 1
    .param p1, "bokehMPOMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehMPOSupported:Z

    if-nez v0, :cond_0

    .line 1104
    :goto_0
    return-void

    .line 1103
    :cond_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMPOMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    goto :goto_0
.end method

.method public setBokehMPOSupported(Z)V
    .locals 0
    .param p1, "bokehMPOSupported"    # Z

    .prologue
    .line 1093
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehMPOSupported:Z

    .line 1094
    return-void
.end method

.method public setBokehMode(Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;)V
    .locals 1
    .param p1, "bokehMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehSupported:Z

    if-nez v0, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1098
    :cond_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehMode:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    goto :goto_0
.end method

.method public setBokehSupported(Z)V
    .locals 0
    .param p1, "bokehSupported"    # Z

    .prologue
    .line 1089
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBokehSupported:Z

    .line 1090
    return-void
.end method

.method public setCDSEnabled(Z)V
    .locals 1
    .param p1, "cdsEnabled"    # Z

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSEnabled:Z

    .line 464
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setCDSSupported(Z)V
    .locals 0
    .param p1, "cdsSupported"    # Z

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCDSSupported:Z

    .line 456
    return-void
.end method

.method public setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V
    .locals 0
    .param p1, "intent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 148
    return-void
.end method

.method public setCurrentBokehBlurValue(I)V
    .locals 0
    .param p1, "blurValue"    # I

    .prologue
    .line 1107
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentBokehBlurValue:I

    .line 1108
    return-void
.end method

.method public setCurrentExposureTime(D)V
    .locals 1
    .param p1, "currentExposureTime"    # D

    .prologue
    .line 336
    iput-wide p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentExposureTime:D

    .line 337
    return-void
.end method

.method public setCurrentFocusDiopter(D)V
    .locals 1
    .param p1, "currentFocusDiopter"    # D

    .prologue
    .line 328
    iput-wide p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusDiopter:D

    .line 329
    return-void
.end method

.method public setCurrentFocusScale(I)V
    .locals 0
    .param p1, "currentFocusScale"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusScale:I

    .line 321
    return-void
.end method

.method public setCurrentISO(I)V
    .locals 0
    .param p1, "currentISO"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentISO:I

    .line 345
    return-void
.end method

.method public setCurrentWBBGain(D)V
    .locals 1
    .param p1, "currentWBBGain"    # D

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBBGain:D

    .line 357
    return-void
.end method

.method public setCurrentWBCCT(I)V
    .locals 0
    .param p1, "currentWBCCT"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBCCT:I

    .line 378
    return-void
.end method

.method public setCurrentWBGGain(D)V
    .locals 1
    .param p1, "currentWBGGain"    # D

    .prologue
    .line 364
    iput-wide p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBGGain:D

    .line 365
    return-void
.end method

.method public setCurrentWBRGain(D)V
    .locals 1
    .param p1, "currentWBRGain"    # D

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentWBRGain:D

    .line 349
    return-void
.end method

.method public setCusPreviewMaxFPSSetSupported(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSSetSupported:Z

    .line 435
    return-void
.end method

.method public setCustomizePipFPSSupported(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSSupported:Z

    .line 423
    return-void
.end method

.method protected setDISSupported(Z)V
    .locals 0
    .param p1, "disSupported"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mDISSupported:Z

    .line 391
    return-void
.end method

.method protected setEISSupported(Z)V
    .locals 0
    .param p1, "eisSupported"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEISSupported:Z

    .line 407
    return-void
.end method

.method public setEnableAutoHDR(Z)V
    .locals 1
    .param p1, "enableAutoHDR"    # Z

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoHDRSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableAutoHDR:Z

    .line 189
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableBeauty(Z)V
    .locals 1
    .param p1, "enableBeauty"    # Z

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mBeautySupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableBeauty:Z

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableCusPreviewMaxFPSEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSSetSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCusPreviewMaxFPSEnable:Z

    .line 439
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableCustomizePipFps(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCustomizePipFPSEnabled:Z

    .line 427
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableDIS(Z)V
    .locals 1
    .param p1, "enableDIS"    # Z

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mDISSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableDIS:Z

    .line 399
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableEIS(Z)V
    .locals 1
    .param p1, "enableEIS"    # Z

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEISSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableEIS:Z

    .line 415
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableLongShot(Z)V
    .locals 1
    .param p1, "enableLongShot"    # Z

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mLongShotSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableLongShot:Z

    .line 274
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableOptiZoom(Z)V
    .locals 1
    .param p1, "enableOptiZoom"    # Z

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mOptiZoomSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableOptiZoom:Z

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableZSL(Z)V
    .locals 1
    .param p1, "enableZSL"    # Z

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mEnableZSL:Z

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExifThumbnailSize(Lcom/android/ex/camera2/portability/Size;)V
    .locals 0
    .param p1, "s"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 1077
    return-void
.end method

.method public setExposureCompensationIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 884
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    .line 885
    return-void
.end method

.method public setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V
    .locals 0
    .param p1, "flashMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 929
    return-void
.end method

.method public setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V
    .locals 1
    .param p1, "flipmode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFlipModeSupported:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlipMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    goto :goto_0
.end method

.method protected setFlipModeSupported(Z)V
    .locals 0
    .param p1, "flipmodeSupported"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFlipModeSupported:Z

    .line 498
    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 957
    .local p1, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 958
    if-eqz p1, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 961
    :cond_0
    return-void
.end method

.method public setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 0
    .param p1, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 939
    return-void
.end method

.method public setForCaptureOnlyOnce()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mForCaptureOnlyOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public setGpsData(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    .prologue
    .line 1057
    new-instance v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;-><init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    .line 1058
    return-void
.end method

.method protected setHDR1XSupported(Z)V
    .locals 0
    .param p1, "hdr1XSupported"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHDR1XSupported:Z

    .line 448
    return-void
.end method

.method public setHFR(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)V
    .locals 1
    .param p1, "hfr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHFRSupported:Z

    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 801
    :cond_0
    if-nez p1, :cond_1

    .line 802
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    goto :goto_0

    .line 804
    :cond_1
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    goto :goto_0
.end method

.method protected setHFRSupported(Z)V
    .locals 0
    .param p1, "hfrSupported"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHFRSupported:Z

    .line 490
    return-void
.end method

.method protected setHWRotateSupported(Z)V
    .locals 0
    .param p1, "hwRotateSupported"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mHWRotateSupported:Z

    .line 283
    return-void
.end method

.method protected setLongShotSupported(Z)V
    .locals 0
    .param p1, "longShotSupported"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mLongShotSupported:Z

    .line 266
    return-void
.end method

.method public setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V
    .locals 1
    .param p1, "manualExposureMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureSupported:Z

    if-nez v0, :cond_0

    .line 981
    :goto_0
    return-void

    .line 980
    :cond_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    goto :goto_0
.end method

.method protected setManualExposureSupported(Z)V
    .locals 0
    .param p1, "manualExposureSupported"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualExposureSupported:Z

    .line 301
    return-void
.end method

.method public setManualFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)V
    .locals 1
    .param p1, "manualFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusSupported:Z

    if-nez v0, :cond_0

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    goto :goto_0
.end method

.method protected setManualFocusSupported(Z)V
    .locals 0
    .param p1, "manualFocusSupported"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualFocusSupported:Z

    .line 292
    return-void
.end method

.method public setManualWBMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)V
    .locals 1
    .param p1, "manualWBMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBSupported:Z

    if-nez v0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 985
    :cond_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBMode:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    goto :goto_0
.end method

.method protected setManualWBSupported(Z)V
    .locals 0
    .param p1, "manualWBSupported"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mManualWBSupported:Z

    .line 309
    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 912
    if-eqz p1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 915
    :cond_0
    return-void
.end method

.method public setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V
    .locals 0
    .param p1, "meteringMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringMode:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 1006
    return-void
.end method

.method protected setOptiZoomSupported(Z)V
    .locals 0
    .param p1, "optiZoomSupported"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mOptiZoomSupported:Z

    .line 250
    return-void
.end method

.method public setPhotoFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 831
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    .line 832
    return-void
.end method

.method public setPhotoJpegCompressionQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 848
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 849
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Ignoring JPEG quality that falls outside the expected range"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 854
    :goto_0
    return-void

    .line 853
    :cond_1
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    goto :goto_0
.end method

.method public setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z
    .locals 2
    .param p1, "photoSize"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    if-eqz v0, :cond_0

    .line 791
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Attempt to change photo size while locked"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 792
    const/4 v0, 0x0

    .line 796
    :goto_0
    return v0

    .line 795
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 796
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPreviewFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 758
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    .line 759
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 688
    if-le p1, p2, :cond_0

    .line 689
    move v0, p2

    .line 690
    .local v0, "temp":I
    move p2, p1

    .line 691
    move p1, v0

    .line 693
    .end local v0    # "temp":I
    :cond_0
    iput p2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 694
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 695
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 696
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .prologue
    .line 719
    if-lez p1, :cond_0

    .line 720
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 721
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 722
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 724
    :cond_0
    return-void
.end method

.method public setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z
    .locals 2
    .param p1, "previewSize"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    if-eqz v0, :cond_0

    .line 743
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Attempt to change preview size while locked"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x0

    .line 748
    :goto_0
    return v0

    .line 747
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 748
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRecordingHintEnabled(Z)V
    .locals 0
    .param p1, "hintEnabled"    # Z

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    .line 1050
    return-void
.end method

.method public setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V
    .locals 0
    .param p1, "sceneMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 1036
    return-void
.end method

.method public setSelfieBokeh(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1111
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSelfieBokeh:Z

    .line 1112
    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-void
.end method

.method setSizesLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    .line 676
    return-void
.end method

.method protected setSurroundSoundSupported(Z)V
    .locals 0
    .param p1, "surroundSoundSupported"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSurroundSoundSupported:Z

    .line 382
    return-void
.end method

.method public setTouchAfAecEnabled(Z)V
    .locals 1
    .param p1, "touchAfAecEnabled"    # Z

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecEnabled:Z

    .line 482
    return-void

    .line 481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setTouchAfAecSupported(Z)V
    .locals 0
    .param p1, "touchAfAecSupported"    # Z

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mTouchAfAecSupported:Z

    .line 474
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1041
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    .line 1042
    return-void
.end method

.method public setWhiteBalance(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)V
    .locals 0
    .param p1, "whiteBalance"    # Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 971
    return-void
.end method

.method protected setZSLSupported(Z)V
    .locals 3
    .param p1, "zslSupported"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    .line 176
    const-string v1, "persist.camera.raw_yuv"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "dump_raw":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    sget-object v1, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "persist.camera.raw_yuv set, disable ZSL."

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mZSLSupported:Z

    .line 181
    :cond_0
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 878
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    .line 879
    return-void
.end method
