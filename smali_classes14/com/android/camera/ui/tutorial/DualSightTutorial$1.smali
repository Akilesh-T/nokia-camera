.class Lcom/android/camera/ui/tutorial/DualSightTutorial$1;
.super Ljava/lang/Object;
.source "DualSightTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/tutorial/DualSightTutorial;->onInflated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$1;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    iput-object p2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$1;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-static {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->access$000(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_screen_pip_tutorial_shown"

    iget-object v3, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$1;->val$checkBox:Landroid/widget/CheckBox;

    .line 66
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial$1;->this$0:Lcom/android/camera/ui/tutorial/DualSightTutorial;

    invoke-virtual {v0}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->close()V

    .line 68
    return-void
.end method
