.class Lcom/android/camera/captureintent/state/StateIntentCompleted$1;
.super Ljava/lang/Object;
.source "StateIntentCompleted.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateIntentCompleted;->onEnter()Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateIntentCompleted;

.field final synthetic val$appController:Lcom/android/camera/app/AppController;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateIntentCompleted;Lcom/android/camera/app/AppController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateIntentCompleted;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;->this$0:Lcom/android/camera/captureintent/state/StateIntentCompleted;

    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;->val$appController:Lcom/android/camera/app/AppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;->this$0:Lcom/android/camera/captureintent/state/StateIntentCompleted;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateIntentCompleted;->access$000(Lcom/android/camera/captureintent/state/StateIntentCompleted;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;->val$appController:Lcom/android/camera/app/AppController;

    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;->this$0:Lcom/android/camera/captureintent/state/StateIntentCompleted;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateIntentCompleted;->access$000(Lcom/android/camera/captureintent/state/StateIntentCompleted;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->finishActivityWithIntentCompleted(Landroid/content/Intent;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateIntentCompleted$1;->val$appController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->finishActivityWithIntentCanceled()V

    goto :goto_0
.end method
