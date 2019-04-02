.class Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;
.super Ljava/lang/Object;
.source "DualSightPreviewRender.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ZOOM_MINIMUM_WAIT_MILLIS:J = 0x21L


# instance fields
.field private mDelayZoomCallUntilMillis:J

.field private mIsMainCamera:Ljava/lang/Boolean;

.field private mIsMainZoomEnable:Z

.field private mIsSlaveZoomEnable:Z

.field final synthetic this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    const/4 v2, 0x1

    .line 1576
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mDelayZoomCallUntilMillis:J

    .line 1582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    .line 1583
    iput-boolean v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainZoomEnable:Z

    .line 1584
    iput-boolean v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsSlaveZoomEnable:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v3, 0x1

    .line 1587
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    monitor-enter v5

    .line 1588
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1589
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 1590
    .local v2, "sf":F
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1591
    iget-boolean v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainZoomEnable:Z

    if-nez v4, :cond_0

    .line 1592
    monitor-exit v5

    .line 1617
    .end local v2    # "sf":F
    :goto_0
    return v3

    .line 1594
    .restart local v2    # "sf":F
    :cond_0
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->updateZoom(F)V

    .line 1607
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1608
    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mDelayZoomCallUntilMillis:J

    cmp-long v4, v0, v6

    if-lez v4, :cond_5

    .line 1609
    const-wide/16 v6, 0x21

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mDelayZoomCallUntilMillis:J

    .line 1610
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1611
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->getZoom()F

    move-result v4

    :goto_2
    invoke-interface {v6, v7, v4}, Lcom/android/camera/opengl/GestureChangedListener;->onZoom(ZF)V

    .line 1612
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 1616
    .end local v0    # "now":J
    .end local v2    # "sf":F
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1596
    .restart local v2    # "sf":F
    :cond_2
    :try_start_1
    iget-boolean v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsSlaveZoomEnable:Z

    if-nez v4, :cond_3

    .line 1597
    monitor-exit v5

    goto :goto_0

    .line 1599
    :cond_3
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->updateSlaveZoom(F)V

    goto :goto_1

    .line 1611
    .restart local v0    # "now":J
    :cond_4
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->getSlaveZoom()F

    move-result v4

    goto :goto_2

    .line 1614
    :cond_5
    monitor-exit v5

    goto :goto_0

    .line 1616
    .end local v0    # "now":J
    .end local v2    # "sf":F
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1617
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1622
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    monitor-enter v2

    .line 1623
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1624
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1900(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1625
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 1650
    :goto_0
    return v0

    .line 1627
    :cond_1
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .line 1628
    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v3

    .line 1629
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .line 1630
    invoke-static {v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .line 1631
    invoke-static {v6}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v6

    .line 1627
    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->isMainCamera(Lcom/android/camera/opengl/dualsight/DualSightMode;IFLandroid/graphics/RectF;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    .line 1633
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_effect_mode_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 1634
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainZoomEnable:Z

    .line 1638
    :goto_1
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_effect_mode_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 1639
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsSlaveZoomEnable:Z

    .line 1643
    :goto_2
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 1644
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1645
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/opengl/GestureChangedListener;->onZoomStarted()V

    .line 1646
    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1636
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainZoomEnable:Z

    goto :goto_1

    .line 1641
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsSlaveZoomEnable:Z

    goto :goto_2

    .line 1649
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 1650
    goto/16 :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 1656
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1657
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/opengl/GestureChangedListener;->onZoomStopped()V

    .line 1659
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;->mIsMainCamera:Ljava/lang/Boolean;

    .line 1661
    :cond_1
    monitor-exit v1

    .line 1662
    return-void

    .line 1661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
