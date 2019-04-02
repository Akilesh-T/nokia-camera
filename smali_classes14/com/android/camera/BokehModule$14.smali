.class Lcom/android/camera/BokehModule$14;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehModule;->startReceivedMetadataCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 3097
    iput-object p1, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBokehStatusChanged(Lcom/android/ex/camera2/portability/BokehStatus;)V
    .locals 5
    .param p1, "bokehStatus"    # Lcom/android/ex/camera2/portability/BokehStatus;

    .prologue
    .line 3158
    iget-object v1, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$5300(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    monitor-enter v2

    .line 3159
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$5300(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    .line 3160
    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$5300(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 3161
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBokehStatusChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3162
    iget-object v1, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$5300(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 3163
    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->TOUCH_TO_FOCUS:Lcom/android/ex/camera2/portability/BokehStatus;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->UNKNOWN:Lcom/android/ex/camera2/portability/BokehStatus;

    if-eq p1, v1, :cond_0

    .line 3165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3166
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3167
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3168
    iget-object v1, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v1}, Lcom/android/camera/BokehModule;->access$3100(Lcom/android/camera/BokehModule;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3171
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 3172
    return-void

    .line 3171
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureIntentChanged(Lcom/android/ex/camera2/portability/CaptureIntent;)V
    .locals 6
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 3100
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne p1, v2, :cond_1

    .line 3101
    const/4 v0, 0x0

    .line 3102
    .local v0, "flashRequired":Z
    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v3

    monitor-enter v3

    .line 3103
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3104
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3106
    const/4 v1, 0x0

    .line 3107
    .local v1, "isHDRRequiredLockToFalse":Z
    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v3

    monitor-enter v3

    .line 3108
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 3109
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3110
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 3111
    :cond_0
    sget-object p1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 3115
    .end local v0    # "flashRequired":Z
    .end local v1    # "isHDRRequiredLockToFalse":Z
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$5100(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v3

    monitor-enter v3

    .line 3116
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$5100(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    .line 3117
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$5100(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 3118
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureIntentChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3119
    iget-object v2, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$5100(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 3121
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3122
    return-void

    .line 3104
    .restart local v0    # "flashRequired":Z
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3108
    .restart local v1    # "isHDRRequiredLockToFalse":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3109
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 3121
    .end local v0    # "flashRequired":Z
    .end local v1    # "isHDRRequiredLockToFalse":Z
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public onFlashRequiredChanged(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 3127
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3128
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 3129
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 3131
    :cond_0
    monitor-exit v1

    .line 3132
    return-void

    .line 3131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onHDRRequiredChanged(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 3136
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 3137
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3138
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3139
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 3140
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3141
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHDRRequiredChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3142
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 3144
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3145
    return-void

    .line 3138
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3144
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onIsoValueChanged(I)V
    .locals 3
    .param p1, "isoValue"    # I

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5200(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 3150
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5200(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5200(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/android/camera/BokehModule$14;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$5200(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 3153
    :cond_0
    monitor-exit v1

    .line 3154
    return-void

    .line 3153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
