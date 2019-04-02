.class public Lcom/android/camera/widget/LocationDialogLayout;
.super Landroid/widget/FrameLayout;
.source "LocationDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConfirmButton:Landroid/view/View;

.field private mLastOrientation:I

.field private mListener:Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;

.field private mLocationRecordingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultLocationRecordingEnabled"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean p2, p0, Lcom/android/camera/widget/LocationDialogLayout;->mLocationRecordingEnabled:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mLastOrientation:I

    .line 55
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/LocationDialogLayout;->setBackgroundResource(I)V

    .line 56
    const v0, 0x7f040049

    invoke-static {p1, v0, p0}, Lcom/android/camera/widget/LocationDialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/android/camera/widget/LocationDialogLayout;->updateSubviewReferences()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/LocationDialogLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/LocationDialogLayout;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mLocationRecordingEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/LocationDialogLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/LocationDialogLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/camera/widget/LocationDialogLayout;->mLocationRecordingEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/LocationDialogLayout;)Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/LocationDialogLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mListener:Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;

    return-object v0
.end method

.method private updateSubviewReferences()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f0f0137

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/LocationDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mCheckBox:Landroid/widget/CheckBox;

    .line 79
    iget-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/camera/widget/LocationDialogLayout;->mLocationRecordingEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/camera/widget/LocationDialogLayout$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/LocationDialogLayout$1;-><init>(Lcom/android/camera/widget/LocationDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    const v0, 0x7f0f00a3

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/LocationDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mConfirmButton:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mConfirmButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/widget/LocationDialogLayout$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/LocationDialogLayout$2;-><init>(Lcom/android/camera/widget/LocationDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/camera/widget/LocationDialogLayout;->mLastOrientation:I

    if-ne v0, v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/widget/LocationDialogLayout;->mLastOrientation:I

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/widget/LocationDialogLayout;->removeAllViews()V

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/widget/LocationDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040049

    invoke-static {v0, v1, p0}, Lcom/android/camera/widget/LocationDialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    invoke-direct {p0}, Lcom/android/camera/widget/LocationDialogLayout;->updateSubviewReferences()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/widget/LocationDialogLayout;->mListener:Lcom/android/camera/widget/LocationDialogLayout$LocationDialogListener;

    .line 62
    return-void
.end method
