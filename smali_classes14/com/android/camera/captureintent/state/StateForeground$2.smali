.class Lcom/android/camera/captureintent/state/StateForeground$2;
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
        "Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;",
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
    .line 69
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateForeground$2;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;)Lcom/google/common/base/Optional;
    .locals 4
    .param p1, "event"    # Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    sget-boolean v2, Lcom/android/camera/captureintent/CaptureIntentConfig;->WORKAROUND_PREVIEW_STRETCH_BUG_NEXUS4:Z

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateForeground$2;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    .line 75
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateForeground;->access$000(Lcom/android/camera/captureintent/state/StateForeground;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureNexus4Impl;->create(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .line 82
    .local v1, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateForeground$2;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateForeground$2;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    .line 84
    invoke-static {v3}, Lcom/android/camera/captureintent/state/StateForeground;->access$000(Lcom/android/camera/captureintent/state/StateForeground;)Lcom/android/camera/async/RefCountBase;

    move-result-object v3

    .line 82
    invoke-static {v2, v3, v1}, Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateForegroundWithSurfaceTexture;

    move-result-object v0

    .line 88
    .local v0, "nextState":Lcom/android/camera/captureintent/stateful/State;
    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 89
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 78
    .end local v0    # "nextState":Lcom/android/camera/captureintent/stateful/State;
    .end local v1    # "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateForeground$2;->this$0:Lcom/android/camera/captureintent/state/StateForeground;

    .line 79
    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateForeground;->access$000(Lcom/android/camera/captureintent/state/StateForeground;)Lcom/android/camera/async/RefCountBase;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 78
    invoke-static {v2, v3}, Lcom/android/camera/captureintent/resource/ResourceSurfaceTextureImpl;->create(Lcom/android/camera/async/RefCountBase;Landroid/graphics/SurfaceTexture;)Lcom/android/camera/async/RefCountBase;

    move-result-object v1

    .restart local v1    # "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    goto :goto_0
.end method

.method public bridge synthetic processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;

    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/state/StateForeground$2;->processEvent(Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
