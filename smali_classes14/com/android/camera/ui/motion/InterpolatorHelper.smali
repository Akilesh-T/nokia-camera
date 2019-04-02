.class public Lcom/android/camera/ui/motion/InterpolatorHelper;
.super Ljava/lang/Object;
.source "InterpolatorHelper.java"


# static fields
.field private static LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinearOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 43
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const v0, 0x10c000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 43
    :goto_1
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method
