.class public final Lcom/android/camera/captureintent/state/StateForeground;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateForeground.java"


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


# direct methods
.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 51
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateForeground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 52
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForeground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 53
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateForeground;->registerEventHandlers()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateForeground;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateForeground;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForeground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateForeground;
    .locals 1
    .param p0, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateForeground;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateForeground;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/captureintent/state/StateForeground;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method private registerEventHandlers()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/android/camera/captureintent/state/StateForeground$1;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateForeground$1;-><init>(Lcom/android/camera/captureintent/state/StateForeground;)V

    .line 65
    .local v0, "pauseHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPause;>;"
    const-class v2, Lcom/android/camera/captureintent/event/EventPause;

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/captureintent/state/StateForeground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 68
    new-instance v1, Lcom/android/camera/captureintent/state/StateForeground$2;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateForeground$2;-><init>(Lcom/android/camera/captureintent/state/StateForeground;)V

    .line 92
    .local v1, "surfaceTextureAvailableHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;>;"
    const-class v2, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/captureintent/state/StateForeground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 94
    return-void
.end method


# virtual methods
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
    .line 98
    sget-object v0, Lcom/android/camera/captureintent/state/StateForeground;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateForeground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 104
    return-void
.end method
