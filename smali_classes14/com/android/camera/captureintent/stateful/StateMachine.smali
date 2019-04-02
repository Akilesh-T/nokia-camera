.class public interface abstract Lcom/android/camera/captureintent/stateful/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# virtual methods
.method public abstract getCurrentState()Lcom/android/camera/captureintent/stateful/State;
.end method

.method public abstract processEvent(Lcom/android/camera/captureintent/stateful/Event;)V
.end method

.method public abstract setInitialState(Lcom/android/camera/captureintent/stateful/State;)Z
    .param p1    # Lcom/android/camera/captureintent/stateful/State;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
