.class Lcom/android/camera/one/v2/OneCameraImpl$6;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraImpl;->setupAsync(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

.field final synthetic val$previewSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$6;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraImpl$6;->val$previewSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/camera/one/v2/OneCameraImpl$6;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$6;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl$6;->val$previewSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl$6;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->access$1300(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    .line 564
    return-void
.end method
