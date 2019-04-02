.class Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$2;
.super Ljava/lang/Object;
.source "StateBackgroundWithSurfaceTexture.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->registerEventHandlers()V
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
        "Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$2;->this$0:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$2;->this$0:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$2;->this$0:Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    .line 87
    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->access$000(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/android/camera/captureintent/state/StateBackground;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackground;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 83
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$2;->processEvent(Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
