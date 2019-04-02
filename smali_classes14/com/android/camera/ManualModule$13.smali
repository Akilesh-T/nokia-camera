.class Lcom/android/camera/ManualModule$13;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule;->startReceivedMetadataCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 2650
    iput-object p1, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBokehStatusChanged(Lcom/android/ex/camera2/portability/BokehStatus;)V
    .locals 0
    .param p1, "bokehStatus"    # Lcom/android/ex/camera2/portability/BokehStatus;

    .prologue
    .line 2695
    return-void
.end method

.method public onCaptureIntentChanged(Lcom/android/ex/camera2/portability/CaptureIntent;)V
    .locals 4
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3900(Lcom/android/camera/ManualModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2666
    :goto_0
    return-void

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 2655
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2656
    sget-object p1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 2658
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2660
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4100(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 2661
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4100(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4100(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2662
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureIntentChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2663
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4100(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 2665
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2658
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onFlashRequiredChanged(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 2671
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2672
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFlashRequiredChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2673
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 2675
    :cond_0
    monitor-exit v1

    .line 2676
    return-void

    .line 2675
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onHDRRequiredChanged(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 2680
    return-void
.end method

.method public onIsoValueChanged(I)V
    .locals 4
    .param p1, "isoValue"    # I

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3900(Lcom/android/camera/ManualModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2691
    :goto_0
    return-void

    .line 2685
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4200(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 2686
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4200(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4200(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2687
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIsoValueChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2688
    iget-object v0, p0, Lcom/android/camera/ManualModule$13;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4200(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 2690
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
