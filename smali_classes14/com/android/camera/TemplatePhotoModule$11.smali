.class Lcom/android/camera/TemplatePhotoModule$11;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule;->startReceivedMetadataCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$11;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBokehStatusChanged(Lcom/android/ex/camera2/portability/BokehStatus;)V
    .locals 0
    .param p1, "bokehStatus"    # Lcom/android/ex/camera2/portability/BokehStatus;

    .prologue
    .line 2187
    return-void
.end method

.method public onCaptureIntentChanged(Lcom/android/ex/camera2/portability/CaptureIntent;)V
    .locals 0
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 2165
    return-void
.end method

.method public onFlashRequiredChanged(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$11;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4700(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    monitor-enter v1

    .line 2170
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$11;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4700(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$11;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4700(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2171
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

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

    .line 2172
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$11;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoModule;->access$4700(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 2174
    :cond_0
    monitor-exit v1

    .line 2175
    return-void

    .line 2174
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
    .line 2179
    return-void
.end method

.method public onIsoValueChanged(I)V
    .locals 0
    .param p1, "isoValue"    # I

    .prologue
    .line 2184
    return-void
.end method
