.class final Lcom/android/camera/ManualModule$ShutterCallback;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field private final mNeedsAnimation:Z

.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualModule;Z)V
    .locals 0
    .param p2, "needsAnimation"    # Z

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-boolean p2, p0, Lcom/android/camera/ManualModule$ShutterCallback;->mNeedsAnimation:Z

    .line 789
    return-void
.end method


# virtual methods
.method public onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v6, 0x1

    .line 793
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/ManualModule;->access$1702(Lcom/android/camera/ManualModule;J)J

    .line 794
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-object v1, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$1700(Lcom/android/camera/ManualModule;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-wide v4, v1, Lcom/android/camera/ManualModule;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/ManualModule;->mShutterLag:J

    .line 795
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    iget-wide v2, v2, Lcom/android/camera/ManualModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->stopFlashAnimationAfterTakePicture(Z)V

    .line 797
    iget-boolean v0, p0, Lcom/android/camera/ManualModule$ShutterCallback;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ManualModule$ShutterCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualModule$ShutterCallback$1;-><init>(Lcom/android/camera/ManualModule$ShutterCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 806
    :cond_0
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lcom/android/camera/ManualAbstractUI;->setEditableMode(ZZ)V

    .line 809
    :cond_1
    return-void
.end method
