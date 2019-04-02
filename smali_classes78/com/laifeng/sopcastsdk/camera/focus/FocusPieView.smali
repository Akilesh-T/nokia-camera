.class public Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;
.super Landroid/widget/ImageView;
.source "FocusPieView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private applyFocusPoint()V
    .locals 15

    .prologue
    const/high16 v14, 0x43fa0000    # 500.0f

    const/high16 v13, 0x447a0000    # 1000.0f

    const/high16 v12, 0x40000000    # 2.0f

    .line 65
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 67
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;

    move-result-object v0

    .line 69
    .local v0, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isLandscape()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    iget v2, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    .line 74
    .local v2, "cameraWidth":I
    iget v1, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    .line 80
    .local v1, "cameraHeight":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v2

    div-float v5, v9, v10

    .line 81
    .local v5, "hRatio":F
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v1

    div-float v8, v9, v10

    .line 86
    .local v8, "vRatio":F
    cmpl-float v9, v5, v8

    if-lez v9, :cond_4

    .line 87
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 88
    int-to-float v9, v1

    mul-float/2addr v9, v5

    float-to-int v1, v9

    .line 89
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    sub-int v9, v1, v9

    div-int/lit8 v6, v9, 0x2

    .line 91
    .local v6, "margin":I
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isLandscape()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float v3, v9, v10

    .line 94
    .local v3, "centerPointX":F
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    int-to-float v10, v6

    add-float v4, v9, v10

    .line 96
    .local v4, "centerPointY":F
    int-to-float v9, v2

    div-float v9, v13, v9

    mul-float/2addr v3, v9

    .line 97
    int-to-float v9, v1

    div-float v9, v13, v9

    mul-float/2addr v4, v9

    .line 128
    :goto_2
    sub-float v9, v3, v14

    mul-float v3, v9, v12

    .line 129
    sub-float v9, v4, v14

    mul-float v4, v9, v12

    .line 133
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v9

    float-to-int v10, v3

    float-to-int v11, v4

    invoke-virtual {v9, v10, v11}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->setFocusPoint(II)V

    goto :goto_0

    .line 76
    .end local v1    # "cameraHeight":I
    .end local v2    # "cameraWidth":I
    .end local v3    # "centerPointX":F
    .end local v4    # "centerPointY":F
    .end local v5    # "hRatio":F
    .end local v6    # "margin":I
    .end local v8    # "vRatio":F
    :cond_2
    iget v2, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    .line 77
    .restart local v2    # "cameraWidth":I
    iget v1, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    .restart local v1    # "cameraHeight":I
    goto :goto_1

    .line 100
    .restart local v5    # "hRatio":F
    .restart local v6    # "margin":I
    .restart local v8    # "vRatio":F
    :cond_3
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    int-to-float v10, v6

    add-float v3, v9, v10

    .line 101
    .restart local v3    # "centerPointX":F
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    sub-float v4, v9, v10

    .line 103
    .restart local v4    # "centerPointY":F
    int-to-float v9, v1

    div-float v9, v13, v9

    mul-float/2addr v3, v9

    .line 104
    int-to-float v9, v2

    div-float v9, v13, v9

    mul-float/2addr v4, v9

    goto :goto_2

    .line 107
    .end local v3    # "centerPointX":F
    .end local v4    # "centerPointY":F
    .end local v6    # "margin":I
    :cond_4
    int-to-float v9, v2

    mul-float/2addr v9, v8

    float-to-int v2, v9

    .line 108
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 109
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    sub-int v9, v2, v9

    div-int/lit8 v6, v9, 0x2

    .line 111
    .restart local v6    # "margin":I
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isLandscape()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 113
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    int-to-float v10, v6

    add-float v3, v9, v10

    .line 114
    .restart local v3    # "centerPointX":F
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float v4, v9, v10

    .line 116
    .restart local v4    # "centerPointY":F
    int-to-float v9, v2

    div-float v9, v13, v9

    mul-float/2addr v3, v9

    .line 117
    int-to-float v9, v1

    div-float v9, v13, v9

    mul-float/2addr v4, v9

    goto :goto_2

    .line 120
    .end local v3    # "centerPointX":F
    .end local v4    # "centerPointY":F
    :cond_5
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float v3, v9, v10

    .line 121
    .restart local v3    # "centerPointX":F
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    int-to-float v10, v6

    add-float v4, v9, v10

    .line 123
    .restart local v4    # "centerPointY":F
    int-to-float v9, v1

    div-float v9, v13, v9

    mul-float/2addr v3, v9

    .line 124
    int-to-float v9, v2

    div-float v9, v13, v9

    mul-float/2addr v4, v9

    goto/16 :goto_2
.end method


# virtual methods
.method public animateWorking(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 139
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setFocusImage(Z)V

    .line 35
    return-void
.end method

.method public resetPosition()V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setPosition(FF)V

    goto :goto_0
.end method

.method public setFocusImage(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    sget v0, Lcom/laifeng/sopcastsdk/R$drawable;->camera_focus_ring_success:I

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setImageResource(I)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    sget v0, Lcom/laifeng/sopcastsdk/R$drawable;->camera_focus_ring_fail:I

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 53
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setX(F)V

    .line 54
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setY(F)V

    .line 55
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->applyFocusPoint()V

    .line 56
    return-void
.end method
