.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->onProcessDone(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

.field final synthetic val$jepgData:[B


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->val$jepgData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 884
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 886
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2102(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 890
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->val$jepgData:[B

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 891
    return-void
.end method
