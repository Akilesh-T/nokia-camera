.class Lcom/android/camera/captureintent/state/StateReadyForCapture$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReadyForCapture;->takePicture(Lcom/android/camera/ui/TouchCoordinate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

.field final synthetic val$countDownDuration:I

.field final synthetic val$touchPointInsideShutterButton:Lcom/android/camera/ui/TouchCoordinate;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/ui/TouchCoordinate;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$1;->this$0:Lcom/android/camera/captureintent/state/StateReadyForCapture;

    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$1;->val$touchPointInsideShutterButton:Lcom/android/camera/ui/TouchCoordinate;

    iput p3, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$1;->val$countDownDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountDownDuration()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$1;->val$countDownDuration:I

    return v0
.end method

.method public getTouchPointInsideShutterButton()Lcom/android/camera/ui/TouchCoordinate;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReadyForCapture$1;->val$touchPointInsideShutterButton:Lcom/android/camera/ui/TouchCoordinate;

    return-object v0
.end method
