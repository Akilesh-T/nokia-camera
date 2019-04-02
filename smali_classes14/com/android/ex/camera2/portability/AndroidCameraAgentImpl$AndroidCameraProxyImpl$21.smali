.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->applySettingsAndStartPanorama(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

.field final synthetic val$panoramaCallbackWrap:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;->val$panoramaCallbackWrap:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1816
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21$1;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    :goto_0
    return-void

    .line 1828
    :catch_0
    move-exception v0

    .line 1829
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->access$900(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
