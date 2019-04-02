.class Lcom/android/camera/ManualProModeUI$5;
.super Ljava/lang/Object;
.source "ManualProModeUI.java"

# interfaces
.implements Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualProModeUI;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    iput-object p2, p0, Lcom/android/camera/ManualProModeUI$5;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ManualProModeUI$5;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovementChanged(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMoving"    # Z

    .prologue
    .line 894
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v3}, Lcom/android/camera/ManualProModeUI;->access$2100(Lcom/android/camera/ManualProModeUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 895
    iget-object v3, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v3}, Lcom/android/camera/ManualProModeUI;->access$2100(Lcom/android/camera/ManualProModeUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ProModeSeekBar;

    .line 896
    .local v2, "targetView":Lcom/android/camera/ui/ProModeSeekBar;
    if-nez v2, :cond_1

    .line 894
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v3}, Lcom/android/camera/ManualProModeUI;->access$2200(Lcom/android/camera/ManualProModeUI;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 899
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 901
    if-eqz p2, :cond_2

    if-eq v2, p1, :cond_2

    .line 902
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    goto :goto_1

    .line 904
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    goto :goto_1

    .line 906
    .end local v0    # "enabled":Ljava/lang/Boolean;
    .end local v2    # "targetView":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 881
    iget-object v2, p0, Lcom/android/camera/ManualProModeUI$5;->val$key:Ljava/lang/String;

    const-string v3, "pref_camera_zoom_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 882
    iget-object v2, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v2}, Lcom/android/camera/ManualProModeUI;->access$000(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ManualController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualProModeUI$5;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI$5;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v2}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/android/camera/ManualController;->onManualItemSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 885
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v2}, Lcom/android/camera/ManualProModeUI;->access$2000(Lcom/android/camera/ManualProModeUI;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    if-eqz p3, :cond_0

    .line 886
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v2}, Lcom/android/camera/ManualProModeUI;->access$000(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ManualController;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI$5;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v2}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/camera/ManualController;->onZoomChanged(F)V

    .line 887
    iget-object v2, p0, Lcom/android/camera/ManualProModeUI$5;->this$0:Lcom/android/camera/ManualProModeUI;

    const-wide/16 v4, 0x21

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/android/camera/ManualProModeUI;->access$2002(Lcom/android/camera/ManualProModeUI;J)J

    goto :goto_0
.end method
