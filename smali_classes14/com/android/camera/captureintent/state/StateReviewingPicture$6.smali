.class Lcom/android/camera/captureintent/state/StateReviewingPicture$6;
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
        "Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;",
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
    .line 186
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

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
    .line 189
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .line 190
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->from(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateReadyForCapture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 186
    check-cast p1, Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture$6;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
