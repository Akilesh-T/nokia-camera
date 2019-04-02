.class Lcom/android/camera/app/FirstRunDialog$4$3;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 366
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$300(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$300(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_user_agreement_key"

    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v3, v3, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    .line 372
    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$700(Lcom/android/camera/app/FirstRunDialog;)Z

    move-result v3

    .line 370
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/FirstRunDialog;->access$1102(Lcom/android/camera/app/FirstRunDialog;Z)Z

    .line 375
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$1200(Lcom/android/camera/app/FirstRunDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$1300(Lcom/android/camera/app/FirstRunDialog;)V

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-virtual {v0}, Lcom/android/camera/app/FirstRunDialog;->dismiss()V

    .line 380
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$4$3;->this$1:Lcom/android/camera/app/FirstRunDialog$4;

    iget-object v0, v0, Lcom/android/camera/app/FirstRunDialog$4;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$200(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onFirstRunStateReady()V

    goto :goto_0
.end method
