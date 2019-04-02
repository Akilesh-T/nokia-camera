.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$18;
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

.field final synthetic val$panoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$18;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$18;->val$panoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$18;->val$panoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 1714
    return-void
.end method
