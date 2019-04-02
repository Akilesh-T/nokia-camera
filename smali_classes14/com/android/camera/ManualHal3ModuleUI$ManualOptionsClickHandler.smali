.class Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;
.super Ljava/lang/Object;
.source "ManualHal3ModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualOptionsClickHandler"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/ManualHal3ModuleUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualHal3ModuleUI;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p2, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    .line 764
    return-void
.end method

.method private foldOptionLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 774
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_whitebalance_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$1600(Lcom/android/camera/ManualHal3ModuleUI;Z)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_manual_exposure_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$1400(Lcom/android/camera/ManualHal3ModuleUI;Z)V

    goto :goto_0

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_manual_focus_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualHal3ModuleUI;->access$1500(Lcom/android/camera/ManualHal3ModuleUI;Z)V

    goto :goto_0
.end method

.method private resetBackgroundResource(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0f0157

    .line 784
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 785
    .local v2, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 786
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 787
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 788
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 789
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 786
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020273

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 793
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->resetBackgroundResource(Landroid/view/View;)V

    .line 769
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->foldOptionLayout()V

    .line 770
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$1800(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$1700(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method
