.class Lcom/android/camera/captureintent/state/StateBackground$1;
.super Ljava/lang/Object;
.source "StateBackground.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateBackground;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventResume;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateBackground;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateBackground;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateBackground;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateBackground$1;->this$0:Lcom/android/camera/captureintent/state/StateBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventResume;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "eventResume"    # Lcom/android/camera/captureintent/event/EventResume;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventResume;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackground$1;->this$0:Lcom/android/camera/captureintent/state/StateBackground;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateBackground$1;->this$0:Lcom/android/camera/captureintent/state/StateBackground;

    .line 76
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateBackground;->access$000(Lcom/android/camera/captureintent/state/StateBackground;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateForeground;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateForeground;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lcom/android/camera/captureintent/event/EventResume;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateBackground$1;->processEvent(Lcom/android/camera/captureintent/event/EventResume;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
