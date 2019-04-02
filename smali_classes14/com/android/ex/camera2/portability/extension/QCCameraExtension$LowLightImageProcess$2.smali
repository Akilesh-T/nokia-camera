.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->onProcessAbort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 844
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 846
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2102(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;Lcom/thirdparty/arcsoft/engine/ImageEngineBase;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 849
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c3

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 850
    return-void
.end method
