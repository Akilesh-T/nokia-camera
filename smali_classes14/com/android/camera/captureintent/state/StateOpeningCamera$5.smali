.class Lcom/android/camera/captureintent/state/StateOpeningCamera$5;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateOpeningCamera;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoHdrSupported()Z
    .locals 3

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 413
    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$600(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrSupported()Z
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 415
    :goto_0
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Lcom/android/camera/one/OneCameraAccessException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBeautySupported()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$300(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public isFrontCameraSupported()Z
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$5;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 401
    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    .line 400
    return v0
.end method

.method public isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamInUse()Z
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamSupported()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public isOptiZoomSupported()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleSurroundSoundOnly()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public isSlaveCamSupported()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public isSurroundSoundSupported()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method
