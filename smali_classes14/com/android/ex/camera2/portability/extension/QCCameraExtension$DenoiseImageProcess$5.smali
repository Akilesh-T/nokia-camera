.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->onProcessDone(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

.field final synthetic val$jepgData:[B


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->val$jepgData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 1069
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 1072
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->val$jepgData:[B

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$5;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1073
    return-void
.end method
