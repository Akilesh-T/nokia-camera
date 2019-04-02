.class Lcom/android/camera/PanoramaHal3Module$9;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$9;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$9;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrSupported()Z

    move-result v0

    return v0
.end method

.method public isBeautySupported()Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontCameraSupported()Z
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method public isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamInUse()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamSupported()Z
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public isOptiZoomSupported()Z
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleSurroundSoundOnly()Z
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public isSlaveCamSupported()Z
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public isSurroundSoundSupported()Z
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method
