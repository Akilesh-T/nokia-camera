.class Lcom/android/camera/app/FirstRunDialog$4$1;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FirstRunDialog$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/app/FirstRunDialog$4;


# direct methods
.method constructor <init>(Lcom/android/camera/app/FirstRunDialog$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/app/FirstRunDialog$4;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog$4$1;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$1;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$200(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onFirstRunDialogCancelled()V

    .line 396
    return-void
.end method
