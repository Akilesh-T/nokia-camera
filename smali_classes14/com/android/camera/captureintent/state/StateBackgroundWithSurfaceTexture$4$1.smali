.class Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4$1;
.super Ljava/lang/Object;
.source "StateBackgroundWithSurfaceTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;->processEvent(Lcom/android/camera/captureintent/event/EventRecordStoped;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4$1;->this$1:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4$1;->this$1:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;

    iget-object v0, v0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;->this$0:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->access$000(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->onRecordingStoped()V

    .line 120
    return-void
.end method
