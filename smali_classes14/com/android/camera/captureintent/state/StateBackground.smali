.class public final Lcom/android/camera/captureintent/state/StateBackground;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateBackground.java"


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
    .line 64
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 65
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateBackground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 66
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 67
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateBackground;->registerEventHandlers()V

    .line 68
    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/async/RefCountBase;)V
    .locals 1
    .param p1, "stateMachine"    # Lcom/android/camera/captureintent/stateful/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/StateMachine;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/StateMachine;)V

    .line 57
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateBackground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 58
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 59
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateBackground;->registerEventHandlers()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateBackground;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateBackground;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method public static create(Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackground;
    .locals 1
    .param p0, "stateMachine"    # Lcom/android/camera/captureintent/stateful/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/StateMachine;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateBackground;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateBackground;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/captureintent/state/StateBackground;-><init>(Lcom/android/camera/captureintent/stateful/StateMachine;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateBackground;
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
            "Lcom/android/camera/captureintent/state/StateBackground;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateBackground;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/captureintent/state/StateBackground;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)V

    return-object v0
.end method

.method private registerEventHandlers()V
    .locals 3

    .prologue
    .line 72
    new-instance v1, Lcom/android/camera/captureintent/state/StateBackground$1;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateBackground$1;-><init>(Lcom/android/camera/captureintent/state/StateBackground;)V

    .line 79
    .local v1, "resumeHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventResume;>;"
    const-class v2, Lcom/android/camera/captureintent/event/EventResume;

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/captureintent/state/StateBackground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 82
    new-instance v0, Lcom/android/camera/captureintent/state/StateBackground$2;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateBackground$2;-><init>(Lcom/android/camera/captureintent/state/StateBackground;)V

    .line 106
    .local v0, "onSurfaceTextureAvailableHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;>;"
    const-class v2, Lcom/android/camera/captureintent/event/EventOnSurfaceTextureAvailable;

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/captureintent/state/StateBackground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 107
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
    .line 111
    sget-object v0, Lcom/android/camera/captureintent/state/StateBackground;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateBackground;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 117
    return-void
.end method
