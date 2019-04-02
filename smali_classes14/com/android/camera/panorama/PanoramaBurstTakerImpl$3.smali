.class Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;
.super Ljava/lang/Object;
.source "PanoramaBurstTakerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->startBurst(Lcom/android/camera/burst/BurstController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRepeatingRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

.field final synthetic val$boostTimer:Ljava/util/Timer;

.field final synthetic val$isPanoramaEnd:Lcom/android/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoramaBurstTakerImpl;Lcom/android/camera/async/ConcurrentState;Ljava/util/Timer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->this$0:Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

    iput-object p2, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->val$isPanoramaEnd:Lcom/android/camera/async/ConcurrentState;

    iput-object p3, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->val$boostTimer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->mRepeatingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->mRepeatingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->val$isPanoramaEnd:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->mRepeatingRunnable:Ljava/lang/Runnable;

    .line 147
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->val$boostTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 153
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;->val$boostTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3$1;-><init>(Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
