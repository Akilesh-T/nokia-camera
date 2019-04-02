.class Lcom/android/camera/captureintent/state/StateReviewingPicture$8;
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
        "Lcom/android/camera/captureintent/event/EventPictureDecoded;",
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
    .line 240
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$8;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventPictureDecoded;)Lcom/google/common/base/Optional;
    .locals 2
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
    .line 243
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$8;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureDecoded;->getPictureData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$202(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;

    .line 244
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$8;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventPictureDecoded;->getPictureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$800(Lcom/android/camera/captureintent/state/StateReviewingPicture;Landroid/graphics/Bitmap;)V

    .line 245
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 240
    check-cast p1, Lcom/android/camera/captureintent/event/EventPictureDecoded;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture$8;->processEvent(Lcom/android/camera/captureintent/event/EventPictureDecoded;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
