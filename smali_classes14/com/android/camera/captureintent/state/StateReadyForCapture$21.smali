.class Lcom/android/camera/captureintent/state/StateReadyForCapture$21;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FocusStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;
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
    .line 649
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$21;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 1
    .param p1, "focusState"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$21;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    invoke-static {v0, p1}, Lcom/android/camera/captureintent/state/StateReadyForCapture;->access$1300(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/one/OneCamera$AutoFocusState;)V

    .line 654
    return-void
.end method
