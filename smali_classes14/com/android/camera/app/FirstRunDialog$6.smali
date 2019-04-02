.class Lcom/android/camera/app/FirstRunDialog$6;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FirstRunDialog;->promptProTutorialDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/FirstRunDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/app/FirstRunDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog$6;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$6;->this$0:Lcom/android/camera/app/FirstRunDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/app/FirstRunDialog;->access$1502(Lcom/android/camera/app/FirstRunDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 429
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$6;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-virtual {v0}, Lcom/android/camera/app/FirstRunDialog;->dismiss()V

    .line 430
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$6;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$200(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onFirstRunDialogCancelled()V

    .line 431
    return-void
.end method
