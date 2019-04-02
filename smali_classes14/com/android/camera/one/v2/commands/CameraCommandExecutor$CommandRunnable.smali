.class Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;
.super Ljava/lang/Object;
.source "CameraCommandExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandRunnable"
.end annotation


# instance fields
.field private final mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

.field final synthetic this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/CameraCommand;)V
    .locals 0
    .param p2, "command"    # Lcom/android/camera/one/v2/commands/CameraCommand;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " START"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-interface {v1}, Lcom/android/camera/one/v2/commands/CameraCommand;->run()V

    .line 53
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 75
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to camera while executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_3
    move-exception v0

    .line 70
    .local v0, "e":Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to capture session while executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "e":Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
    :catch_4
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->this$0:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-static {v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->access$000(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
