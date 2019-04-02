.class Lcom/android/camera/CaptureModule$24$6;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$24;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$24;

    .prologue
    .line 2614
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$6;->this$1:Lcom/android/camera/CaptureModule$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$6;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->close()V

    .line 2618
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$6;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$6002(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera$FocusStateListener;)Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 2619
    return-void
.end method
