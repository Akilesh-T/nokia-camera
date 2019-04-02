.class Lcom/android/camera/session/BurstCaptureSessionImpl$4;
.super Ljava/lang/Object;
.source "BurstCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/BurstCaptureSessionImpl;->insertMediaToMediaStore(Landroid/content/ContentValues;Lcom/google/common/util/concurrent/SettableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/session/BurstCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$4;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$4;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$4;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$4;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$4;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$500(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$4;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$500(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$4;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$600(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 380
    :cond_1
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 385
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 390
    return-void
.end method
