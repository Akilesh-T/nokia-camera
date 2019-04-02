.class public Lcom/android/camera/widget/UserAgreementDialogLayout;
.super Landroid/widget/FrameLayout;
.source "UserAgreementDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConfirmButton:Landroid/widget/Button;

.field private mExitButton:Landroid/widget/Button;

.field private mLastOrientation:I

.field private mListener:Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;

.field private mNerverShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultNeverShow"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean p2, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mNerverShow:Z

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mLastOrientation:I

    .line 57
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->setBackgroundResource(I)V

    .line 58
    const v0, 0x7f040099

    invoke-static {p1, v0, p0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->updateSubviewReferences()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/UserAgreementDialogLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/UserAgreementDialogLayout;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mNerverShow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/UserAgreementDialogLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/UserAgreementDialogLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mNerverShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/UserAgreementDialogLayout;)Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/UserAgreementDialogLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mListener:Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;

    return-object v0
.end method

.method private updateSubviewReferences()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f0f0137

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mCheckBox:Landroid/widget/CheckBox;

    .line 81
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mNerverShow:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/camera/widget/UserAgreementDialogLayout$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/UserAgreementDialogLayout$1;-><init>(Lcom/android/camera/widget/UserAgreementDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    const v0, 0x7f0f00a3

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mConfirmButton:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mConfirmButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/widget/UserAgreementDialogLayout$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/UserAgreementDialogLayout$2;-><init>(Lcom/android/camera/widget/UserAgreementDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0f021d

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mExitButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mExitButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/widget/UserAgreementDialogLayout$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/UserAgreementDialogLayout$3;-><init>(Lcom/android/camera/widget/UserAgreementDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mLastOrientation:I

    if-ne v0, v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mLastOrientation:I

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->removeAllViews()V

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040099

    invoke-static {v0, v1, p0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    invoke-direct {p0}, Lcom/android/camera/widget/UserAgreementDialogLayout;->updateSubviewReferences()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/widget/UserAgreementDialogLayout;->mListener:Lcom/android/camera/widget/UserAgreementDialogLayout$UserAgreementDialogListener;

    .line 64
    return-void
.end method
