.class public Lcom/android/camera/one/v2/common/ControlSceneModeSelector;
.super Ljava/lang/Object;
.source "ControlSceneModeSelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTROL_SCENE_MODE_HDR:I = 0x12


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

.field private final mSupportedHardwareLevel:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p3, "supportedHardwareLevel"    # Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    .param p4, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 47
    .local p1, "hdrSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    .local p2, "faceDetectMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mHdrSetting:Lcom/google/common/base/Supplier;

    .line 49
    iput-object p2, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    .line 50
    iput-object p3, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mSupportedHardwareLevel:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    .line 51
    iput-object p4, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 52
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_CHS_SESSION:Z

    if-nez v0, :cond_0

    .line 57
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mSupportedHardwareLevel:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mHdrSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    .line 67
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-ne v0, v1, :cond_3

    .line 68
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
