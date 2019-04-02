.class final Lcom/android/camera/PIPPhotoModule$ShutterCallback;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field private final mNeedsAnimation:Z

.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PIPPhotoModule;Z)V
    .locals 0
    .param p2, "needsAnimation"    # Z

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-boolean p2, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->mNeedsAnimation:Z

    .line 725
    return-void
.end method


# virtual methods
.method public onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/PIPPhotoModule;->access$1102(Lcom/android/camera/PIPPhotoModule;J)J

    .line 730
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v1}, Lcom/android/camera/PIPPhotoModule;->access$1100(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-wide v4, v1, Lcom/android/camera/PIPPhotoModule;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/PIPPhotoModule;->mShutterLag:J

    .line 731
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PIPPhotoModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 732
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$300(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PIPPhotoModule$ShutterCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPPhotoModule$ShutterCallback$1;-><init>(Lcom/android/camera/PIPPhotoModule$ShutterCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 740
    :cond_0
    return-void
.end method
