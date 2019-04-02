.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$3;
.super Ljava/lang/Object;
.source "MTKCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 388
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->access$800(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 389
    return-void
.end method
