.class Lcom/android/camera/captureintent/state/StateReadyForRecord$3;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord;->registerEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/captureintent/stateful/EventHandler",
        "<",
        "Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;)Lcom/google/common/base/Optional;
    .locals 3
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$300(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$302(Lcom/android/camera/captureintent/state/StateReadyForRecord;Z)Z

    .line 169
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getPreviewSurfaceSize()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 171
    .local v0, "previewSurfaceSize":Lcom/android/camera/util/Size;
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceSurfaceTexture()Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;

    .line 172
    invoke-interface {v1, v0}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;->setPreviewLayoutSize(Lcom/android/camera/util/Size;)V

    .line 173
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->onFirstPreviewReady(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 175
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    const-class v2, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;

    invoke-virtual {v1, v2}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->removeEventHandler(Ljava/lang/Class;)V

    .line 177
    .end local v0    # "previewSurfaceSize":Lcom/android/camera/util/Size;
    :cond_0
    sget-object v1, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v1
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 160
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$3;->processEvent(Lcom/android/camera/captureintent/event/EventOnSurfaceTextureUpdated;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
