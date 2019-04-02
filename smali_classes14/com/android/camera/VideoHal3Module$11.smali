.class Lcom/android/camera/VideoHal3Module$11;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrSupported()Z

    move-result v0

    return v0
.end method

.method public isBeautySupported()Z
    .locals 1

    .prologue
    .line 1148
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1161
    :goto_0
    return v0

    .line 1159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public isFrontCameraSupported()Z
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

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
    .line 1153
    const/4 v0, 0x0

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamInUse()Z
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x0

    return v0
.end method

.method public isLogicCamSupported()Z
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public isOptiZoomSupported()Z
    .locals 1

    .prologue
    .line 1181
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleSurroundSoundOnly()Z
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedSurroundSound()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlaveCamSupported()Z
    .locals 1

    .prologue
    .line 1166
    const/4 v0, 0x0

    return v0
.end method

.method public isSurroundSoundSupported()Z
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$11;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportedSurroundSound()Z

    move-result v0

    return v0
.end method
