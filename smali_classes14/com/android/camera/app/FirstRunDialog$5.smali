.class Lcom/android/camera/app/FirstRunDialog$5;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;


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
    .line 409
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog$5;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$5;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$300(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_pro_mode_tutorial_shown"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 414
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$5;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-virtual {v0}, Lcom/android/camera/app/FirstRunDialog;->dismiss()V

    .line 416
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog$5;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v0}, Lcom/android/camera/app/FirstRunDialog;->access$200(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onFirstRunStateReady()V

    .line 417
    return-void
.end method
