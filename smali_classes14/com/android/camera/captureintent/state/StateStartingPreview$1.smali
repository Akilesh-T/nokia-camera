.class Lcom/android/camera/captureintent/state/StateStartingPreview$1;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateStartingPreview;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventPause;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateStartingPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateStartingPreview;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventPause;)Lcom/google/common/base/Optional;
    .locals 3
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventPause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventPause;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 105
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$000(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/captureintent/state/StateStartingPreview;

    .line 106
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateStartingPreview;->access$100(Lcom/android/camera/captureintent/state/StateStartingPreview;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 100
    check-cast p1, Lcom/android/camera/captureintent/event/EventPause;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateStartingPreview$1;->processEvent(Lcom/android/camera/captureintent/event/EventPause;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
