.class Lcom/android/camera/captureintent/state/StateReadyForCapture$25;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$25;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 719
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 715
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 0

    .prologue
    .line 723
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 732
    return-void
.end method

.method public onQuickExpose()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$25;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$25;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventCameraQuickExpose;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventCameraQuickExpose;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    goto :goto_0
.end method

.method public onTakePictureProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 727
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 0
    .param p1, "jpegData"    # [B

    .prologue
    .line 711
    return-void
.end method
