.class Lcom/android/camera/SquareModule$2;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SquareModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/SquareModule$2;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlBarUpdate(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 227
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onControlBarUpdate level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/camera/SquareModule$2;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v1}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 229
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v1, "default_scope"

    const-string v2, "pref_beauty_level_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public onZoomClick()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/SquareModule$2;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0, p1}, Lcom/android/camera/SquareModule;->access$002(Lcom/android/camera/SquareModule;F)F

    .line 215
    iget-object v0, p0, Lcom/android/camera/SquareModule$2;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/SquareModule$2;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 218
    :cond_0
    return-void
.end method
