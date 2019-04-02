.class Lcom/android/camera/BokehHal3Module$11;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$11;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$11;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1400(Lcom/android/camera/BokehHal3Module;)V

    .line 1027
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$11;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$11;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3400(Lcom/android/camera/BokehHal3Module;)V

    .line 1030
    :cond_0
    return-void
.end method
