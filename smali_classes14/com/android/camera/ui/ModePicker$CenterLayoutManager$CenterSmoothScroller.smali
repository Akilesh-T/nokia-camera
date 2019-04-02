.class Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ModePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModePicker$CenterLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CenterSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModePicker$CenterLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModePicker$CenterLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;->this$1:Lcom/android/camera/ui/ModePicker$CenterLayoutManager;

    .line 152
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 153
    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 2
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .prologue
    .line 174
    sub-int v0, p4, p3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sub-int v1, p2, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;->this$1:Lcom/android/camera/ui/ModePicker$CenterLayoutManager;

    iget-object v0, v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v0}, Lcom/android/camera/ui/ModePicker;->access$300(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;->this$1:Lcom/android/camera/ui/ModePicker$CenterLayoutManager;

    iget-object v0, v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v0}, Lcom/android/camera/ui/ModePicker;->access$300(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;->this$1:Lcom/android/camera/ui/ModePicker$CenterLayoutManager;

    iget-object v0, v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->this$0:Lcom/android/camera/ui/ModePicker;

    new-instance v2, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller$1;-><init>(Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/camera/ui/ModePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :cond_0
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
