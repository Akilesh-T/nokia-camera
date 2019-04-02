.class Lcom/android/camera/captureintent/state/StateReviewingPicture$3;
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
        "Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;",
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
    .line 129
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$3;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$3;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceSurfaceTexture()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;

    .line 133
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;->getLayoutSize()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;->setPreviewLayoutSize(Lcom/android/camera/util/Size;)V

    .line 134
    sget-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture$3;->processEvent(Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
