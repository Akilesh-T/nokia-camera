.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->onPostImage(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

.field final synthetic val$postImage:[B


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;->val$postImage:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1096
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - onPreviewImage run in camera thread"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;->val$postImage:[B

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$6;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1098
    return-void
.end method
