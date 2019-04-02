.class Lcom/android/camera/captureintent/state/StateForeground$1;
.super Ljava/lang/Object;
.source "StateForeground.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateForeground;->registerEventHandlers()V
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
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateForeground;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateForeground;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateForeground;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateForeground$1;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventPause;)Lcom/google/common/base/Optional;
    .locals 2
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
    .line 61
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForeground$1;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateForeground$1;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    .line 62
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateForeground;->access$000(Lcom/android/camera/captureintent/state/StateForeground;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateBackground;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackground;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lcom/android/camera/captureintent/event/EventPause;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateForeground$1;->processEvent(Lcom/android/camera/captureintent/event/EventPause;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
