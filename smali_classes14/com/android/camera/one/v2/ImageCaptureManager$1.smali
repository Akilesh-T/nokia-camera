.class Lcom/android/camera/one/v2/ImageCaptureManager$1;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;->setCaptureReadyListener(Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

.field final synthetic val$listener:Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$1;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    iput-object p2, p0, Lcom/android/camera/one/v2/ImageCaptureManager$1;->val$listener:Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinStateChange(Z)V
    .locals 1
    .param p1, "pinsAvailable"    # Z

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$1;->val$listener:Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;->onReadyStateChange(Z)V

    .line 350
    return-void
.end method
