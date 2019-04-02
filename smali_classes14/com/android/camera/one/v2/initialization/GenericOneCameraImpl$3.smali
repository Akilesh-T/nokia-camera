.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

.field final synthetic val$paramWrap:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

.field final synthetic val$resetScreenFlash:Lcom/android/camera/async/SafeCloseable;

.field final synthetic val$session:Lcom/android/camera/session/CaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/async/SafeCloseable;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->val$resetScreenFlash:Lcom/android/camera/async/SafeCloseable;

    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->val$paramWrap:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->access$000(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;)Lcom/android/camera/async/Lifetime;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->access$000(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;)Lcom/android/camera/async/Lifetime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->val$resetScreenFlash:Lcom/android/camera/async/SafeCloseable;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->remove(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 215
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->access$100(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;)Lcom/android/camera/one/v2/photo/PictureTaker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->val$paramWrap:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/photo/PictureTaker;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0
.end method
