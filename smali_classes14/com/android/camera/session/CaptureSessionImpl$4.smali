.class Lcom/android/camera/session/CaptureSessionImpl$4;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionImpl;->saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionImpl;

.field final synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0, p1}, Lcom/android/camera/session/CaptureSessionImpl;->access$002(Lcom/android/camera/session/CaptureSessionImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 551
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$300(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/CaptureSessionImpl;->access$200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$400(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$4;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$400(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V

    .line 556
    :cond_0
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lcom/android/camera/session/CaptureSessionImpl$4;->onMediaSaved(Landroid/net/Uri;)V

    .line 561
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 566
    return-void
.end method
