.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$1;
.super Ljava/lang/Object;
.source "MTKCameraExtension.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


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
    .line 462
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$1;->val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "methodSpec":Ljava/lang/String;
    const-string v1, "onCapture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    iget-object v2, v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    iget-object v3, v3, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 469
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
