.class public Lcom/android/camera/captureintent/stateful/StateMachineImpl;
.super Ljava/lang/Object;
.source "StateMachineImpl.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/StateMachine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/captureintent/stateful/StateMachineImpl$StateUninitialized;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mState:Lcom/android/camera/captureintent/stateful/State;

.field private final mStateChangedCondition:Ljava/util/concurrent/locks/Condition;

.field private final mStateLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateMachine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 43
    new-instance v0, Lcom/android/camera/captureintent/stateful/StateMachineImpl$StateUninitialized;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/stateful/StateMachineImpl$StateUninitialized;-><init>(Lcom/android/camera/captureintent/stateful/StateMachine;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    .line 44
    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/android/camera/captureintent/stateful/State;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public jumpToState(Lcom/android/camera/captureintent/stateful/State;)V
    .locals 4
    .param p1, "newState"    # Lcom/android/camera/captureintent/stateful/State;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "No op since jump to the same state."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    return-void

    .line 59
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-interface {v1}, Lcom/android/camera/captureintent/stateful/State;->onLeave()V

    .line 61
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-interface {v1}, Lcom/android/camera/captureintent/stateful/State;->release()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    .line 63
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-interface {v1}, Lcom/android/camera/captureintent/stateful/State;->onEnter()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 64
    .local v0, "nextState":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/captureintent/stateful/State;>;"
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    sget-object v1, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forward state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-interface {v1}, Lcom/android/camera/captureintent/stateful/State;->onLeave()V

    .line 67
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-interface {v1}, Lcom/android/camera/captureintent/stateful/State;->release()V

    .line 68
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/captureintent/stateful/State;

    iput-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    .line 69
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-interface {v1}, Lcom/android/camera/captureintent/stateful/State;->onEnter()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateChangedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 75
    .end local v0    # "nextState":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/captureintent/stateful/State;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public processEvent(Lcom/android/camera/captureintent/stateful/Event;)V
    .locals 6
    .param p1, "event"    # Lcom/android/camera/captureintent/stateful/Event;

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/camera/captureintent/stateful/State;->getEventHandler(Ljava/lang/Class;)Lcom/android/camera/captureintent/stateful/EventHandler;

    move-result-object v0

    .line 108
    .local v0, "eventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;
    if-eqz v0, :cond_0

    .line 109
    sget-object v3, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0, p1}, Lcom/android/camera/captureintent/stateful/EventHandler;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 111
    .local v2, "newState":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/captureintent/stateful/State;>;"
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/captureintent/stateful/State;

    invoke-virtual {p0, v3}, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->jumpToState(Lcom/android/camera/captureintent/stateful/State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v2    # "newState":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/captureintent/stateful/State;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    return-void

    .line 115
    .end local v0    # "eventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to process event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public setInitialState(Lcom/android/camera/captureintent/stateful/State;)Z
    .locals 2
    .param p1, "initialState"    # Lcom/android/camera/captureintent/stateful/State;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mState:Lcom/android/camera/captureintent/stateful/State;

    instance-of v0, v0, Lcom/android/camera/captureintent/stateful/StateMachineImpl$StateUninitialized;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->jumpToState(Lcom/android/camera/captureintent/stateful/State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/captureintent/stateful/StateMachineImpl;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
