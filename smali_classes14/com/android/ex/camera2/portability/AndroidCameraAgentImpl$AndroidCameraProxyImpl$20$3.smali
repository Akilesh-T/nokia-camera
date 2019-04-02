.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$3;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->onPanoramaWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$3;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;

    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$3;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$panoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$3;->val$error:I

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaWarning(I)V

    .line 1765
    return-void
.end method
