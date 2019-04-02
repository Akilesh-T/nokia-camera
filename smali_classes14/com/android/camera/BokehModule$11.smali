.class Lcom/android/camera/BokehModule$11;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/camera/BokehModule$11;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1479
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mDisplayAsFlashRunnable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/camera/BokehModule$11;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$400(Lcom/android/camera/BokehModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$11;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$4200(Lcom/android/camera/BokehModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/camera/BokehModule$11;->this$0:Lcom/android/camera/BokehModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BokehModule;->access$4300(Lcom/android/camera/BokehModule;Z)V

    goto :goto_0
.end method
