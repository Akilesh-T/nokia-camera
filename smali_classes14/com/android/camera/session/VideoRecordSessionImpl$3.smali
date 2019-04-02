.class Lcom/android/camera/session/VideoRecordSessionImpl$3;
.super Ljava/lang/Object;
.source "VideoRecordSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/VideoRecordSessionImpl;->saveVideoAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/session/VideoRecordSessionImpl;Lcom/android/camera/stats/profiler/Profile;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaSaved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->val$finalPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/data/FilmstripItemUtils;->loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "updateCaptureIndicatorThumbnail"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1100(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$900(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1000(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl$3;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "notifyTaskDone"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/android/camera/session/VideoRecordSessionImpl$3;->onMediaSaved(Landroid/net/Uri;)V

    .line 414
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 419
    return-void
.end method
