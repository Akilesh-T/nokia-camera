.class public Lcom/android/camera/ui/motion/DynamicAnimator;
.super Ljava/lang/Object;
.source "DynamicAnimator.java"

# interfaces
.implements Lcom/android/camera/ui/motion/Invalidator;


# instance fields
.field public final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/motion/DynamicAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/camera/ui/motion/AnimationClock;

.field private mDrawTimeMillis:J

.field private final mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

.field private mIsDrawing:Z

.field private mLastDrawTimeMillis:J

.field private mUpdateRequested:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/motion/Invalidator;Lcom/android/camera/ui/motion/AnimationClock;)V
    .locals 4
    .param p1, "invalidator"    # Lcom/android/camera/ui/motion/Invalidator;
    .param p2, "clock"    # Lcom/android/camera/ui/motion/AnimationClock;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    .line 37
    iput-boolean v1, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mUpdateRequested:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mIsDrawing:Z

    .line 39
    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    .line 40
    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mDrawTimeMillis:J

    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

    .line 44
    iput-object p2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mClock:Lcom/android/camera/ui/motion/AnimationClock;

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mIsDrawing:Z

    .line 49
    iput-boolean v8, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mUpdateRequested:Z

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mClock:Lcom/android/camera/ui/motion/AnimationClock;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/AnimationClock;->getTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mDrawTimeMillis:J

    .line 53
    iget-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    .line 54
    iget-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mDrawTimeMillis:J

    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    .line 57
    :cond_0
    iget-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mDrawTimeMillis:J

    iget-wide v6, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    sub-long v4, v2, v6

    .line 58
    .local v4, "dt":J
    iget-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mDrawTimeMillis:J

    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/motion/DynamicAnimation;

    .line 62
    .local v1, "renderer":Lcom/android/camera/ui/motion/DynamicAnimation;
    invoke-interface {v1}, Lcom/android/camera/ui/motion/DynamicAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mDrawTimeMillis:J

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/motion/DynamicAnimation;->draw(JJLandroid/graphics/Canvas;)V

    goto :goto_0

    .line 70
    .end local v1    # "renderer":Lcom/android/camera/ui/motion/DynamicAnimation;
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mUpdateRequested:Z

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v0}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 76
    :goto_1
    iput-boolean v8, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mIsDrawing:Z

    .line 77
    return-void

    .line 73
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    goto :goto_1
.end method

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mIsDrawing:Z

    if-eqz v0, :cond_0

    .line 107
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mDrawTimeMillis:J

    .line 114
    :goto_0
    return-wide v0

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mUpdateRequested:Z

    if-eqz v0, :cond_1

    .line 111
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mClock:Lcom/android/camera/ui/motion/AnimationClock;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/AnimationClock;->getTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mIsDrawing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mUpdateRequested:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mInvalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v0}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mClock:Lcom/android/camera/ui/motion/AnimationClock;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/AnimationClock;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mLastDrawTimeMillis:J

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->mUpdateRequested:Z

    .line 94
    return-void
.end method
