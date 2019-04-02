.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->onPostImage(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

.field final synthetic val$postImage:[B


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;->val$postImage:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "HDRImageProcess - onPreviewImage run in camera thread"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;->val$postImage:[B

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$6;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 695
    return-void
.end method
