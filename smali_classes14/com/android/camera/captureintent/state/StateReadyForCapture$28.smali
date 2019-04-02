.class Lcom/android/camera/captureintent/state/StateReadyForCapture$28;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$28;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 848
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$28;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventTapOnSwitchCameraButton;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 843
    return-void
.end method
