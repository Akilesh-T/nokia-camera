.class Lcom/android/camera/PIPVideoModule$9;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPVideoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;

.field final synthetic val$startSubPreviewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$9;->this$0:Lcom/android/camera/PIPVideoModule;

    iput-object p2, p0, Lcom/android/camera/PIPVideoModule$9;->val$startSubPreviewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$9;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-boolean v0, v0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1545
    :cond_0
    invoke-static {}, Lcom/android/camera/PIPVideoModule;->access$1100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "main camera onPreviewStarted start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$9;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$2100(Lcom/android/camera/PIPVideoModule;)[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$9;->val$startSubPreviewCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0
.end method
