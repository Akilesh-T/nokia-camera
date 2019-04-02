.class Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressPercentageRunnable"
.end annotation


# static fields
.field private static final UPDATE_DELAY_MILLIS:J = 0x1eL


# instance fields
.field private final processingMedia:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

.field private final startTime:J

.field final synthetic this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;)V
    .locals 2
    .param p2, "media"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->processingMedia:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->startTime:J

    .line 166
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;)Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->processingMedia:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->startTime:J

    sub-long v2, v4, v6

    .line 171
    .local v2, "timeSoFar":J
    const/16 v1, 0x64

    const/high16 v4, 0x42c80000    # 100.0f

    long-to-float v5, v2

    invoke-static {}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->access$100()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    .local v0, "progress":I
    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->processingMedia:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;

    invoke-virtual {v1, v0}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$ProcessingMedia;->updateProgressPercentage(I)V

    .line 174
    invoke-static {}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    invoke-static {v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->access$300(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v4, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable$1;

    invoke-direct {v4, p0}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable$1;-><init>(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager$UpdateProgressPercentageRunnable;->this$0:Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;

    invoke-static {v1}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;->access$400(Lcom/android/camera/SpeicalTypeProviders/ProcessingMediaManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
