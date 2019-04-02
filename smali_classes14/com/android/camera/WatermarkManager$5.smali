.class Lcom/android/camera/WatermarkManager$5;
.super Landroid/database/ContentObserver;
.source "WatermarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WatermarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WatermarkManager;


# direct methods
.method constructor <init>(Lcom/android/camera/WatermarkManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WatermarkManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/camera/WatermarkManager$5;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 482
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherContentChanged-selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$5;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$1600(Lcom/android/camera/WatermarkManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$5;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$1700(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$5;->this$0:Lcom/android/camera/WatermarkManager;

    new-instance v1, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    iget-object v2, p0, Lcom/android/camera/WatermarkManager$5;->this$0:Lcom/android/camera/WatermarkManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;-><init>(Lcom/android/camera/WatermarkManager;Z)V

    invoke-static {v0, v1}, Lcom/android/camera/WatermarkManager;->access$1702(Lcom/android/camera/WatermarkManager;Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;)Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    .line 486
    iget-object v0, p0, Lcom/android/camera/WatermarkManager$5;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v0}, Lcom/android/camera/WatermarkManager;->access$1700(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->start()V

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "WeatherContentChanged => mDoUpdateWeatherInfoThread already running"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
