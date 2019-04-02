.class Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->onConfigured(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;

.field final synthetic val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->this$1:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "slaveSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 141
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slaveSession - onActive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onClosed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "slaveSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 146
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slaveSession - onClosed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->this$1:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 148
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 149
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 150
    return-void
.end method

.method public onConfigureFailed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "slaveSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 154
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slaveSession - onConfigureFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->this$1:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 156
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 157
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 158
    return-void
.end method

.method public onConfigured(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 4
    .param p1, "slaveSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 162
    sget-object v1, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slaveSession - onConfigured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isReprocessable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isReprocessable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->this$1:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;->val$sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Landroid/support/v4/util/Pair;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-direct {v2, v3, p1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    .local v0, "valueSet":Z
    if-nez v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1$2;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 168
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 170
    :cond_0
    return-void
.end method

.method public onReady(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 3
    .param p1, "slaveSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .prologue
    .line 174
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slaveSession - onReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onSurfacePrepared(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;)V
    .locals 3
    .param p1, "slaveSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 179
    sget-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slaveSession - onSurfacePrepared : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    return-void
.end method
