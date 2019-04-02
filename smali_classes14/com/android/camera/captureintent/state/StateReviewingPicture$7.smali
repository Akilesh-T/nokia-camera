.class Lcom/android/camera/captureintent/state/StateReviewingPicture$7;
.super Ljava/lang/Object;
.source "StateReviewingPicture.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReviewingPicture;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventPictureCompressed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventPictureCompressed;)Lcom/google/common/base/Optional;
    .locals 8
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventPictureCompressed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventPictureCompressed;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v5, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$300(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    iget-object v5, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .line 204
    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v5}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    .line 205
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureCompressed;->getPictureData()[B

    move-result-object v7

    .line 202
    invoke-static {v6, v5, v7}, Lcom/android/camera/captureintent/state/StateSavingPicture;->from(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/android/camera/async/RefCountBase;[B)Lcom/android/camera/captureintent/state/StateSavingPicture;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 233
    :goto_0
    return-object v5

    .line 208
    :cond_0
    iget-object v5, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$700(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureCompressed;->getPictureData()[B

    move-result-object v2

    .line 210
    .local v2, "pictureData":[B
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureCompressed;->getOrientation()I

    move-result v3

    .line 212
    .local v3, "pictureOrientation":I
    iget-object v5, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v5}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v5}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    .line 213
    .local v0, "camera":Lcom/android/camera/one/OneCamera;
    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v5, v6, :cond_2

    const/4 v1, 0x0

    .line 214
    .local v1, "mirrorSettings":Z
    :goto_1
    invoke-static {}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get mirrorFlag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iget-object v5, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .line 217
    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v5}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    .line 218
    .local v4, "resourceConstructed":Lcom/android/camera/captureintent/resource/ResourceConstructed;
    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCameraHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;

    invoke-direct {v6, p0, v2, v3, v1}, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture$7;[BIZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    .end local v0    # "camera":Lcom/android/camera/one/OneCamera;
    .end local v1    # "mirrorSettings":Z
    .end local v2    # "pictureData":[B
    .end local v3    # "pictureOrientation":I
    .end local v4    # "resourceConstructed":Lcom/android/camera/captureintent/resource/ResourceConstructed;
    :cond_1
    sget-object v5, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    goto :goto_0

    .line 213
    .restart local v0    # "camera":Lcom/android/camera/one/OneCamera;
    .restart local v2    # "pictureData":[B
    .restart local v3    # "pictureOrientation":I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v5}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getMirrorSetting()Z

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 197
    check-cast p1, Lcom/android/camera/captureintent/event/EventPictureCompressed;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->processEvent(Lcom/android/camera/captureintent/event/EventPictureCompressed;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
