.class public Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
.super Lcom/android/ex/camera2/portability/CameraCapabilities;
.source "AndroidCameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;,
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;
    }
.end annotation


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag; = null

.field public static final ZOOM_MULTIPLIER:F = 100.0f


# instance fields
.field private mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

.field private mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamCapabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;
    .param p2, "cameraFacing"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 44
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V

    .line 40
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 41
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    .line 45
    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraFacing:I

    .line 46
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxExposureCompensation:I

    .line 47
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinExposureCompensation:I

    .line 48
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mExposureCompensationStep:F

    .line 49
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFacesSupported:I

    .line 50
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    .line 51
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    .line 52
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mHorizontalViewAngle:F

    .line 55
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mVerticalViewAngle:F

    .line 56
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPreviewSizes(Landroid/hardware/Camera$Parameters;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildVideoSizes(Landroid/hardware/Camera$Parameters;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPictureSizes(Landroid/hardware/Camera$Parameters;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildSceneModes(Landroid/hardware/Camera$Parameters;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildFlashModes(Landroid/hardware/Camera$Parameters;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildFocusModes(Landroid/hardware/Camera$Parameters;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildWhiteBalances(Landroid/hardware/Camera$Parameters;)V

    .line 64
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedISO:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildISO(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V

    .line 66
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxZoomRatio:F

    .line 68
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 81
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    if-lez v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedManualFocus:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildManualFocus(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V

    .line 91
    :cond_5
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedManualWB:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildManualWhiteBalance(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V

    .line 95
    :cond_6
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedManualExposure:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildManualExposure(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V

    .line 100
    :cond_7
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    if-lez v0, :cond_8

    .line 101
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_8
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedZSL(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedOptiZoom(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_9
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->isMetadataSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 112
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_a
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedAutoHDR(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 116
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_b
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedBeauty(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 120
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_c
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedLongShot(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_d
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedHWRaotate(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 128
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_e
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedManualFocus:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-le v0, v2, :cond_f

    .line 132
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualFocusScale(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualFocusScale:I

    .line 134
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualFocusScale(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualFocusScale:I

    .line 135
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualFocusDiopter:D

    .line 136
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualFocusDiopter:D

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedManualExposure:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-le v0, v2, :cond_10

    .line 140
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_EXPOSURE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualExposureTime(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualExposureTime:D

    .line 142
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualExposureTime(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualExposureTime:D

    .line 143
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualISO(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualISO:I

    .line 144
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualISO(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualISO:I

    .line 147
    :cond_10
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedManualWB:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-le v0, v2, :cond_11

    .line 148
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_WB:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualWBGain(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualWBGain:D

    .line 150
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualWBGain(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualWBGain:D

    .line 151
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualWBCCT(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualWBCCT:I

    .line 152
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualWBCCT(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualWBCCT:I

    .line 155
    :cond_11
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSurroundSound:Ljava/util/EnumSet;

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedSurroundSound(Ljava/util/EnumSet;Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCustomNumMic()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCustomNumMic:I

    .line 160
    :cond_12
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedDIS(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 161
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_13
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedEIS(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 165
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_14
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedPIPCustomizePreviewRate(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 169
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_PREVIEW_RATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_15
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedCustomizeMaxPreviewRateSet(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 173
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_16
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedMeteringMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedMeteringMode:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildMetering(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V

    .line 182
    :cond_17
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedManualFocus(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 183
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedManualFocus:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildManualFocus(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V

    .line 185
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualFocusScale(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualFocusScale:I

    .line 186
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualFocusScale(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualFocusScale:I

    .line 187
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMinManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinManualFocusDiopter:D

    .line 188
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getMaxManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxManualFocusDiopter:D

    .line 191
    :cond_18
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedHDR1X(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 192
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HDR_1X:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_19
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedCDS(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 196
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1a
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 200
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1b
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedBokeh(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 204
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1c
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedBokehMPO(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 208
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH_MPO:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1d
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedHFR(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 212
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HFR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildHFRMap(Ljava/util/HashMap;Landroid/hardware/Camera$Parameters;)V

    .line 216
    :cond_1e
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 217
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1f
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedPIPCustomizeSize(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 222
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getPreferredPictureSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mPreferredPictureSizeListForPIP:Ljava/util/List;

    .line 224
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getPreferredPreviewSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mPreferredPreviewSizeListForPIP:Ljava/util/List;

    .line 226
    :cond_20
    return-void
.end method

.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)V
    .locals 2
    .param p1, "src"    # Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 40
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 41
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    .line 230
    return-void
.end method

.method private buildFlashModes(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 319
    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraFacing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 321
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->isLegacyInUsed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    .local v0, "flash":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    :cond_4
    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 332
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    :cond_5
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 334
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_6
    const-string v3, "red-eye"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 336
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    :cond_7
    const-string v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private buildFocusModes(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_7

    .line 347
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    .local v0, "focus":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_0
    const-string v3, "continuous-picture"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_1
    const-string v3, "continuous-video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_2
    const-string v3, "edof"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_3
    const-string v3, "fixed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 357
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_4
    const-string v3, "infinity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_5
    const-string v3, "macro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 361
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_6
    sget-object v3, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v3, v4, v0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildExtraFocusModes(Ljava/util/EnumSet;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v0    # "focus":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private buildPictureSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 264
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 269
    return-void
.end method

.method private buildPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 234
    .local v0, "supportedPreviewFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 238
    return-void
.end method

.method private buildPreviewSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 244
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    return-void
.end method

.method private buildSceneModes(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 273
    .local v1, "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_11

    .line 274
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .local v0, "scene":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_0
    const-string v3, "action"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    const-string v3, "barcode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_2
    const-string v3, "beach"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_3
    const-string v3, "candlelight"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 284
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_4
    const-string v3, "fireworks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 286
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_5
    const-string v3, "hdr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 288
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_6
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 290
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 291
    :cond_7
    const-string v3, "night"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 292
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 293
    :cond_8
    const-string v3, "night-portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 294
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT_PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 295
    :cond_9
    const-string v3, "party"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 296
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 297
    :cond_a
    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 298
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 299
    :cond_b
    const-string v3, "snow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 300
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 301
    :cond_c
    const-string v3, "sports"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 302
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 303
    :cond_d
    const-string v3, "steadyphoto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 304
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 305
    :cond_e
    const-string v3, "sunset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 306
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 307
    :cond_f
    const-string v3, "theatre"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 308
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 310
    :cond_10
    sget-object v3, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v3, v4, v0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildExtraSceneModes(Ljava/util/EnumSet;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    .end local v0    # "scene":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method private buildVideoSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    .line 252
    .local v1, "supportedVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    .line 253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 254
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    return-void
.end method

.method private buildWhiteBalances(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    .local v1, "wb":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_0
    const-string v3, "cloudy-daylight"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_1
    const-string v3, "daylight"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_2
    const-string v3, "fluorescent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_3
    const-string v3, "incandescent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_4
    const-string v3, "shade"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 384
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_5
    const-string v3, "twilight"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 386
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_6
    const-string v3, "warm-fluorescent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 388
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 390
    :cond_7
    sget-object v3, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v3, v4, v1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildExtraWBModes(Ljava/util/EnumSet;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    .end local v1    # "wb":Ljava/lang/String;
    :cond_8
    return-void
.end method
