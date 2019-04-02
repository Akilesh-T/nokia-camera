.class Lcom/android/camera/captureintent/state/StateReviewingPicture$9;
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
        "Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;",
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
    .line 252
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$9;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;)Lcom/google/common/base/Optional;
    .locals 4
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
    .line 255
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$9;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$100(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/android/camera/captureintent/CapturePhotoInfo;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$9;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$500(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$9;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$200(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/captureintent/CapturePhotoInfo;-><init>(Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->setCapturePhotoInfo(Lcom/android/camera/captureintent/CapturePhotoInfo;)V

    .line 258
    :cond_0
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 252
    check-cast p1, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture$9;->processEvent(Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
