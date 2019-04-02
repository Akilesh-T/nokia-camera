.class public Lcom/android/camera/one/v2/common/ControlModeSelector;
.super Ljava/lang/Object;
.source "ControlModeSelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mFaceDetectMode:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdrSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneDetectionSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedHardwareLevel:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p4, "supportedHardwareLevel"    # Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    .param p5, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "sceneDetectionSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    .local p2, "hdrSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    .local p3, "faceDetectMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mSceneDetectionSetting:Lcom/google/common/base/Supplier;

    .line 45
    iput-object p2, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mHdrSetting:Lcom/google/common/base/Supplier;

    .line 46
    iput-object p3, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    .line 47
    iput-object p4, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mSupportedHardwareLevel:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    .line 48
    iput-object p5, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 49
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 57
    invoke-static {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isNeedSceneUpdateIQParmeter(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mSceneDetectionSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_CHS_SESSION:Z

    if-nez v0, :cond_2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mSupportedHardwareLevel:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    if-ne v0, v1, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mHdrSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlModeSelector;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    .line 72
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-ne v0, v1, :cond_5

    .line 73
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/ControlModeSelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
