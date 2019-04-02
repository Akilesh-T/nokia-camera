.class public Lcom/android/camera/ui/operation/ModeSelectorItemOperation;
.super Landroid/widget/FrameLayout;
.source "ModeSelectorItemOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;,
        Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;
    }
.end annotation


# instance fields
.field public mListener:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

.field private mModeConfig:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;

.field private mModeId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->mListener:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

    .line 41
    return-void
.end method


# virtual methods
.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconCenterLocationInWindow([I)V
    .locals 0
    .param p1, "loc"    # [I

    .prologue
    .line 132
    return-void
.end method

.method public getIconDrawableClone()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconDrawableSize()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxVisibleWidth()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getModeConfig()Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->mModeConfig:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;

    return-object v0
.end method

.method public getModeId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->mModeId:I

    return v0
.end method

.method public getVisibleWidth()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 71
    return-void
.end method

.method public onSwipeModeChanged(Z)V
    .locals 0
    .param p1, "swipeIn"    # Z

    .prologue
    .line 64
    return-void
.end method

.method public setDefaultBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 43
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0
    .param p1, "highlightColor"    # I

    .prologue
    .line 110
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resource"    # I

    .prologue
    .line 83
    return-void
.end method

.method public setModeConfig(Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->mModeConfig:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;

    .line 183
    return-void
.end method

.method public setModeId(I)V
    .locals 0
    .param p1, "modeId"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->mModeId:I

    .line 141
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 54
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 160
    return-void
.end method

.method public setVisibleWidth(I)V
    .locals 0
    .param p1, "newWidth"    # I

    .prologue
    .line 93
    return-void
.end method

.method public setVisibleWidthChangedListener(Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->mListener:Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;

    .line 51
    return-void
.end method
