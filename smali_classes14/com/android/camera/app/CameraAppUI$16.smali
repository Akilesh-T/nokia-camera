.class Lcom/android/camera/app/CameraAppUI$16;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->getGridLinesCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$16;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 2689
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$16;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2678
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$16;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2679
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$16;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showGridLines()V

    .line 2684
    :cond_0
    :goto_0
    return-void

    .line 2681
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$16;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideGridLines()V

    goto :goto_0
.end method
