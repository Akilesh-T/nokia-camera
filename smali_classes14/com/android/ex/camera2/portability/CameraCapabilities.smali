.class public Lcom/android/ex/camera2/portability/CameraCapabilities;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    }
.end annotation


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag; = null

.field protected static final ZOOM_RATIO_UNZOOMED:F = 1.0f

.field protected static final mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;


# instance fields
.field protected mCameraFacing:I

.field protected mCustomNumMic:I

.field protected mExposureCompensationStep:F

.field protected mHorizontalViewAngle:F

.field protected mMaxExposureCompensation:I

.field protected mMaxManualExposureTime:D

.field protected mMaxManualFocusDiopter:D

.field protected mMaxManualFocusScale:I

.field protected mMaxManualISO:I

.field protected mMaxManualWBCCT:I

.field protected mMaxManualWBGain:D

.field protected mMaxNumOfFacesSupported:I

.field protected mMaxNumOfFocusAreas:I

.field protected mMaxNumOfMeteringArea:I

.field protected mMaxZoomRatio:F

.field protected mMinExposureCompensation:I

.field protected mMinManualExposureTime:D

.field protected mMinManualFocusDiopter:D

.field protected mMinManualFocusScale:I

.field protected mMinManualISO:I

.field protected mMinManualWBCCT:I

.field protected mMinManualWBGain:D

.field protected mPreferredPictureSizeListForPIP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

.field protected mPreferredPreviewSizeListForPIP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

.field protected final mSupportedFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedFlashModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedFlipModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedFocusModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedHFRMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedISO:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedManualExposure:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedManualFocus:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedManualWB:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedMeteringMode:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPhotoFormats:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPhotoSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewFormats:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewFpsRange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedSceneModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedSurroundSound:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedVideoSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedWhiteBalances:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field

.field protected mVerticalViewAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamCapabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 108
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtensionCreator;->create()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    return-void
.end method

.method constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V
    .locals 1
    .param p1, "stringifier"    # Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    .line 57
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    .line 58
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    .line 59
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    .line 60
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlipModes:Ljava/util/EnumSet;

    .line 61
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 62
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    .line 63
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 64
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedISO:Ljava/util/EnumSet;

    .line 65
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    .line 66
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSurroundSound:Ljava/util/EnumSet;

    .line 67
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .line 68
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedManualFocus:Ljava/util/EnumSet;

    .line 69
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .line 70
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedManualExposure:Ljava/util/EnumSet;

    .line 71
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .line 72
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedManualWB:Ljava/util/EnumSet;

    .line 73
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 74
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedMeteringMode:Ljava/util/EnumSet;

    .line 75
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeListForPIP:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPictureSizeListForPIP:Ljava/util/List;

    .line 770
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .line 771
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 2
    .param p1, "src"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    .line 57
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    .line 58
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    .line 59
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    .line 60
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlipModes:Ljava/util/EnumSet;

    .line 61
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 62
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    .line 63
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .line 64
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedISO:Ljava/util/EnumSet;

    .line 65
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    .line 66
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSurroundSound:Ljava/util/EnumSet;

    .line 67
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .line 68
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedManualFocus:Ljava/util/EnumSet;

    .line 69
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .line 70
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedManualExposure:Ljava/util/EnumSet;

    .line 71
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .line 72
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedManualWB:Ljava/util/EnumSet;

    .line 73
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 74
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedMeteringMode:Ljava/util/EnumSet;

    .line 75
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeListForPIP:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPictureSizeListForPIP:Ljava/util/List;

    .line 778
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 779
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 780
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 781
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 782
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 783
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 784
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 785
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 786
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 787
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 788
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedISO:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedISO:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 789
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSurroundSound:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSurroundSound:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 790
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedMeteringMode:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedMeteringMode:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 792
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlipModes:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlipModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 793
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    .line 794
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    .line 795
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    .line 796
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    .line 797
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    .line 798
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFocusAreas:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 799
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfMeteringArea:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfMeteringArea:I

    .line 800
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    .line 801
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    .line 802
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    .line 804
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualFocusScale:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualFocusScale:I

    .line 805
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualFocusScale:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualFocusScale:I

    .line 806
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualFocusDiopter:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualFocusDiopter:D

    .line 807
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualFocusDiopter:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualFocusDiopter:D

    .line 809
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCustomNumMic:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCustomNumMic:I

    .line 811
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .line 812
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCameraFacing:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCameraFacing:I

    .line 813
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 815
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPictureSizeListForPIP:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPictureSizeListForPIP:Ljava/util/List;

    .line 816
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeListForPIP:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeListForPIP:Ljava/util/List;

    .line 818
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualExposureTime:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualExposureTime:D

    .line 819
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualExposureTime:D

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualExposureTime:D

    .line 820
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualISO:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualISO:I

    .line 821
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualISO:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualISO:I

    .line 822
    return-void
.end method

.method private exposureCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1135
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExposureCompensationIndex()I

    move-result v0

    .line 1136
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1137
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exposure compensation index is not supported. Min = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1138
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1140
    const/4 v1, 0x0

    .line 1142
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private flashCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1163
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 1164
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1165
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flash mode not supported:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-static {v2, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1167
    const/4 v1, 0x0

    .line 1169
    :goto_1
    return v1

    .line 1166
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 1169
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private focusCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1146
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    .line 1147
    .local v0, "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1148
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1151
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not supported... trying FIXED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1152
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p1, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1159
    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1151
    :cond_1
    const-string v1, "null"

    goto :goto_0

    .line 1154
    :cond_2
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus mode not supported:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    .line 1155
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-static {v2, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1156
    const/4 v1, 0x0

    goto :goto_1

    .line 1155
    :cond_3
    const-string v1, "null"

    goto :goto_2
.end method

.method private photoSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1173
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 1174
    .local v0, "photoSize":Lcom/android/ex/camera2/portability/Size;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    const/4 v1, 0x1

    .line 1178
    :goto_0
    return v1

    .line 1177
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported photo size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private previewSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1182
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 1183
    .local v0, "previewSize":Lcom/android/ex/camera2/portability/Size;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    const/4 v1, 0x1

    .line 1187
    :goto_0
    return v1

    .line 1186
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private videoStabilizationCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 2
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1191
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isVideoStabilizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    const/4 v0, 0x1

    .line 1195
    :goto_0
    return v0

    .line 1194
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Video stabilization is not supported"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1195
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zoomCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 5
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/4 v1, 0x0

    .line 1118
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    .line 1119
    .local v0, "ratio":F
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1120
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 1121
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "Zoom is not supported"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1131
    :goto_0
    return v1

    .line 1125
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1126
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zoom ratio is not supported: ratio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1127
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1131
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    .locals 1

    .prologue
    .line 1207
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCameraCapabilitiesExtension:Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    return-object v0
.end method

.method public final getCameraFacing()I
    .locals 1

    .prologue
    .line 1075
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCameraFacing:I

    return v0
.end method

.method public final getCustomNumMic()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mCustomNumMic:I

    return v0
.end method

.method public final getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    return v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    return v0
.end method

.method public final getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 1035
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    return v0
.end method

.method public final getMaxManualExposureTime()D
    .locals 2

    .prologue
    .line 1083
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualExposureTime:D

    return-wide v0
.end method

.method public final getMaxManualFocusDiopter()D
    .locals 2

    .prologue
    .line 1067
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualFocusDiopter:D

    return-wide v0
.end method

.method public final getMaxManualFocusScale()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualFocusScale:I

    return v0
.end method

.method public final getMaxManualISO()I
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualISO:I

    return v0
.end method

.method public final getMaxManualWBCCT()I
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualWBCCT:I

    return v0
.end method

.method public final getMaxManualWBGain()D
    .locals 2

    .prologue
    .line 1099
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxManualWBGain:D

    return-wide v0
.end method

.method public final getMaxNumOfFacesSupported()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    return v0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    return v0
.end method

.method public final getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    return v0
.end method

.method public final getMinManualExposureTime()D
    .locals 2

    .prologue
    .line 1079
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualExposureTime:D

    return-wide v0
.end method

.method public final getMinManualFocusDiopter()D
    .locals 2

    .prologue
    .line 1063
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualFocusDiopter:D

    return-wide v0
.end method

.method public final getMinManualFocusScale()I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualFocusScale:I

    return v0
.end method

.method public final getMinManualISO()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualISO:I

    return v0
.end method

.method public final getMinManualWBCCT()I
    .locals 1

    .prologue
    .line 1103
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualWBCCT:I

    return v0
.end method

.method public final getMinManualWBGain()D
    .locals 2

    .prologue
    .line 1095
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinManualWBGain:D

    return-wide v0
.end method

.method public final getPreferredPictureSizeForListPIP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPictureSizeListForPIP:Ljava/util/List;

    return-object v0
.end method

.method public final getPreferredPreviewSizeForVideo()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .prologue
    .line 885
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public final getPreferredPreviewSizeListForPIP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeListForPIP:Ljava/util/List;

    return-object v0
.end method

.method public getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    return-object v0
.end method

.method public final getSupportedFeature()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedFlashModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFlipModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlipModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedFocusModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedHFR()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHFRMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 863
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;>;"
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 864
    return-object v0
.end method

.method public getSupportedHFRSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedISO()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedISO:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPhotoFormats()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 836
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public getSupportedPhotoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewFormats()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public final getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 873
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedSceneModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedSurroundSound()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSurroundSound:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedWhiteBalance()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    return v0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z
    .locals 1
    .param p1, "ft"    # Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z
    .locals 1
    .param p1, "flash"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .prologue
    .line 938
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z
    .locals 1
    .param p1, "focus"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 952
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Z
    .locals 1
    .param p1, "hfr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .prologue
    .line 1002
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedHFRMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Z
    .locals 1
    .param p1, "iso"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .prologue
    .line 995
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedISO:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z
    .locals 1
    .param p1, "scene"    # Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .prologue
    .line 907
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;)Z
    .locals 1
    .param p1, "surroundSound"    # Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    .prologue
    .line 981
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSurroundSound:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Z
    .locals 1
    .param p1, "wb"    # Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .prologue
    .line 988
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 1
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->zoomCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->exposureCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->focusCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->flashCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->photoSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->previewSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->videoStabilizationCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const/4 v0, 0x1

    .line 924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
