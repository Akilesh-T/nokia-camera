.class public Lcom/android/camera/one/v2/commands/RunnableCameraCommand;
.super Ljava/lang/Object;
.source "RunnableCameraCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

.field private final mExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/CameraCommand;)V
    .locals 0
    .param p1, "executor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p2, "command"    # Lcom/android/camera/one/v2/commands/CameraCommand;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/commands/RunnableCameraCommand;->mExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 29
    iput-object p2, p0, Lcom/android/camera/one/v2/commands/RunnableCameraCommand;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/RunnableCameraCommand;->mExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    iget-object v1, p0, Lcom/android/camera/one/v2/commands/RunnableCameraCommand;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/commands/CameraCommand;)Ljava/util/concurrent/Future;

    .line 35
    return-void
.end method
