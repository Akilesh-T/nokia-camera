.class public Lcom/android/camera/one/OneCameraCaptureSetting;
.super Ljava/lang/Object;
.source "OneCameraCaptureSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_PREVIEW_FPS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICRO_VIDEO_PREVIEW_FPS_FIXED:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICRO_VIDEO_PREVIEW_FPS_NOT_FIXED:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PANORAMA_PREVIEW_FPS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBeautyLevel:Ljava/lang/Integer;

.field private final mBeautyLevelSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBeautySetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mBokehLevel:Ljava/lang/Integer;

.field private final mBokehLevelSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mCaptureRateSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureRawSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureSize:Lcom/android/camera/util/Size;

.field private final mContrastSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentCameraId:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEffectMode:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEffectSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrontCamMirrorSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdrSceneSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsEnableEIS:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualExpSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualExpTimeSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualFocusSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualISOSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualWBSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualWbValueSettings:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostHandleUltraWideDC:Z

.field private mPreivewSize:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<[I>;"
        }
    .end annotation
.end field

.field private final mPreviewFpsRangeSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSRSceneSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaturationSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneClassifyModeSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneClassifyOrientationSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneDetectionSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneExpSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneWBSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenMode:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharpnessSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlaveCaptureSize:Lcom/android/camera/util/Size;

.field private final mSurroundSoundSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;"
        }
    .end annotation
.end field

.field private final mTwiceShotSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/16 v3, 0x1e

    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCameraCaptureSetting"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 50
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;

    .line 51
    new-instance v0, Landroid/util/Range;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting;->PANORAMA_PREVIEW_FPS:Landroid/util/Range;

    .line 52
    new-instance v0, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting;->MICRO_VIDEO_PREVIEW_FPS_FIXED:Landroid/util/Range;

    .line 53
    new-instance v0, Landroid/util/Range;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting;->MICRO_VIDEO_PREVIEW_FPS_NOT_FIXED:Landroid/util/Range;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/android/camera/async/Observable;Z)V
    .locals 1
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p2, "captureSize"    # Lcom/android/camera/util/Size;
    .param p3, "slavePictureSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p34, "beautyLevelValue"    # Ljava/lang/Integer;
    .param p35, "bokehLevelValue"    # Ljava/lang/Integer;
    .param p37, "postHandleUltraWideDC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p4, "flashSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    .local p5, "manualFocusSettings":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .local p6, "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .local p7, "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    .local p8, "manualWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    .local p9, "manualExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p10, "frontCamMirrorSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p11, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p12, "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .local p13, "bokehLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p14, "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p15, "previewFpsRangeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .local p16, "captureRateSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p17, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    .local p18, "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p19, "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p20, "saturationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p21, "contrastSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p22, "sharpnessSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p23, "sceneExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p24, "sceneWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    .local p25, "manualWbValueSettings":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .local p26, "effectMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p27, "effectSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .local p28, "twiceShotSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p29, "screenMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p30, "isEnableEIS":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p31, "sceneClassifyModeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p32, "sceneClassifyOrientationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p33, "sceneDetectionSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p36, "SRSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 584
    iput-object p2, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureSize:Lcom/android/camera/util/Size;

    .line 585
    iput-object p3, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSlaveCaptureSize:Lcom/android/camera/util/Size;

    .line 586
    iput-object p4, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mFlashSetting:Lcom/android/camera/async/Observable;

    .line 587
    iput-object p5, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualFocusSetting:Lcom/android/camera/async/Observable;

    .line 588
    iput-object p6, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualExpTimeSetting:Lcom/android/camera/async/Observable;

    .line 589
    iput-object p7, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualISOSetting:Lcom/android/camera/async/Observable;

    .line 590
    iput-object p8, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualWBSetting:Lcom/android/camera/async/Observable;

    .line 591
    iput-object p9, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualExpSetting:Lcom/android/camera/async/Observable;

    .line 592
    iput-object p10, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mFrontCamMirrorSetting:Lcom/android/camera/async/Observable;

    .line 593
    iput-object p11, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 594
    iput-object p12, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mHdrSceneSetting:Lcom/android/camera/async/Observable;

    .line 595
    iput-object p13, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBokehLevelSetting:Lcom/android/camera/async/Observable;

    .line 596
    iput-object p14, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBeautySetting:Lcom/android/camera/async/Observable;

    .line 597
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mPreviewFpsRangeSetting:Lcom/android/camera/async/Observable;

    .line 598
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureRateSetting:Lcom/android/camera/async/Observable;

    .line 599
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSurroundSoundSetting:Lcom/android/camera/async/Observable;

    .line 600
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBeautyLevelSetting:Lcom/android/camera/async/Observable;

    .line 601
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCurrentCameraId:Lcom/android/camera/async/Observable;

    .line 602
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSaturationSetting:Lcom/android/camera/async/Observable;

    .line 603
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mContrastSetting:Lcom/android/camera/async/Observable;

    .line 604
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSharpnessSetting:Lcom/android/camera/async/Observable;

    .line 605
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneExpSetting:Lcom/android/camera/async/Observable;

    .line 606
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneWBSetting:Lcom/android/camera/async/Observable;

    .line 607
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualWbValueSettings:Lcom/android/camera/async/Observable;

    .line 608
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mEffectMode:Lcom/android/camera/async/Observable;

    .line 609
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mEffectSetting:Lcom/android/camera/async/Observable;

    .line 610
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mTwiceShotSetting:Lcom/android/camera/async/Observable;

    .line 611
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mScreenMode:Lcom/android/camera/async/Observable;

    .line 612
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mIsEnableEIS:Lcom/android/camera/async/Observable;

    .line 613
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneClassifyModeSetting:Lcom/android/camera/async/Observable;

    .line 614
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneClassifyOrientationSetting:Lcom/android/camera/async/Observable;

    .line 615
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneDetectionSetting:Lcom/android/camera/async/Observable;

    .line 616
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBeautyLevel:Ljava/lang/Integer;

    .line 617
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBokehLevel:Ljava/lang/Integer;

    .line 618
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSRSceneSetting:Lcom/android/camera/async/Observable;

    .line 619
    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mPostHandleUltraWideDC:Z

    .line 620
    return-void
.end method

.method static synthetic access$000()Landroid/util/Range;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting;->MICRO_VIDEO_PREVIEW_FPS_FIXED:Landroid/util/Range;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/Range;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting;->MICRO_VIDEO_PREVIEW_FPS_NOT_FIXED:Landroid/util/Range;

    return-object v0
.end method

.method public static create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 45
    .param p0, "appController"    # Lcom/android/camera/app/AppController;
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p3, "slaveCameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p7, "slavePictureSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p10, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;
    .param p11, "cameraSettingScope"    # Ljava/lang/String;
    .param p12, "postHandleUltraWideDC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/app/AppController;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/hardware/HardwareSpec;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/camera/one/OneCameraCaptureSetting;"
        }
    .end annotation

    .prologue
    .line 378
    .local p8, "previewFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v41

    .line 381
    .local v41, "context":Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v22

    .line 383
    .local v22, "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface/range {p10 .. p10}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v7, Lcom/android/camera/one/FlashSetting;

    .line 384
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "pref_camera_video_flashmode_key"

    :goto_1
    move-object/from16 v0, p9

    move-object/from16 v1, p11

    invoke-static {v0, v1, v3}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/camera/one/FlashSetting;-><init>(Lcom/android/camera/async/Observable;)V

    .line 388
    .local v7, "flashSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    :goto_2
    const/16 v21, 0x0

    .line 389
    .local v21, "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 390
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_6

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_6

    :cond_0
    const-string v3, "default_scope"

    const-string v4, "pref_beauty_level_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v21

    .line 397
    :goto_3
    invoke-interface/range {p10 .. p10}, Lcom/android/camera/hardware/HardwareSpec;->isHdrSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isHDRAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "default_scope"

    const-string v4, "pref_camera_hdr_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v15

    .line 400
    .local v15, "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "pref_camera_manual_focus_mode"

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    invoke-static {v0, v1, v3}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v8

    .line 403
    .local v8, "manualFocusSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    :goto_5
    new-instance v9, Lcom/android/camera/one/ManualExpTimeSetting;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "pref_camera_manual_exposure_time_key"

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    invoke-static {v0, v1, v3}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    :goto_6
    invoke-direct {v9, v3}, Lcom/android/camera/one/ManualExpTimeSetting;-><init>(Lcom/android/camera/async/Observable;)V

    .line 406
    .local v9, "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "pref_camera_manual_exposure_key"

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    invoke-static {v0, v1, v3}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v12

    .line 409
    .local v12, "manualExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_7
    new-instance v10, Lcom/android/camera/one/ManualISOSetting;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "pref_camera_manual_exposure_iso"

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    invoke-static {v0, v1, v3}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    :goto_8
    invoke-direct {v10, v3}, Lcom/android/camera/one/ManualISOSetting;-><init>(Lcom/android/camera/async/Observable;)V

    .line 412
    .local v10, "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    new-instance v11, Lcom/android/camera/one/ManualWBSetting;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "pref_camera_whitebalance_mode_key"

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    invoke-static {v0, v1, v3}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    :goto_9
    invoke-direct {v11, v3}, Lcom/android/camera/one/ManualWBSetting;-><init>(Lcom/android/camera/async/Observable;)V

    .line 415
    .local v11, "manualWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_13

    const-string v3, "default_scope"

    const-string v4, "pref_front_camera_mirror_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofBoolean(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v13

    .line 418
    .local v13, "frontCamMirrorSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isRawCaptureAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v14, Lcom/android/camera/async/ConcurrentState;

    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil;->ENABLE_RAW_CAPTURE:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 421
    .local v14, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :goto_b
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_16

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_15

    invoke-interface/range {p0 .. p0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_livebokeh_level_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v16

    .line 425
    .local v16, "bokehLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_c
    new-instance v17, Lcom/android/camera/one/BeautySetting;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBeautyAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_17

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_17

    :cond_1
    const-string v3, "default_scope"

    const-string v4, "pref_beauty"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    :goto_d
    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/BeautySetting;-><init>(Landroid/content/Context;Lcom/android/camera/async/Observable;)V

    .line 428
    .local v17, "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    new-instance v18, Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, v18

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 431
    .local v18, "previewFpsRangeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_saturation_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v23

    .line 434
    .local v23, "saturationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_contrast_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v24

    .line 437
    .local v24, "contrastSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_sharpness_control_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v25

    .line 440
    .local v25, "sharpnessSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_scene_exposure_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v26

    .line 442
    .local v26, "sceneExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_11
    new-instance v33, Lcom/android/camera/async/ConcurrentState;

    new-instance v3, Lcom/android/camera/one/v2/common/EISModeSelector;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/one/v2/common/EISModeSelector;-><init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    invoke-virtual {v3}, Lcom/android/camera/one/v2/common/EISModeSelector;->get()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 445
    .local v33, "isEnableEIS":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    new-instance v27, Lcom/android/camera/one/ManualWBSetting;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_scene_whitebalance_mode_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    :goto_12
    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lcom/android/camera/one/ManualWBSetting;-><init>(Lcom/android/camera/async/Observable;)V

    .line 447
    .local v27, "sceneWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_manual_wb_value_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v28

    .line 449
    .local v28, "manualWbValueSettings":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_sceneclassify_mode_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v34

    .line 451
    .local v34, "sceneClassifyModeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_14
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_sceneclassify_orientation_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v35

    .line 453
    .local v35, "sceneClassifyOrientationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "default_scope"

    const-string v4, "pref_scene_detection_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofBoolean(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v36

    .line 454
    .local v36, "sceneDetectionSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :goto_16
    const-string v3, "default_scope"

    const-string v4, "camera.startup_module"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/settings/SettingObserver;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_21

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_21

    const-string v3, "default_scope"

    const-string v4, "pref_sr_control_boolean_key"

    .line 455
    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v39

    .line 459
    .local v39, "SRSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_17
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 468
    new-instance v19, Lcom/android/camera/async/ConcurrentState;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 471
    .local v19, "captureRateSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_18
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_22

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_mode_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v29

    .line 475
    .local v29, "effectMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_19
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_23

    const-string v3, "default_scope"

    const-string v4, "pref_camera_portrait_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v30

    .line 479
    .local v30, "effectSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    :goto_1a
    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    .line 480
    .local v44, "res":Landroid/content/res/Resources;
    invoke-interface/range {p0 .. p0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_screen_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 481
    .local v42, "currentValue":I
    const v3, 0x7f0803c4

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v42

    if-ne v0, v3, :cond_24

    .line 482
    const/16 v43, 0x1

    .line 487
    .local v43, "isDualSightHalfAndHalf":Z
    :goto_1b
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_25

    const-string v3, "default_scope"

    const-string v4, "pref_dual_twiceshot_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofBoolean(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v31

    .line 489
    .local v31, "twiceShotSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :goto_1c
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_26

    const-string v3, "default_scope"

    const-string v4, "pref_camera_screen_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v32

    .line 491
    .local v32, "screenMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_1d
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TS] isDualSightHalfAndHalf:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 494
    invoke-interface/range {p10 .. p10}, Lcom/android/camera/hardware/HardwareSpec;->isSurroundSoundSupported()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static/range {p1 .. p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSurroundSoundAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface/range {p10 .. p10}, Lcom/android/camera/hardware/HardwareSpec;->isSingleSurroundSoundOnly()Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v20, Lcom/android/camera/async/ConcurrentState;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->SURROUND:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 496
    .local v20, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    :goto_1e
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 497
    .local v37, "beautyLevel":Ljava/lang/Integer;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 498
    .local v38, "bokehLevel":Ljava/lang/Integer;
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_29

    const-string v3, "default_scope"

    const-string v4, "pref_beauty_level_key"

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 500
    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_2a

    invoke-interface/range {p0 .. p0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_livebokeh_level_key"

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 503
    :cond_2
    new-instance v3, Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v40, p12

    invoke-direct/range {v3 .. v40}, Lcom/android/camera/one/OneCameraCaptureSetting;-><init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/android/camera/async/Observable;Z)V

    return-object v3

    .line 381
    .end local v7    # "flashSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    .end local v8    # "manualFocusSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .end local v9    # "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .end local v10    # "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    .end local v11    # "manualWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    .end local v12    # "manualExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v13    # "frontCamMirrorSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v14    # "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v15    # "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .end local v16    # "bokehLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v17    # "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v18    # "previewFpsRangeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v19    # "captureRateSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v20    # "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    .end local v21    # "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v22    # "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v23    # "saturationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v24    # "contrastSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v25    # "sharpnessSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v26    # "sceneExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v27    # "sceneWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    .end local v28    # "manualWbValueSettings":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .end local v29    # "effectMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v30    # "effectSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .end local v31    # "twiceShotSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v32    # "screenMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v33    # "isEnableEIS":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v34    # "sceneClassifyModeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v35    # "sceneClassifyOrientationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v36    # "sceneDetectionSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v37    # "beautyLevel":Ljava/lang/Integer;
    .end local v38    # "bokehLevel":Ljava/lang/Integer;
    .end local v39    # "SRSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v42    # "currentValue":I
    .end local v43    # "isDualSightHalfAndHalf":Z
    .end local v44    # "res":Landroid/content/res/Resources;
    :cond_3
    new-instance v22, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 384
    .restart local v22    # "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_4
    const-string v3, "pref_camera_flashmode_key"

    goto/16 :goto_1

    :cond_5
    new-instance v7, Lcom/android/camera/async/ConcurrentState;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-direct {v7, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 390
    .restart local v7    # "flashSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    .restart local v21    # "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_6
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_7

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_7

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_8

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_8

    :cond_7
    const-string v3, "default_scope"

    const-string v4, "pref_beauty_level_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v21

    goto/16 :goto_3

    :cond_8
    new-instance v21, Lcom/android/camera/async/ConcurrentState;

    .end local v21    # "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 392
    .restart local v21    # "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_9
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_a

    invoke-interface/range {p0 .. p0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_beauty_level_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v21

    :goto_21
    goto/16 :goto_3

    :cond_a
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_b

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_b

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_c

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_c

    :cond_b
    const-string v3, "default_scope"

    const-string v4, "pref_beauty_level_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofInteger(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v21

    goto :goto_21

    :cond_c
    new-instance v21, Lcom/android/camera/async/ConcurrentState;

    .end local v21    # "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto :goto_21

    .line 397
    .restart local v21    # "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_d
    new-instance v15, Lcom/android/camera/async/ConcurrentState;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 400
    .restart local v15    # "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    :cond_e
    new-instance v8, Lcom/android/camera/async/ConcurrentState;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-virtual {v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->encodeSettingsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 403
    .restart local v8    # "manualFocusSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    :cond_f
    new-instance v3, Lcom/android/camera/async/ConcurrentState;

    sget-object v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 406
    .restart local v9    # "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    :cond_10
    new-instance v12, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 409
    .restart local v12    # "manualExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_11
    new-instance v3, Lcom/android/camera/async/ConcurrentState;

    sget-object v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 412
    .restart local v10    # "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    :cond_12
    new-instance v3, Lcom/android/camera/async/ConcurrentState;

    sget-object v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 415
    .restart local v11    # "manualWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    :cond_13
    new-instance v13, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 418
    .restart local v13    # "frontCamMirrorSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_14
    new-instance v14, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 421
    .restart local v14    # "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_15
    new-instance v16, Lcom/android/camera/async/ConcurrentState;

    const v3, 0x7f080401

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_16
    new-instance v16, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 425
    .restart local v16    # "bokehLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_17
    new-instance v3, Lcom/android/camera/async/ConcurrentState;

    const v4, 0x7f080312

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 431
    .restart local v17    # "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .restart local v18    # "previewFpsRangeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_18
    new-instance v23, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 434
    .restart local v23    # "saturationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_19
    new-instance v24, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 437
    .restart local v24    # "contrastSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_1a
    new-instance v25, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 440
    .restart local v25    # "sharpnessSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_1b
    new-instance v26, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 445
    .restart local v26    # "sceneExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .restart local v33    # "isEnableEIS":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_1c
    new-instance v3, Lcom/android/camera/async/ConcurrentState;

    sget-object v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 447
    .restart local v27    # "sceneWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    :cond_1d
    new-instance v28, Lcom/android/camera/async/ConcurrentState;

    const-string v3, "1.0f,1.0f,1.0f"

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 449
    .restart local v28    # "manualWbValueSettings":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    :cond_1e
    new-instance v34, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 451
    .restart local v34    # "sceneClassifyModeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_1f
    new-instance v35, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 453
    .restart local v35    # "sceneClassifyOrientationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_20
    new-instance v36, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 455
    .restart local v36    # "sceneDetectionSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_21
    new-instance v39, Lcom/android/camera/async/ConcurrentState;

    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$SR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/photo/SceneDetector$SR;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 462
    .restart local v39    # "SRSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :pswitch_0
    new-instance v19, Lcom/android/camera/async/ConcurrentState;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 463
    .restart local v19    # "captureRateSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    goto/16 :goto_18

    .line 465
    .end local v19    # "captureRateSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :pswitch_1
    new-instance v19, Lcom/android/camera/async/ConcurrentState;

    invoke-virtual/range {p8 .. p8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 466
    .restart local v19    # "captureRateSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    goto/16 :goto_18

    .line 471
    :cond_22
    new-instance v29, Lcom/android/camera/async/ConcurrentState;

    invoke-interface/range {p0 .. p0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080383

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 475
    .restart local v29    # "effectMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_23
    new-instance v30, Lcom/android/camera/async/ConcurrentState;

    invoke-interface/range {p0 .. p0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 484
    .restart local v30    # "effectSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .restart local v42    # "currentValue":I
    .restart local v44    # "res":Landroid/content/res/Resources;
    :cond_24
    const/16 v43, 0x0

    .restart local v43    # "isDualSightHalfAndHalf":Z
    goto/16 :goto_1b

    .line 487
    :cond_25
    new-instance v31, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 489
    .restart local v31    # "twiceShotSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_26
    new-instance v32, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 494
    .restart local v32    # "screenMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_27
    new-instance v20, Lcom/android/camera/one/SurroundSoundSetting;

    const-string v3, "default_scope"

    const-string v4, "pref_sound_focus_key"

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4}, Lcom/android/camera/settings/SettingObserver;->ofString(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/settings/SettingObserver;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/camera/one/SurroundSoundSetting;-><init>(Lcom/android/camera/async/Observable;)V

    goto/16 :goto_1e

    :cond_28
    new-instance v20, Lcom/android/camera/async/ConcurrentState;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 499
    .restart local v20    # "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    .restart local v37    # "beautyLevel":Ljava/lang/Integer;
    .restart local v38    # "bokehLevel":Ljava/lang/Integer;
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_1f

    .line 500
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBeautyLevelSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBeautyLevelSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getBeautySetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBeautySetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getBokehLevelSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBokehLevelSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    return-object v0
.end method

.method public getCaptureRateSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureRateSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getCaptureRawSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getCaptureSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCaptureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public getContrastSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mContrastSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getCurrentCameraId()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mCurrentCameraId:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getEIS()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mIsEnableEIS:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getEffectMode()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mEffectMode:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getEffectSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mEffectSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getFlashSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mFlashSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getFrontCamMirrorSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mFrontCamMirrorSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getHdrSceneSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mHdrSceneSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getManualExpSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualExpSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getManualExpTimeSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualExpTimeSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getManualFocusSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualFocusSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getManualISOSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualISOSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getManualWBSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualWBSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getManualWbValueSettings()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mManualWbValueSettings:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getPreviewFpsRangeSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mPreviewFpsRangeSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSRSceneSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSRSceneSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSaturationSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSaturationSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSceneClassifyModeSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneClassifyModeSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSceneClassifyOrientationSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneClassifyOrientationSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSceneDetectionSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneDetectionSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSceneExpSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneExpSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSceneWBSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSceneWBSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getScreenMode()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mScreenMode:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSharpnessSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSharpnessSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getSlaveCaptureSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSlaveCaptureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public getSurroundSoundSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mSurroundSoundSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getTwiceShotSetting()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mTwiceShotSetting:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public getmBeautyLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBeautyLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getmBokehLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mBokehLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public isNeedToHandleUltraWideDC()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/android/camera/one/OneCameraCaptureSetting;->mPostHandleUltraWideDC:Z

    return v0
.end method
