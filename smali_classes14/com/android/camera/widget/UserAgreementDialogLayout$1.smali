.class Lcom/android/camera/widget/UserAgreementDialogLayout$1;
.super Ljava/lang/Object;
.source "UserAgreementDialogLayout.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 82
    iput-object p1, p0, Lcom/android/camera/widget/UserAgreementDialogLayout$1;->this$0:Lcom/android/camera/widget/UserAgreementDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout$1;->this$0:Lcom/android/camera/widget/UserAgreementDialogLayout;

    invoke-static {v0, p2}, Lcom/android/camera/widget/UserAgreementDialogLayout;->access$002(Lcom/android/camera/widget/UserAgreementDialogLayout;Z)Z

    .line 86
    return-void
.end method
