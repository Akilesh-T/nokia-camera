.class Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->show(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$listener:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;

.field final synthetic val$shouldHide:Z

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;Landroid/widget/EditText;ZLandroid/widget/Spinner;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$editText:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$shouldHide:Z

    iput-object p4, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$spinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$listener:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    iget-object v2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "eventName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$shouldHide:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 129
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$listener:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$listener:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;

    invoke-interface {v2, v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;->onListener(Ljava/lang/String;I)V

    .line 131
    :cond_0
    return-void

    .line 128
    .end local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    goto :goto_0
.end method
