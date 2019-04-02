.class Lcom/android/camera/ButtonManager$5;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ButtonManager;->initializeHdrPlusFlashButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ButtonManager;

.field final synthetic val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/camera/ButtonManager$5;->this$0:Lcom/android/camera/ButtonManager;

    iput-object p2, p0, Lcom/android/camera/ButtonManager$5;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expandBarOverlay(Z)V
    .locals 1
    .param p1, "isExpand"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/camera/ButtonManager$5;->this$0:Lcom/android/camera/ButtonManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ButtonManager;->setMainBarByModeOverlay(Z)V

    .line 983
    return-void
.end method

.method public stateChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/camera/ButtonManager$5;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ButtonManager;->access$100(Lcom/android/camera/ButtonManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ButtonManager$5;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v1}, Lcom/android/camera/ButtonManager;->access$000(Lcom/android/camera/ButtonManager;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_hdr_plus_flash_mode"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    .line 976
    iget-object v0, p0, Lcom/android/camera/ButtonManager$5;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/camera/ButtonManager$5;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-interface {v0, p2}, Lcom/android/camera/ButtonManager$ButtonCallback;->onStateChanged(I)V

    .line 979
    :cond_0
    return-void
.end method
