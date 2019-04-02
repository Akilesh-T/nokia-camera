.class public abstract Lcom/android/camera/widget/AnimationEffects;
.super Ljava/lang/Object;
.source "AnimationEffects.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAnimation()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    return-void
.end method

.method public abstract drawForeground(Landroid/graphics/Canvas;)V
.end method

.method public abstract endAnimation()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setSize(II)V
.end method

.method public shouldDrawSuper()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public abstract startAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end method
