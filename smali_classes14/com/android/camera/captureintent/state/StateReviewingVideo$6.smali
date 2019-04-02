.class Lcom/android/camera/captureintent/state/StateReviewingVideo$6;
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
        "Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;",
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
    .line 158
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$6;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$6;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$200(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$6;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$6;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .line 163
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$000(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->from(Lcom/android/camera/captureintent/state/StateReviewingVideo;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 158
    check-cast p1, Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingVideo$6;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
