.class Lcom/android/camera/captureintent/CaptureIntentModule$4$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CaptureIntentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/CaptureIntentModule$4;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/CaptureIntentModule$4;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/CaptureIntentModule$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/CaptureIntentModule$4;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4$1;->this$1:Lcom/android/camera/captureintent/CaptureIntentModule$4;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 408
    .local v0, "tapPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModule$4$1;->this$1:Lcom/android/camera/captureintent/CaptureIntentModule$4;

    iget-object v1, v1, Lcom/android/camera/captureintent/CaptureIntentModule$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModule;

    invoke-static {v1}, Lcom/android/camera/captureintent/CaptureIntentModule;->access$300(Lcom/android/camera/captureintent/CaptureIntentModule;)Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/event/EventTapOnPreview;

    invoke-direct {v2, v0}, Lcom/android/camera/captureintent/event/EventTapOnPreview;-><init>(Landroid/graphics/Point;)V

    invoke-interface {v1, v2}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 409
    const/4 v1, 0x1

    return v1
.end method
