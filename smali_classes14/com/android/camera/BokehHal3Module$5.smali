.class Lcom/android/camera/BokehHal3Module$5;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module;->showScreenFlash(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$5;->this$0:Lcom/android/camera/BokehHal3Module;

    iput-object p2, p0, Lcom/android/camera/BokehHal3Module$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 378
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$5;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$5;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$5;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 381
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
