.class final Lcom/android/camera/BeautyModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/camera/BeautyModule$AutoFocusCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BeautyModule;
    .param p2, "x1"    # Lcom/android/camera/BeautyModule$1;

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule$AutoFocusCallback;-><init>(Lcom/android/camera/BeautyModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1038
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusResult(Z)V

    .line 1039
    iget-object v0, p0, Lcom/android/camera/BeautyModule$AutoFocusCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$1100(Lcom/android/camera/BeautyModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule$AutoFocusCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/BeautyModule$AutoFocusCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v1}, Lcom/android/camera/BeautyModule;->access$3400(Lcom/android/camera/BeautyModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/BeautyModule;->mAutoFocusTime:J

    .line 1044
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BeautyModule$AutoFocusCallback;->this$0:Lcom/android/camera/BeautyModule;

    iget-wide v2, v2, Lcom/android/camera/BeautyModule;->mAutoFocusTime:J

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

    .line 1045
    iget-object v0, p0, Lcom/android/camera/BeautyModule$AutoFocusCallback;->this$0:Lcom/android/camera/BeautyModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/BeautyModule;->access$3500(Lcom/android/camera/BeautyModule;I)V

    .line 1046
    iget-object v0, p0, Lcom/android/camera/BeautyModule$AutoFocusCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$3600(Lcom/android/camera/BeautyModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
