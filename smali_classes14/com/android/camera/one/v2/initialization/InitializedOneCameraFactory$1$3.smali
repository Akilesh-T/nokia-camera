.class Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;
.super Ljava/lang/Object;
.source "InitializedOneCameraFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->onCameraCaptureSessionCreated(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

.field final synthetic val$currentCameraId:Lcom/android/camera/async/Observable;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->val$currentCameraId:Lcom/android/camera/async/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->val$currentCameraId:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    .local v0, "cameraId":I
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$afStateListenable:Lcom/android/camera/async/Listenable;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v2, v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$afState:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Listenable;->setState(Lcom/android/camera/async/ConcurrentState;)V

    .line 264
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$lengsStateListenable:Lcom/android/camera/async/Listenable;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v2, v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$lengsState:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Listenable;->setState(Lcom/android/camera/async/ConcurrentState;)V

    .line 265
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$faceDataListenable:Lcom/android/camera/async/Listenable;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v2, v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$faceData:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Listenable;->setState(Lcom/android/camera/async/ConcurrentState;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$afStateListenable:Lcom/android/camera/async/Listenable;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v2, v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveAfState:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Listenable;->setState(Lcom/android/camera/async/ConcurrentState;)V

    .line 268
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$lengsStateListenable:Lcom/android/camera/async/Listenable;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v2, v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveLengsState:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Listenable;->setState(Lcom/android/camera/async/ConcurrentState;)V

    .line 269
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$faceDataListenable:Lcom/android/camera/async/Listenable;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v2, v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slavefaceData:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Listenable;->setState(Lcom/android/camera/async/ConcurrentState;)V

    goto :goto_0
.end method
