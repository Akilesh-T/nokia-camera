.class Lcom/android/camera/captureintent/CaptureIntentModule$2;
.super Ljava/lang/Object;
.source "CaptureIntentModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/CaptureIntentModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/CaptureIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/CaptureIntentModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/CaptureIntentModule;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModule$2;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventTapOnCancelShutterButton;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventTapOnCancelShutterButton;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 223
    return-void
.end method
