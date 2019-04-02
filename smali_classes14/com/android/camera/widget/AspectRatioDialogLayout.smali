.class public Lcom/android/camera/widget/AspectRatioDialogLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:Lcom/android/camera/exif/Rational;

.field private mAspectRatio16x9Button:Landroid/view/View;

.field private mAspectRatio4x3Button:Landroid/view/View;

.field private mConfirmButton:Landroid/view/View;

.field private mLastOrientation:I

.field private mListener:Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/exif/Rational;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultAspectRatio"    # Lcom/android/camera/exif/Rational;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio:Lcom/android/camera/exif/Rational;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mLastOrientation:I

    .line 53
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->setBackgroundResource(I)V

    .line 54
    const v0, 0x7f04001f

    invoke-static {p1, v0, p0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->updateSubviewReferences()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/AspectRatioDialogLayout;Lcom/android/camera/exif/Rational;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/AspectRatioDialogLayout;
    .param p1, "x1"    # Lcom/android/camera/exif/Rational;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/widget/AspectRatioDialogLayout;->setAspectRatio(Lcom/android/camera/exif/Rational;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/AspectRatioDialogLayout;)Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/AspectRatioDialogLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mListener:Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/AspectRatioDialogLayout;)Lcom/android/camera/exif/Rational;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/AspectRatioDialogLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio:Lcom/android/camera/exif/Rational;

    return-object v0
.end method

.method private setAspectRatio(Lcom/android/camera/exif/Rational;)V
    .locals 4
    .param p1, "aspectRatio"    # Lcom/android/camera/exif/Rational;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio:Lcom/android/camera/exif/Rational;

    .line 110
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio:Lcom/android/camera/exif/Rational;

    sget-object v1, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/Rational;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio4x3Button:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio16x9Button:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio:Lcom/android/camera/exif/Rational;

    sget-object v1, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/Rational;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio16x9Button:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio4x3Button:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateSubviewReferences()V
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio4x3Button:Landroid/view/View;

    .line 78
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio16x9Button:Landroid/view/View;

    .line 79
    const v0, 0x7f0f00a3

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mConfirmButton:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio:Lcom/android/camera/exif/Rational;

    invoke-direct {p0, v0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->setAspectRatio(Lcom/android/camera/exif/Rational;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio4x3Button:Landroid/view/View;

    new-instance v1, Lcom/android/camera/widget/AspectRatioDialogLayout$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/AspectRatioDialogLayout$1;-><init>(Lcom/android/camera/widget/AspectRatioDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mAspectRatio16x9Button:Landroid/view/View;

    new-instance v1, Lcom/android/camera/widget/AspectRatioDialogLayout$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/AspectRatioDialogLayout$2;-><init>(Lcom/android/camera/widget/AspectRatioDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mConfirmButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/widget/AspectRatioDialogLayout$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/AspectRatioDialogLayout$3;-><init>(Lcom/android/camera/widget/AspectRatioDialogLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mLastOrientation:I

    if-ne v0, v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mLastOrientation:I

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->removeAllViews()V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001f

    invoke-static {v0, v1, p0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    invoke-direct {p0}, Lcom/android/camera/widget/AspectRatioDialogLayout;->updateSubviewReferences()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/widget/AspectRatioDialogLayout;->mListener:Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;

    .line 60
    return-void
.end method
