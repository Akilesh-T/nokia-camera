.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$2;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$2;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12$2;->this$2:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;->val$notSupportCallbackWrap:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c3

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 1507
    return-void
.end method
