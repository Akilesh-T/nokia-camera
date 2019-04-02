.class Lcom/android/camera/one/v2/OneCameraImpl$4;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraImpl;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraImpl;

.field final synthetic val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

.field final synthetic val$session:Lcom/android/camera/session/CaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$4;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraImpl$4;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iput-object p3, p0, Lcom/android/camera/one/v2/OneCameraImpl$4;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$4;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$4;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl$4;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->takePictureNow(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    .line 372
    return-void
.end method
