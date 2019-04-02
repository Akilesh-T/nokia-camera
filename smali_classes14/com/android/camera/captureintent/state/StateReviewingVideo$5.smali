.class Lcom/android/camera/captureintent/state/StateReviewingVideo$5;
.super Ljava/lang/Object;
.source "StateReviewingVideo.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReviewingVideo;->registerEventHandlers()V
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
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;)Lcom/google/common/base/Optional;
    .locals 3
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
    .line 148
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .line 150
    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$000(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .line 151
    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$300(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 148
    invoke-static {v1, v2, v0}, Lcom/android/camera/captureintent/state/StateSavingVideo;->from(Lcom/android/camera/captureintent/state/StateReviewingVideo;Lcom/android/camera/async/RefCountBase;Landroid/net/Uri;)Lcom/android/camera/captureintent/state/StateSavingVideo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 145
    check-cast p1, Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingVideo$5;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
