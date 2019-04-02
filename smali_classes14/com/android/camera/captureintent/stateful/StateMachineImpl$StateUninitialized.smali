.class public Lcom/android/camera/captureintent/stateful/StateMachineImpl$StateUninitialized;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateMachineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/stateful/StateMachineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateUninitialized"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/captureintent/stateful/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/android/camera/captureintent/stateful/StateMachine;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/StateMachine;)V

    .line 129
    return-void
.end method
