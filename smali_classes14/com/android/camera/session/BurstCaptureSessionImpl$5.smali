.class Lcom/android/camera/session/BurstCaptureSessionImpl$5;
.super Ljava/lang/Object;
.source "BurstCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/BurstCaptureSessionImpl;->bulkInsertMediaToMediaStore([Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/session/BurstCaptureSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$5;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$5;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$500(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$5;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$500(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    sget-object v1, Lcom/android/camera/session/CaptureSession;->BURST_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$5;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$600(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 401
    :cond_0
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 406
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 411
    return-void
.end method
