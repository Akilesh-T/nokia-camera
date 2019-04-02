.class Lcom/android/camera/captureintent/state/StateReadyForRecord$30;
.super Ljava/lang/Object;
.source "StateReadyForRecord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForRecord;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$30;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForRecord$30;->this$0:Lcom/android/camera/captureintent/state/StateReadyForRecord;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateReadyForRecord;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 796
    return-void
.end method
