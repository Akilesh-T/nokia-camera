.class final Lcom/android/camera/PhotoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 2226
    iput-object p1, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 2226
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 2229
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusResult(Z)V

    .line 2230
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    :goto_0
    return-void

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$9100(Lcom/android/camera/PhotoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    .line 2235
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

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

    .line 2236
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2237
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "onAutoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2239
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2240
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "onAutoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2241
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$9200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2242
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$9202(Lcom/android/camera/PhotoModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 2244
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;I)V

    .line 2245
    iget-object v0, p0, Lcom/android/camera/PhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
