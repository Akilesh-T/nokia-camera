.class Lcom/android/camera/app/OneCameraController$6$2;
.super Ljava/lang/Object;
.source "OneCameraController.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OneCameraController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/app/OneCameraController$6;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OneCameraController$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/app/OneCameraController$6;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController$6$2;->this$1:Lcom/android/camera/app/OneCameraController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpenFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 831
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlaveCameraOpenFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$6$2;->this$1:Lcom/android/camera/app/OneCameraController$6;

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$6;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "slave camera open fail"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 833
    return-void
.end method
