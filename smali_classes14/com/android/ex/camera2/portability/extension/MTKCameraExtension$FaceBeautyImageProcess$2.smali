.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;
.super Ljava/lang/Object;
.source "MTKCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

.field final synthetic val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;->val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 476
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "face beauty: onPictureTaken received"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 478
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    .line 479
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 485
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->access$1000(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0
.end method
