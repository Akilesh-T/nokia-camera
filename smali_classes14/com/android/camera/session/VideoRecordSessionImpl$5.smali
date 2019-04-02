.class Lcom/android/camera/session/VideoRecordSessionImpl$5;
.super Ljava/lang/Object;
.source "VideoRecordSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$contentValues:Lcom/google/common/base/Optional;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/session/VideoRecordSessionImpl;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$finalPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$contentValues:Lcom/google/common/base/Optional;

    iput-object p4, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 449
    const/4 v8, 0x0

    .line 450
    .local v8, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1200(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1200(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v1, v3, :cond_3

    .line 451
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$finalPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1300(Lcom/android/camera/session/VideoRecordSessionImpl;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1500(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/PlaceholderManager;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1400(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$finalPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$contentValues:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/camera/session/PlaceholderManager;->finishDualSightVideoPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v8

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishVideoPlaceholder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 457
    if-eqz v8, :cond_4

    .line 458
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1600(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1600(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$finalPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/data/FilmstripItemUtils;->loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/session/VideoRecordSessionImpl;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 462
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "updateCaptureIndicatorThumbnail"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1100(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v3}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$900(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v4}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1000(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 465
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "notifyTaskDone"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/UsageStatistics;->getCurrentMode()I

    move-result v2

    .line 469
    .local v2, "currentMode":I
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_1

    const/4 v1, 0x5

    if-ne v2, v1, :cond_2

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1702(Lcom/android/camera/session/VideoRecordSessionImpl;I)I

    .line 475
    :cond_2
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v3}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1700(Lcom/android/camera/session/VideoRecordSessionImpl;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v4}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1800(Lcom/android/camera/session/VideoRecordSessionImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v5}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1900(Lcom/android/camera/session/VideoRecordSessionImpl;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v6}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$2000(Lcom/android/camera/session/VideoRecordSessionImpl;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/stats/UsageStatistics;->videoCaptureDoneEvent(IILjava/lang/String;IJ)V

    .line 492
    .end local v2    # "currentMode":I
    :goto_1
    return-void

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1500(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/PlaceholderManager;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1400(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$finalPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$contentValues:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/camera/session/PlaceholderManager;->finishVideoPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_0

    .line 478
    :cond_4
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1600(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 479
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1600(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 481
    :cond_5
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/session/VideoRecordSessionImpl;->finishWithFailure(IZ)V

    .line 482
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "save video fail"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "Could not write file"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v3, "Could not write file"

    invoke-static {v1, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1600(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 488
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$1600(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 490
    :cond_6
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$5;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-virtual {v1, v10, v9}, Lcom/android/camera/session/VideoRecordSessionImpl;->finishWithFailure(IZ)V

    goto :goto_1
.end method
