.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
.source "MTKCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceBeautyImageProcess"
.end annotation


# instance fields
.field private final lCaptureCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

.field mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field minvokehandler:Ljava/lang/reflect/InvocationHandler;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 1
    .param p1    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    .line 458
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 460
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->lCaptureCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 462
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->minvokehandler:Ljava/lang/reflect/InvocationHandler;

    .line 473
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess$2;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 488
    return-void
.end method

.method static synthetic access$1000(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->lCaptureCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 492
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MTK_FB_RETURN_FROM_ORIGINAL_CB:Ljava/lang/String;

    .line 493
    invoke-static {v1}, Lcom/android/camera/util/ProductConfigUtil;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    const-string v1, "android.hardware.Camera$FbOriginalCallback"

    const-string v2, "setFbOriginalCallback"

    iget-object v3, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->minvokehandler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0, v1, v2, v3}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$900(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->lCaptureCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 499
    return-void
.end method
