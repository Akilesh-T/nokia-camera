.class Lcom/android/camera/captureintent/VideoIntentSession$4;
.super Ljava/lang/Object;
.source "VideoIntentSession.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/VideoIntentSession;->saveVideoAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/VideoIntentSession;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/VideoIntentSession;Lcom/android/camera/stats/profiler/Profile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    iput-object p2, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$finalPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$guard:Lcom/android/camera/stats/profiler/Profile;

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

    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1000(Lcom/android/camera/captureintent/VideoIntentSession;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/Storage;->addSessionContentUriPair(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 539
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1200(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v1}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1000(Lcom/android/camera/captureintent/VideoIntentSession;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$finalPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$finalPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/data/FilmstripItemUtils;->loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v6}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1100(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/SessionNotifier;->notifySessionVideoDataAvailable(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 540
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->finalizeSession()V

    .line 541
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1002(Lcom/android/camera/captureintent/VideoIntentSession;Landroid/net/Uri;)Landroid/net/Uri;

    .line 542
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "notifySessionVideoDataAvailable"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/captureintent/VideoIntentSession;->finishWithFailure(IZ)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$4;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "finishWithFailure : uri is null"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/VideoIntentSession$4;->onMediaSaved(Landroid/net/Uri;)V

    .line 552
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 557
    return-void
.end method
