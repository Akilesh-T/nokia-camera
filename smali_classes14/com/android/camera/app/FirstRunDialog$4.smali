.class Lcom/android/camera/app/FirstRunDialog$4;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FirstRunDialog;->promptUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/FirstRunDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/app/FirstRunDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    iput-object p2, p0, Lcom/android/camera/app/FirstRunDialog$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$800(Lcom/android/camera/app/FirstRunDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$800(Lcom/android/camera/app/FirstRunDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcom/android/camera/app/FirstRunDialog;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "The previous dialog is existed. Don\'t create a new one!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$1000(Lcom/android/camera/app/FirstRunDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-static {}, Lcom/android/camera/app/FirstRunDialog;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "The activity is paused. Don\'t create a new one!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {}, Lcom/android/camera/app/FirstRunDialog;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "The hint dialog will be showed!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v2}, Lcom/android/camera/app/FirstRunDialog;->access$1400(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080288

    .line 362
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 363
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/FirstRunDialog$4;->val$view:Landroid/view/View;

    .line 364
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08026e

    new-instance v3, Lcom/android/camera/app/FirstRunDialog$4$3;

    invoke-direct {v3, p0}, Lcom/android/camera/app/FirstRunDialog$4$3;-><init>(Lcom/android/camera/app/FirstRunDialog$4;)V

    .line 365
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08026f

    new-instance v3, Lcom/android/camera/app/FirstRunDialog$4$2;

    invoke-direct {v3, p0}, Lcom/android/camera/app/FirstRunDialog$4$2;-><init>(Lcom/android/camera/app/FirstRunDialog$4;)V

    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/app/FirstRunDialog$4$1;

    invoke-direct {v2, p0}, Lcom/android/camera/app/FirstRunDialog$4$1;-><init>(Lcom/android/camera/app/FirstRunDialog$4;)V

    .line 392
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Lcom/android/camera/app/FirstRunDialog;->access$802(Lcom/android/camera/app/FirstRunDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 398
    invoke-static {}, Lcom/android/camera/app/FirstRunDialog;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "The hint dialog is showed successfully!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
