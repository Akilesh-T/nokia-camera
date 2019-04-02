.class Lcom/android/camera/DualSightPhotoModule$10;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$10;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$10;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$3600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrSupported()Z

    move-result v0

    return v0
.end method

.method public isBeautySupported()Z
    .locals 1

    .prologue
    .line 1493
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 1503
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontCameraSupported()Z
    .locals 2

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$10;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

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
    .line 1498
    const/4 v0, 0x0

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 1483
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamInUse()Z
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamSupported()Z
    .locals 1

    .prologue
    .line 1513
    const/4 v0, 0x0

    return v0
.end method

.method public isOptiZoomSupported()Z
    .locals 1

    .prologue
    .line 1523
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleSurroundSoundOnly()Z
    .locals 1

    .prologue
    .line 1533
    const/4 v0, 0x0

    return v0
.end method

.method public isSlaveCamSupported()Z
    .locals 1

    .prologue
    .line 1508
    const/4 v0, 0x1

    return v0
.end method

.method public isSurroundSoundSupported()Z
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x0

    return v0
.end method
