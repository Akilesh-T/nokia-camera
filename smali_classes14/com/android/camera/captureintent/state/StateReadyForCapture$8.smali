.class Lcom/android/camera/captureintent/state/StateReadyForCapture$8;
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
        "Lcom/android/camera/captureintent/event/EventTapOnShutterButton;",
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
    .line 295
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventTapOnShutterButton;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventTapOnShutterButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventTapOnShutterButton;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$8;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;->getTouchCoordinate()Lcom/android/camera/ui/TouchCoordinate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$400(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/ui/TouchCoordinate;)V

    .line 299
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 295
    check-cast p1, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture$8;->processEvent(Lcom/android/camera/captureintent/event/EventTapOnShutterButton;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
