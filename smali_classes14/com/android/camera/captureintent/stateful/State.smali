.class public interface abstract Lcom/android/camera/captureintent/stateful/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final NO_CHANGE:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/camera/captureintent/stateful/State;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-void
.end method


# virtual methods
.method public abstract getEventHandler(Ljava/lang/Class;)Lcom/android/camera/captureintent/stateful/EventHandler;
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
.end method

.method public abstract getEventHandlerCount()I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;
.end method

.method public abstract onEnter()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onLeave()V
.end method

.method public abstract release()V
.end method

.method public abstract removeEventHandler(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/captureintent/stateful/Event;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V
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
.end method
