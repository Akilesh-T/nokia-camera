.class public Lcom/android/camera/one/v2/common/ControlWBModeSelector;
.super Ljava/lang/Object;
.source "ControlWBModeSelector.java"

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


# instance fields
.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mManualWBSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
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

.field private final mSceneWBSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p4, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "manualWBSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    .local p2, "sceneWBSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    .local p3, "sceneDetectionSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mManualWBSetting:Lcom/google/common/base/Supplier;

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mSceneWBSetting:Lcom/google/common/base/Supplier;

    .line 43
    iput-object p3, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mSceneDetectionSetting:Lcom/google/common/base/Supplier;

    .line 44
    iput-object p4, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 45
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    iget-object v1, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isNeedSceneUpdateIQParmeter(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mSceneDetectionSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mSceneWBSetting:Lcom/google/common/base/Supplier;

    .line 55
    .local v0, "wbSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    :goto_0
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    :goto_1
    return-object v1

    .line 53
    .end local v0    # "wbSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->mManualWBSetting:Lcom/google/common/base/Supplier;

    .restart local v0    # "wbSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    goto :goto_0

    .line 57
    :cond_1
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 59
    :cond_2
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 61
    :cond_3
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 63
    :cond_4
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->INCANDESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 65
    :cond_5
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->SHADE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 67
    :cond_6
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->TWILIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 69
    :cond_7
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 70
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    .line 71
    :cond_8
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 72
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    .line 74
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/ControlWBModeSelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
