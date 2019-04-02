.class public final Lcom/android/camera/captureintent/state/StateIntentCompleted;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateIntentCompleted.java"


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

.field private final mResultIntent:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/google/common/base/Optional;)V
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
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    .local p3, "resultIntent":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/Intent;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 64
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 65
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 66
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted;->mResultIntent:Lcom/google/common/base/Optional;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateIntentCompleted;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateIntentCompleted;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted;->mResultIntent:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateSavingPicture;Lcom/android/camera/async/RefCountBase;Landroid/content/Intent;)Lcom/android/camera/captureintent/state/StateIntentCompleted;
    .locals 2
    .param p0, "savingPicture"    # Lcom/android/camera/captureintent/state/StateSavingPicture;
    .param p2, "resultIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateSavingPicture;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/android/camera/captureintent/state/StateIntentCompleted;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateIntentCompleted;

    .line 41
    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/captureintent/state/StateIntentCompleted;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/google/common/base/Optional;)V

    .line 40
    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateSavingVideo;Lcom/android/camera/async/RefCountBase;Landroid/content/Intent;)Lcom/android/camera/captureintent/state/StateIntentCompleted;
    .locals 2
    .param p0, "savingPicture"    # Lcom/android/camera/captureintent/state/StateSavingVideo;
    .param p2, "resultIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateSavingVideo;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/android/camera/captureintent/state/StateIntentCompleted;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateIntentCompleted;

    .line 49
    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/captureintent/state/StateIntentCompleted;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/google/common/base/Optional;)V

    .line 48
    return-object v0
.end method

.method public static from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateIntentCompleted;
    .locals 2
    .param p0, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateIntentCompleted;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateIntentCompleted;

    .line 56
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/captureintent/state/StateIntentCompleted;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Lcom/google/common/base/Optional;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public onEnter()Lcom/google/common/base/Optional;
    .locals 3
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
    .line 71
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    .line 72
    .local v0, "appController":Lcom/android/camera/app/AppController;
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v1}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v1}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;-><init>(Lcom/android/camera/captureintent/state/StateIntentCompleted;Lcom/android/camera/app/AppController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 82
    sget-object v1, Lcom/android/camera/captureintent/state/StateIntentCompleted;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v1
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 88
    return-void
.end method
