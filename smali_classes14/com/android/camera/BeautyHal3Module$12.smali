.class Lcom/android/camera/BeautyHal3Module$12;
.super Ljava/lang/Object;
.source "BeautyHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3Module;->getHdrButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$12;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1376
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$12;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$200(Lcom/android/camera/BeautyHal3Module;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$12;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OneCameraProvider;->waitingForCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1364
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t leave hdr plus mode if switching to hdr plus mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1367
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$12;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1368
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$12;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_request_return_hdr_plus"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1370
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$12;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$3200(Lcom/android/camera/BeautyHal3Module;)V

    goto :goto_0
.end method
