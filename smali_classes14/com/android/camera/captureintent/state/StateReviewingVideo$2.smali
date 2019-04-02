.class Lcom/android/camera/captureintent/state/StateReviewingVideo$2;
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
        "Lcom/android/camera/captureintent/event/EventOnBackPress;",
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
    .line 109
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$2;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnBackPress;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnBackPress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnBackPress;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$2;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$102(Lcom/android/camera/captureintent/state/StateReviewingVideo;Z)Z

    .line 113
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$2;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$200(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 114
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnBackPress;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingVideo$2;->processEvent(Lcom/android/camera/captureintent/event/EventOnBackPress;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
