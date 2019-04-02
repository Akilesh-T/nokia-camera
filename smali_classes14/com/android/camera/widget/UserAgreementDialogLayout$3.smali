.class Lcom/android/camera/widget/UserAgreementDialogLayout$3;
.super Ljava/lang/Object;
.source "UserAgreementDialogLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/UserAgreementDialogLayout;->updateSubviewReferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/UserAgreementDialogLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/UserAgreementDialogLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/UserAgreementDialogLayout;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/widget/UserAgreementDialogLayout$3;->this$0:Lcom/android/camera/widget/UserAgreementDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout$3;->this$0:Lcom/android/camera/widget/UserAgreementDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->access$100(Lcom/android/camera/widget/UserAgreementDialogLayout;)Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout$3;->this$0:Lcom/android/camera/widget/UserAgreementDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->access$100(Lcom/android/camera/widget/UserAgreementDialogLayout;)Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/UserAgreementDialogLayout$3;->this$0:Lcom/android/camera/widget/UserAgreementDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/UserAgreementDialogLayout;->access$000(Lcom/android/camera/widget/UserAgreementDialogLayout;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;->onConfirm(ZZ)V

    .line 106
    :cond_0
    return-void
.end method
