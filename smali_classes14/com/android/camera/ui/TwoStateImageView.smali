.class public Lcom/android/camera/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f


# instance fields
.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 32
    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 56
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    goto :goto_0
.end method
