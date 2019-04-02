.class Lcom/android/camera/PhotoModule$18;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->startReceivedMetadataCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 4184
    iput-object p1, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBokehStatusChanged(Lcom/android/ex/camera2/portability/BokehStatus;)V
    .locals 0
    .param p1, "bokehStatus"    # Lcom/android/ex/camera2/portability/BokehStatus;

    .prologue
    .line 4256
    return-void
.end method

.method public onCaptureIntentChanged(Lcom/android/ex/camera2/portability/CaptureIntent;)V
    .locals 4
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 4187
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4215
    :goto_0
    return-void

    .line 4188
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 4189
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4190
    sget-object p1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 4192
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4194
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne p1, v0, :cond_2

    .line 4195
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v0, :cond_5

    .line 4196
    sget-object p1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 4204
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4205
    sget-object p1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 4208
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 4209
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    .line 4210
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 4211
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

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

    .line 4212
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 4214
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4192
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 4197
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4198
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4199
    sget-object p1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_1
.end method

.method public onFlashRequiredChanged(Z)V
    .locals 5
    .param p1, "required"    # Z

    .prologue
    .line 4219
    iget-object v1, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)I

    move-result v1

    if-nez v1, :cond_1

    .line 4232
    :cond_0
    :goto_0
    return-void

    .line 4220
    :cond_1
    const/4 v0, 0x0

    .line 4221
    .local v0, "needResetCaptureIntent":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v2

    monitor-enter v2

    .line 4222
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 4223
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlashRequiredChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4224
    iget-object v1, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 4225
    move v0, p1

    .line 4227
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4229
    if-eqz v0, :cond_0

    .line 4230
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule$18;->onCaptureIntentChanged(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    goto :goto_0

    .line 4227
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onHDRRequiredChanged(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4243
    :goto_0
    return-void

    .line 4237
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 4238
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4239
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

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

    .line 4240
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 4242
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

.method public onIsoValueChanged(I)V
    .locals 3
    .param p1, "isoValue"    # I

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4253
    :goto_0
    return-void

    .line 4248
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 4249
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4250
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 4252
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
