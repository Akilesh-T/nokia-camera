.class Lcom/android/camera/ManualUI$ManualOptionsClickHandler;
.super Ljava/lang/Object;
.source "ManualUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualOptionsClickHandler"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/ManualUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/ManualUI;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p2, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    .line 904
    return-void
.end method

.method private foldOptionLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 914
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_whitebalance_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualUI;->access$300(Lcom/android/camera/ManualUI;Z)V

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_manual_exposure_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualUI;->access$100(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_metering_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 919
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualUI;->access$400(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_manual_focus_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 921
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualUI;->access$200(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0

    .line 922
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_wide_tele_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0, v2}, Lcom/android/camera/ManualUI;->access$500(Lcom/android/camera/ManualUI;Z)V

    goto :goto_0
.end method

.method private resetBackgroundResource(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0f0157

    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 929
    .local v2, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 930
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 931
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 932
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 933
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 930
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020273

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 937
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->resetBackgroundResource(Landroid/view/View;)V

    .line 909
    invoke-direct {p0}, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->foldOptionLayout()V

    .line 910
    iget-object v0, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0}, Lcom/android/camera/ManualUI;->access$000(Lcom/android/camera/ManualUI;)Lcom/android/camera/ManualController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/camera/ManualController;->onManualItemSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return-void
.end method
