.class Lcom/android/camera/captureintent/VideoIntentSession$5;
.super Ljava/lang/Object;
.source "VideoIntentSession.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$contentValues:Lcom/google/common/base/Optional;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/VideoIntentSession;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/android/camera/stats/profiler/Profile;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    iput-object p2, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$finalPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$contentValues:Lcom/google/common/base/Optional;

    iput-object p4, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p5, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1400(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/PlaceholderManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1300(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$finalPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$contentValues:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/camera/session/PlaceholderManager;->finishVideoPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v8

    .line 565
    .local v8, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishVideoPlaceholder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 566
    if-eqz v8, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1200(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v1}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1000(Lcom/android/camera/captureintent/VideoIntentSession;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$finalPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$finalPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/data/FilmstripItemUtils;->loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v6}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1100(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/SessionNotifier;->notifySessionVideoDataAvailable(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->finalizeSession()V

    .line 569
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/VideoIntentSession;->access$1002(Lcom/android/camera/captureintent/VideoIntentSession;Landroid/net/Uri;)Landroid/net/Uri;

    .line 570
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "notifySessionVideoDataAvailable"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 580
    .end local v8    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 572
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/VideoIntentSession;->finishWithFailure(IZ)V

    .line 573
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "finishWithFailure : uri is null"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 576
    .local v7, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Could not write file"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/android/camera/captureintent/VideoIntentSession;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not write file"

    invoke-static {v0, v1, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$5;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-virtual {v0, v10, v9}, Lcom/android/camera/captureintent/VideoIntentSession;->finishWithFailure(IZ)V

    goto :goto_0
.end method
