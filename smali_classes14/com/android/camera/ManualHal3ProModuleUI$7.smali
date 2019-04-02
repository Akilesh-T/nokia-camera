.class Lcom/android/camera/ManualHal3ProModuleUI$7;
.super Ljava/lang/Object;
.source "ManualHal3ProModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3ProModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ProModuleUI;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iput-object p2, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovementChanged(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMoving"    # Z

    .prologue
    .line 855
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1300(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 856
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1300(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ProModeSeekBar;

    .line 857
    .local v2, "targetView":Lcom/android/camera/ui/ProModeSeekBar;
    if-nez v2, :cond_1

    .line 855
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$3100(Lcom/android/camera/ManualHal3ProModuleUI;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 860
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    if-eqz p2, :cond_2

    if-eq v2, p1, :cond_2

    .line 863
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    goto :goto_1

    .line 865
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    goto :goto_1

    .line 867
    .end local v0    # "enabled":Ljava/lang/Boolean;
    .end local v2    # "targetView":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$3000(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->val$key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$7;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method
