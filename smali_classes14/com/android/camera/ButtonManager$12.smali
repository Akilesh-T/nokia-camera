.class Lcom/android/camera/ButtonManager$12;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ButtonManager;->initializeGlobalIndicatorButton(Lcom/android/camera/MultiToggleImageButton;Ljava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ButtonManager;

.field final synthetic val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$shouldUpdateValue:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ButtonManager;ZLjava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/camera/ButtonManager$12;->this$0:Lcom/android/camera/ButtonManager;

    iput-boolean p2, p0, Lcom/android/camera/ButtonManager$12;->val$shouldUpdateValue:Z

    iput-object p3, p0, Lcom/android/camera/ButtonManager$12;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/ButtonManager$12;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expandBarOverlay(Z)V
    .locals 1
    .param p1, "isExpand"    # Z

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/camera/ButtonManager$12;->this$0:Lcom/android/camera/ButtonManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ButtonManager;->setMainBarByModeOverlay(Z)V

    .line 1275
    return-void
.end method

.method public stateChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # I

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/camera/ButtonManager$12;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ButtonManager;->access$000(Lcom/android/camera/ButtonManager;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->couldChangeButtonState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    iget-boolean v0, p0, Lcom/android/camera/ButtonManager$12;->val$shouldUpdateValue:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/camera/ButtonManager$12;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v0}, Lcom/android/camera/ButtonManager;->access$100(Lcom/android/camera/ButtonManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    iget-object v2, p0, Lcom/android/camera/ButtonManager$12;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager$12;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/android/camera/ButtonManager$12;->val$cb:Lcom/android/camera/ButtonManager$ButtonCallback;

    invoke-interface {v0, p2}, Lcom/android/camera/ButtonManager$ButtonCallback;->onStateChanged(I)V

    .line 1270
    :cond_1
    return-void
.end method
