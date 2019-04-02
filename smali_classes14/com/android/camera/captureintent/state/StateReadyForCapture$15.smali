.class Lcom/android/camera/captureintent/state/StateReadyForCapture$15;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventPictureDecoded;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventPictureDecoded;)Lcom/google/common/base/Optional;
    .locals 4
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventPictureDecoded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventPictureDecoded;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$1000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    .line 484
    :goto_0
    return-object v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$1002(Lcom/android/camera/captureintent/state/StateReadyForCapture;Z)Z

    .line 484
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .line 485
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/captureintent/state/StateReadyForCapture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 486
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureDecoded;->getPictureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureDecoded;->getPictureData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 484
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->from(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)Lcom/android/camera/captureintent/state/StateReviewingPicture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 472
    check-cast p1, Lcom/android/camera/captureintent/event/EventPictureDecoded;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$15;->processEvent(Lcom/android/camera/captureintent/event/EventPictureDecoded;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
