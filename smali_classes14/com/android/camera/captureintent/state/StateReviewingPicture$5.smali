.class Lcom/android/camera/captureintent/state/StateReviewingPicture$5;
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
        "Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;",
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
    .line 153
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;)Lcom/google/common/base/Optional;
    .locals 6
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$200(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$302(Lcom/android/camera/captureintent/state/StateReviewingPicture;Z)Z

    .line 159
    sget-object v3, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    .line 174
    :goto_0
    return-object v3

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v3

    check-cast v3, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v3}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v3

    check-cast v3, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;

    invoke-interface {v3}, Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;->getCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    .line 165
    .local v0, "camera":Lcom/android/camera/one/OneCamera;
    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v3, v4, :cond_1

    const/4 v2, 0x0

    .line 166
    .local v2, "mirrorSettings":Z
    :goto_1
    invoke-static {}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get mirrorFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    if-eqz v2, :cond_2

    .line 168
    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$500(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$600(Lcom/android/camera/captureintent/state/StateReviewingPicture;Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 169
    .local v1, "mirrorData":[B
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .line 171
    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v3

    check-cast v3, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v3}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    .line 169
    invoke-static {v4, v3, v1}, Lcom/android/camera/captureintent/state/StateSavingPicture;->from(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/android/camera/async/RefCountBase;[B)Lcom/android/camera/captureintent/state/StateSavingPicture;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    goto :goto_0

    .line 165
    .end local v1    # "mirrorData":[B
    .end local v2    # "mirrorSettings":Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v3

    check-cast v3, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v3}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->getMirrorSetting()Z

    move-result v2

    goto :goto_1

    .line 174
    .restart local v2    # "mirrorSettings":Z
    :cond_2
    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .line 176
    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v3

    check-cast v3, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v3}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v5

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .line 177
    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$200(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 174
    invoke-static {v4, v5, v3}, Lcom/android/camera/captureintent/state/StateSavingPicture;->from(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/android/camera/async/RefCountBase;[B)Lcom/android/camera/captureintent/state/StateSavingPicture;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 153
    check-cast p1, Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
