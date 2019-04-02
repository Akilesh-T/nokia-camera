.class Lcom/android/camera/captureintent/state/StateReviewingVideo$7;
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
        "Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;",
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
    .line 170
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;)Lcom/google/common/base/Optional;
    .locals 6
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$100(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/camera/captureintent/CaptureVideoInfo;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$400(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$500(Lcom/android/camera/captureintent/state/StateReviewingVideo;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$300(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v4}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$600(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v5}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$700(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/captureintent/CaptureVideoInfo;-><init>(Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->setCaptureVideoInfo(Lcom/android/camera/captureintent/CaptureVideoInfo;)V

    .line 176
    :cond_0
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 170
    check-cast p1, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;->processEvent(Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
