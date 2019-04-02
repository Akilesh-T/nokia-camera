.class final Lcom/android/camera/BokehModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BokehModule;
    .param p2, "x1"    # Lcom/android/camera/BokehModule$1;

    .prologue
    .line 1384
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule$AutoFocusCallback;-><init>(Lcom/android/camera/BokehModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1387
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusResult(Z)V

    .line 1388
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$400(Lcom/android/camera/BokehModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$3800(Lcom/android/camera/BokehModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/BokehModule;->mAutoFocusTime:J

    .line 1393
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-wide v2, v2, Lcom/android/camera/BokehModule;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms   focused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "onAutoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3900(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3900(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "onAutoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3900(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1400
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BokehModule;->access$3902(Lcom/android/camera/BokehModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 1402
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/BokehModule;->access$4000(Lcom/android/camera/BokehModule;I)V

    .line 1403
    iget-object v0, p0, Lcom/android/camera/BokehModule$AutoFocusCallback;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4100(Lcom/android/camera/BokehModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
