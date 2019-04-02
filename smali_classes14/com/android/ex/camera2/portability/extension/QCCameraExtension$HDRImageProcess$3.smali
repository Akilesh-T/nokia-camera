.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->onProcessAbort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 635
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 638
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 639
    return-void
.end method
