.class Lcom/android/camera/SlowMotionHal3Module$4$1;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module$4;->onRemoteThumbnailAvailable([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SlowMotionHal3Module$4;

.field final synthetic val$jpegImage:[B


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module$4;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SlowMotionHal3Module$4;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$4$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$4;

    iput-object p2, p0, Lcom/android/camera/SlowMotionHal3Module$4$1;->val$jpegImage:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$4$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$4;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$4;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module$4$1;->val$jpegImage:[B

    .line 341
    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 342
    return-void
.end method
