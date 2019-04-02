.class Lcom/android/camera/captureintent/state/StateReadyForRecord$18;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventVideoAvailable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$18;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventVideoAvailable;)Lcom/google/common/base/Optional;
    .locals 7
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventVideoAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventVideoAvailable;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$18;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$18;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .line 467
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 468
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventVideoAvailable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventVideoAvailable;->getOrientation()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventVideoAvailable;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventVideoAvailable;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventVideoAvailable;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    .line 466
    invoke-static/range {v0 .. v6}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->from(Lcom/android/camera/captureintent/state/StateReadyForRecord;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/android/camera/captureintent/state/StateReviewingVideo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 463
    check-cast p1, Lcom/android/camera/captureintent/event/EventVideoAvailable;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$18;->processEvent(Lcom/android/camera/captureintent/event/EventVideoAvailable;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
