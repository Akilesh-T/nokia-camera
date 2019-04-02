.class Lcom/android/camera/BokehHal3Module$19$2$3;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/BokehResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module$19$2;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/BokehHal3Module$19$2;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module$19$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/BokehHal3Module$19$2;

    .prologue
    .line 2054
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$19$2$3;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBokehResultChange(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 2057
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBokehResultChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2058
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$3;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1700(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehHal3Module$19$2$3$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/BokehHal3Module$19$2$3$1;-><init>(Lcom/android/camera/BokehHal3Module$19$2$3;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2094
    return-void
.end method
