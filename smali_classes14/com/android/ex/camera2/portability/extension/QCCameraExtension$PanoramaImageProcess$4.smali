.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->onProcessDone(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->release()V

    .line 503
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$902(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 506
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$4;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$1000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaCompleted()V

    .line 507
    return-void
.end method
