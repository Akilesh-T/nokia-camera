.class public Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateBackgroundWithSurfaceTexture.java"


# instance fields
.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p3, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 61
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 62
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 63
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    .line 64
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 65
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->registerEventHandlers()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;
    .locals 1
    .param p0, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p2, "resourceSurfaceTexture":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method private registerEventHandlers()V
    .locals 6

    .prologue
    .line 70
    new-instance v2, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$1;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$1;-><init>(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)V

    .line 79
    .local v2, "resumeHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventResume;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventResume;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 82
    new-instance v3, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$2;

    invoke-direct {v3, p0}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$2;-><init>(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)V

    .line 90
    .local v3, "surfaceTextureDestroyedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureDestroyed;

    invoke-virtual {p0, v4, v3}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 93
    sget-object v5, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v4}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v4}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 96
    :pswitch_0
    new-instance v1, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$3;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$3;-><init>(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)V

    .line 109
    .local v1, "recordStopingEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordStoping;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventRecordStoping;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 112
    new-instance v0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture$4;-><init>(Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;)V

    .line 125
    .local v0, "recordStopedEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRecordStoped;>;"
    const-class v4, Lcom/android/camera/captureintent/event/EventRecordStoped;

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getResourceSurfaceTexture()Lcom/android/camera/async/RefCountBase;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public onEnter()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 141
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackgroundWithSurfaceTexture;->mResourceSurfaceTexture:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 142
    return-void
.end method
