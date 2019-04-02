.class Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;
.super Ljava/lang/Thread;
.source "WatermarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WatermarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoUpdateWeatherInfoThread"
.end annotation


# instance fields
.field private mNeedBroadcast:Z

.field private mStop:Z

.field final synthetic this$0:Lcom/android/camera/WatermarkManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/WatermarkManager;Z)V
    .locals 3
    .param p2, "needBroadcast"    # Z

    .prologue
    const/4 v0, 0x0

    .line 497
    iput-object p1, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 494
    iput-boolean v0, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->mStop:Z

    .line 495
    iput-boolean v0, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->mNeedBroadcast:Z

    .line 498
    iput-boolean p2, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->mNeedBroadcast:Z

    .line 499
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoUpdateWeatherInfoThread-initial-mNeedBroadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->mNeedBroadcast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 500
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 503
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DoUpdateWeatherInfoThread-finish"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->mStop:Z

    .line 505
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 509
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "DoUpdateWeatherInfoThread-start"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 511
    .local v2, "start":J
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v5}, Lcom/android/camera/WatermarkManager;->access$1800(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v4

    .line 512
    .local v4, "watermarkInfodata":Lcom/android/camera/watermark/WatermarkInfoData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 513
    .local v0, "cost":J
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DoUpdateWeatherInfoThread-getWeatherInfo-cost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    if-eqz v4, :cond_0

    .line 515
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v5, v4}, Lcom/android/camera/WatermarkManager;->access$902(Lcom/android/camera/WatermarkManager;Lcom/android/camera/watermark/WatermarkInfoData;)Lcom/android/camera/watermark/WatermarkInfoData;

    .line 516
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DoUpdateWeatherInfoThread-mWeatherInfoData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v7}, Lcom/android/camera/WatermarkManager;->access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/watermark/WatermarkInfoData;->dump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 517
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    iget-object v6, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v6}, Lcom/android/camera/WatermarkManager;->access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/watermark/WatermarkInfoData;->mLocation:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/camera/WatermarkManager;->access$1900(Lcom/android/camera/WatermarkManager;Ljava/lang/String;)V

    .line 522
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->mStop:Z

    if-eqz v5, :cond_1

    .line 534
    :goto_1
    return-void

    .line 519
    :cond_0
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lcom/android/camera/WatermarkManager;->access$602(Lcom/android/camera/WatermarkManager;I)I

    .line 520
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "DoUpdateWeatherInfoThread-RESULT_READ_DATABASE_FAIL"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_1
    iget-boolean v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->mNeedBroadcast:Z

    if-eqz v5, :cond_2

    .line 525
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v5}, Lcom/android/camera/WatermarkManager;->access$2000(Lcom/android/camera/WatermarkManager;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 526
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v5}, Lcom/android/camera/WatermarkManager;->access$2100(Lcom/android/camera/WatermarkManager;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 527
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v5}, Lcom/android/camera/WatermarkManager;->access$2100(Lcom/android/camera/WatermarkManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v5}, Lcom/android/camera/WatermarkManager;->access$2100(Lcom/android/camera/WatermarkManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    :cond_2
    iget-object v5, p0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v5}, Lcom/android/camera/WatermarkManager;->access$2100(Lcom/android/camera/WatermarkManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "DoUpdateWeatherInfoThread-end"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method
