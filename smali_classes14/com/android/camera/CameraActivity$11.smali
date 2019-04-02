.class Lcom/android/camera/CameraActivity$11;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionCanceled(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needRecoverThumbnail"    # Z

    .prologue
    const/4 v5, -0x1

    .line 1598
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionCanceled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1599
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1606
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-static {p1}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1607
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentUri For Canceled Session:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1608
    invoke-static {p1}, Lcom/android/camera/Storage;->removesSessionContentUriPair(Landroid/net/Uri;)V

    .line 1609
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 1611
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1614
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 1615
    .local v1, "failedIndex":I
    if-ne v1, v5, :cond_3

    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1616
    if-eqz v0, :cond_3

    .line 1617
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 1620
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failedIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1621
    if-eq v1, v5, :cond_0

    .line 1622
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->removeAt(I)V

    .line 1623
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$4100(Lcom/android/camera/CameraActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1624
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    new-instance v3, Lcom/android/camera/CameraActivity$11$2;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/CameraActivity$11$2;-><init>(Lcom/android/camera/CameraActivity$11;Z)V

    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    .line 1629
    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v6

    .line 1624
    invoke-interface {v2, v3, v4, v6, v7}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    goto/16 :goto_0

    .line 1606
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "failedIndex":I
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public onSessionCaptureIndicatorUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V
    .locals 4
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "indicator"    # Landroid/graphics/Bitmap;
    .param p3, "rotationDegrees"    # I
    .param p4, "needAnim"    # Z

    .prologue
    .line 1514
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionCaptureIndicatorUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1515
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1522
    sget-object v1, Lcom/android/camera/session/CaptureSession;->BURST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1523
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1524
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is not available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    .line 1531
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1533
    .local v0, "photosphereModuleId":I
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$3600(Lcom/android/camera/CameraActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1536
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1537
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1, p2, p3, p4}, Lcom/android/camera/CameraActivity;->access$3700(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;IZ)V

    .line 1538
    const/4 v1, 0x7

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    goto :goto_0
.end method

.method public onSessionDone(Landroid/net/Uri;)V
    .locals 10
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1296
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSessionDone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1297
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1303
    sget-object v6, Lcom/android/camera/session/CaptureSession;->BURST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1304
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    const-string v7, "onSessionDone triggered by bulk insert."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1305
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    .line 1306
    .local v1, "currentIndex":I
    :goto_1
    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1307
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "requestLoad"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1308
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v7}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v8

    invoke-interface {v5, v2, v6, v8, v9}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    .line 1312
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/android/camera/Storage;->removesSessionContentUriPair(Landroid/net/Uri;)V

    .line 1313
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    goto :goto_0

    .line 1305
    .end local v1    # "currentIndex":I
    :cond_3
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    .line 1309
    .restart local v1    # "currentIndex":I
    :cond_5
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1310
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v7}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v8

    invoke-interface {v5, v2, v6, v8, v9}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V

    goto :goto_2

    .line 1317
    .end local v1    # "currentIndex":I
    :cond_6
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-static {p1}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1320
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_3
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContentUri For Session:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1321
    if-nez v0, :cond_9

    .line 1322
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    goto/16 :goto_0

    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_8
    move-object v0, p1

    .line 1317
    goto :goto_3

    .line 1327
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_9
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$2900(Lcom/android/camera/CameraActivity;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1328
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add to mMediaStoreIds -  onSessionDone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1330
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$2900(Lcom/android/camera/CameraActivity;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_a
    invoke-static {p1}, Lcom/android/camera/Storage;->removesSessionContentUriPair(Landroid/net/Uri;)V

    .line 1334
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 1337
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1338
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$3000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$3000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/data/PhotoItemFactory;->queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v2

    .line 1348
    .local v2, "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_b
    :goto_4
    if-nez v2, :cond_f

    .line 1349
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSessionDone: Could not find LocalData for URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1339
    .end local v2    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_c
    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1340
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$3100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$3100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/data/VideoItemFactory;->queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v2

    .restart local v2    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_d
    goto :goto_4

    .line 1342
    .end local v2    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    goto :goto_4

    .line 1353
    :cond_f
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1357
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v4

    .line 1358
    .local v4, "pos":I
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pos For sessionUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1359
    if-ne v4, v5, :cond_10

    .line 1360
    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v4

    .line 1362
    :cond_10
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pos For contentUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1364
    if-ne v4, v5, :cond_11

    .line 1367
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    .line 1383
    :goto_5
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1384
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraModule;->onSessionDone()V

    goto/16 :goto_0

    .line 1372
    :cond_11
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1373
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v3

    .line 1374
    .local v3, "oldSessionData":Lcom/android/camera/data/FilmstripItem;
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->getFilmstripVisibility()I

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    .line 1375
    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/camera/filmstrip/FilmstripController;->isVisible(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1376
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "session item visible, setting transition placeholder"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1378
    invoke-static {p1}, Lcom/android/camera/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 1377
    invoke-virtual {v2, v5}, Lcom/android/camera/data/FilmstripItemBase;->setSessionPlaceholderBitmap(Lcom/google/common/base/Optional;)V

    .line 1380
    :cond_12
    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_5
.end method

.method public onSessionFailed(Landroid/net/Uri;IZZ)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "failureMessageId"    # I
    .param p3, "removeFromFilmstrip"    # Z
    .param p4, "needRecoverThumbnail"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1545
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSessionFailed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", failureMessageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", removeFromFilmstrip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1546
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1553
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    invoke-static {p1}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1554
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentUri For Session:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1555
    invoke-static {p1}, Lcom/android/camera/Storage;->removesSessionContentUriPair(Landroid/net/Uri;)V

    .line 1556
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 1558
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1561
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v2

    .line 1562
    .local v2, "failedIndex":I
    if-ne v2, v3, :cond_3

    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1563
    if-eqz v0, :cond_3

    .line 1564
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v2

    .line 1567
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failedIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1569
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    .line 1570
    .local v1, "currentIndex":I
    :goto_2
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1572
    if-ne v1, v2, :cond_4

    .line 1573
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/CameraActivity;->access$3300(Lcom/android/camera/CameraActivity;I)V

    .line 1574
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4, p2}, Lcom/android/camera/CameraActivity;->access$3800(Lcom/android/camera/CameraActivity;I)V

    .line 1575
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    .line 1577
    :cond_4
    if-eqz p3, :cond_0

    .line 1578
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$3900(Lcom/android/camera/CameraActivity;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1579
    if-eq v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->canDelete()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1580
    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->removeAt(I)V

    .line 1585
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$4100(Lcom/android/camera/CameraActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1586
    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v3

    new-instance v4, Lcom/android/camera/CameraActivity$11$1;

    invoke-direct {v4, p0, p4}, Lcom/android/camera/CameraActivity$11$1;-><init>(Lcom/android/camera/CameraActivity$11;Z)V

    iget-object v5, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    .line 1591
    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v6

    .line 1586
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    goto/16 :goto_0

    .line 1553
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "currentIndex":I
    .end local v2    # "failedIndex":I
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "failedIndex":I
    :cond_7
    move v1, v3

    .line 1569
    goto/16 :goto_2

    .line 1581
    .restart local v1    # "currentIndex":I
    :cond_8
    if-eqz v0, :cond_5

    .line 1582
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove file :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1583
    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Storage;->removeFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    goto :goto_3
.end method

.method public onSessionPictureDataUpdate([BI)V
    .locals 2
    .param p1, "pictureData"    # [B
    .param p2, "orientation"    # I

    .prologue
    .line 1641
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSessionPictureDataUpdate"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraModule;->onSessionPictureDataUpdate([BI)V

    .line 1645
    :cond_0
    return-void
.end method

.method public onSessionPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "postProcessPreview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 1389
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1395
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSessionPostProcessImageDone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1397
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1398
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentUri For Session:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1399
    if-nez v0, :cond_4

    .line 1400
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    goto :goto_0

    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_3
    move-object v0, p1

    .line 1397
    goto :goto_1

    .line 1405
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$2900(Lcom/android/camera/CameraActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1406
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add to mMediaStoreIds - onSessionPostProcessImageDone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1407
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$2900(Lcom/android/camera/CameraActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    :cond_5
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1412
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$3000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$3000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/data/PhotoItemFactory;->queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;

    move-result-object v1

    .line 1422
    .local v1, "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_6
    :goto_2
    if-nez v1, :cond_a

    .line 1423
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSessionPostProcessImageDone: Could not find LocalData for URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1413
    .end local v1    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_7
    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1414
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$3100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$3100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/data/VideoItemFactory;->queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;

    move-result-object v1

    .restart local v1    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_8
    goto :goto_2

    .line 1416
    .end local v1    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "newData":Lcom/android/camera/data/FilmstripItemBase;, "Lcom/android/camera/data/FilmstripItemBase<*>;"
    goto :goto_2

    .line 1427
    :cond_a
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1428
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v3

    .line 1429
    .local v3, "pos":I
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pos For sessionUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1431
    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 1434
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    .line 1450
    :goto_3
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1451
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session is not available : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1452
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/camera/CameraActivity$11;->onSessionCanceled(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 1439
    :cond_b
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1440
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 1441
    .local v2, "oldSessionData":Lcom/android/camera/data/FilmstripItem;
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/CameraAppUI;->getFilmstripVisibility()I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    .line 1442
    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/camera/filmstrip/FilmstripController;->isVisible(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1443
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "session item visible, setting transition placeholder"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1445
    invoke-static {p1}, Lcom/android/camera/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 1444
    invoke-virtual {v1, v4}, Lcom/android/camera/data/FilmstripItemBase;->setSessionPlaceholderBitmap(Lcom/google/common/base/Optional;)V

    .line 1447
    :cond_c
    iget-object v4, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_3
.end method

.method public onSessionProgress(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "progress"    # I

    .prologue
    const/4 v2, -0x1

    .line 1463
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSessionProgress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1464
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1470
    if-ltz p2, :cond_0

    .line 1475
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1476
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentUri For Session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1478
    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    .line 1479
    .local v1, "currentIndex":I
    :goto_2
    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1480
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    .line 1481
    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 1480
    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2, p2}, Lcom/android/camera/CameraActivity;->access$3300(Lcom/android/camera/CameraActivity;I)V

    goto :goto_0

    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "currentIndex":I
    :cond_3
    move-object v0, p1

    .line 1475
    goto :goto_1

    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_4
    move v1, v2

    .line 1478
    goto :goto_2
.end method

.method public onSessionProgressText(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageId"    # I

    .prologue
    const/4 v1, -0x1

    .line 1488
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionProgressText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1489
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1495
    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v0

    .line 1496
    .local v0, "currentIndex":I
    :goto_1
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    .line 1498
    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1497
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1, p2}, Lcom/android/camera/CameraActivity;->access$3400(Lcom/android/camera/CameraActivity;I)V

    goto :goto_0

    .end local v0    # "currentIndex":I
    :cond_2
    move v0, v1

    .line 1495
    goto :goto_1
.end method

.method public onSessionQueued(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1265
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionQueued: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1266
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1272
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1276
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/data/SessionItem;->create(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 1277
    .local v0, "newData":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/data/SessionItem;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v2, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    goto :goto_0
.end method

.method public onSessionRawImageSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1458
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionRawImageSaved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method public onSessionResultMsg(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageId"    # I

    .prologue
    .line 1505
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionResultMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    .line 1507
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    .line 1508
    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$3500(Lcom/android/camera/CameraActivity;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 1510
    :cond_0
    return-void
.end method

.method public onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1636
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSessionThumbnailUpdate"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1637
    return-void
.end method

.method public onSessionUpdated(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1284
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1285
    invoke-static {p1}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isStreamingSessionUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onSessionVideoDataUpdate(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "finalPath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "orientation"    # I

    .prologue
    .line 1649
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionVideoDataUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1650
    return-void
.end method
