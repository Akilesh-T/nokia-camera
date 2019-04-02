.class Lcom/android/camera/captureintent/state/StateOpeningCamera$3;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateOpeningCamera;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "processOnCameraOpenFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$3;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .line 298
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->access$100(Lcom/android/camera/captureintent/state/StateOpeningCamera;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateFatal;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateFatal;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 293
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateOpeningCamera$3;->processEvent(Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
