.class Lcom/android/camera/BokehHal3Module$15;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
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
    .line 1577
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$15;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1603
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$15;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    :goto_0
    return-void

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$15;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1587
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$15;->this$0:Lcom/android/camera/BokehHal3Module;

    .line 1588
    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    .line 1587
    invoke-static {v0, v1}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1589
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Hdr plus should never be switching from front facing camera."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1595
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$15;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_request_return_hdr_plus"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1597
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$15;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$3500(Lcom/android/camera/BokehHal3Module;)V

    goto :goto_0
.end method
