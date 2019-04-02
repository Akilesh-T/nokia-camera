.class public abstract Lcom/android/camera/captureintent/stateful/StateImpl;
.super Ljava/lang/Object;
.source "StateImpl.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/State;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mEventHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/android/camera/captureintent/stateful/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/camera/captureintent/stateful/State;)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;

    .prologue
    .line 40
    invoke-interface {p1}, Lcom/android/camera/captureintent/stateful/State;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/StateMachine;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/captureintent/stateful/StateMachine;)V
    .locals 1
    .param p1, "stateMachine"    # Lcom/android/camera/captureintent/stateful/StateMachine;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mEventHandlerMap:Ljava/util/Map;

    .line 37
    return-void
.end method


# virtual methods
.method public final getEventHandler(Ljava/lang/Class;)Lcom/android/camera/captureintent/stateful/EventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/captureintent/stateful/Event;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/android/camera/captureintent/stateful/EventHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mEventHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/stateful/EventHandler;

    return-object v0
.end method

.method public getEventHandlerCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mEventHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mStateMachine:Lcom/android/camera/captureintent/stateful/StateMachine;

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
    .line 50
    sget-object v0, Lcom/android/camera/captureintent/stateful/StateImpl;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mEventHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mEventHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    :cond_0
    return-void
.end method

.method public removeEventHandler(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/captureintent/stateful/Event;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mEventHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public final setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/captureintent/stateful/Event;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/camera/captureintent/stateful/EventHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "eventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<TT;>;"
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateImpl;->mEventHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
