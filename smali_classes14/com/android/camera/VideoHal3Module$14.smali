.class Lcom/android/camera/VideoHal3Module$14;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$14;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$14;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$500(Lcom/android/camera/VideoHal3Module;)V

    .line 1569
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1546
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$14;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1564
    :goto_0
    return-void

    .line 1552
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$14;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1553
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$14;->this$0:Lcom/android/camera/VideoHal3Module;

    .line 1554
    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    .line 1553
    invoke-static {v0, v1}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1555
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Hdr plus should never be switching from front facing camera."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1561
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$14;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_request_return_hdr_plus"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1563
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$14;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$4300(Lcom/android/camera/VideoHal3Module;)V

    goto :goto_0
.end method
