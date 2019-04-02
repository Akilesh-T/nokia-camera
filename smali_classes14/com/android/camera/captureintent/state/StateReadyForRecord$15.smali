.class Lcom/android/camera/captureintent/state/StateReadyForRecord$15;
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
        "Lcom/android/camera/captureintent/event/EventRecordStoped;",
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
    .line 409
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventRecordStoped;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventRecordStoped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventRecordStoped;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->access$000(Lcom/android/camera/captureintent/state/StateReadyForRecord;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReadyForRecord$15$1;-><init>(Lcom/android/camera/captureintent/state/StateReadyForRecord$15;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 425
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 409
    check-cast p1, Lcom/android/camera/captureintent/event/EventRecordStoped;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForRecord$15;->processEvent(Lcom/android/camera/captureintent/event/EventRecordStoped;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
