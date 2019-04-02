.class Lcom/android/camera/SquareModule$13;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/android/camera/SquareModule$13;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/camera/SquareModule$13;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrSupported()Z

    move-result v0

    return v0
.end method

.method public isBeautySupported()Z
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/camera/SquareModule$13;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule$13;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public isFrontCameraSupported()Z
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/camera/SquareModule$13;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    return v0
.end method

.method public isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x0

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/camera/SquareModule$13;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isHdrSceneSupported()Z

    move-result v0

    return v0
.end method

.method public isLogicCamInUse()Z
    .locals 1

    .prologue
    .line 1428
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamSupported()Z
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x0

    return v0
.end method

.method public isOptiZoomSupported()Z
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleSurroundSoundOnly()Z
    .locals 1

    .prologue
    .line 1443
    const/4 v0, 0x0

    return v0
.end method

.method public isSlaveCamSupported()Z
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x0

    return v0
.end method

.method public isSurroundSoundSupported()Z
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x0

    return v0
.end method
