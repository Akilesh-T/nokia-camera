.class public Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "WatermarkFragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBottomBarHeight:I

.field private mChild:Landroid/view/View;

.field private mChildCenterX:F

.field private mChildCenterY:F

.field private final mDeviceHeight:I

.field private mIsFirstTime:Z

.field private mLastOrientation:I

.field private mListener:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.FragmentLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    .line 18
    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mLastOrientation:I

    .line 21
    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    .line 22
    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mIsFirstTime:Z

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 42
    invoke-static {p1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mDeviceHeight:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090034

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mBottomBarHeight:I

    .line 44
    return-void

    .line 43
    :cond_0
    const v0, 0x7f090033

    goto :goto_0
.end method

.method private getWatermarkPagerRootRotation()V
    .locals 5

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 179
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "root":Landroid/view/View;
    const v3, 0x7f0f0226

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 180
    .local v2, "watermarkRoot":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v2    # "watermarkRoot":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;

    iget v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    invoke-interface {v3, v4}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;->onChildOrientationUpdate(I)V

    .line 190
    :cond_1
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private moveChildAccordingRotate(IIII)V
    .locals 11
    .param p1, "curOrientation"    # I
    .param p2, "lastOrientation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 82
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 84
    sget-object v8, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveChildAccordingRatate-lastOrientation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curOrientation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 87
    .local v1, "child_width":F
    iget-object v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 89
    .local v0, "child_height":F
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 90
    .local v3, "dy":F
    if-le p3, p4, :cond_6

    int-to-float v5, p4

    .line 91
    .local v5, "moreWidth":F
    :goto_1
    if-le p3, p4, :cond_7

    int-to-float v4, p3

    .line 92
    .local v4, "moreHeight":F
    :goto_2
    sparse-switch p2, :sswitch_data_0

    .line 110
    :goto_3
    sget-object v8, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastOrientation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget v6, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    .line 113
    .local v6, "newCenterX":F
    iget v7, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    .line 114
    .local v7, "newCenterY":F
    sparse-switch p1, :sswitch_data_1

    .line 132
    :goto_4
    sget-object v8, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "curOrientation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    sub-float v8, v6, v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 135
    const/high16 v8, 0x40000000    # 2.0f

    div-float v6, v1, v8

    .line 138
    :cond_2
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v0, v8

    sub-float v8, v7, v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 139
    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v0, v8

    .line 142
    :cond_3
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    add-float/2addr v8, v6

    int-to-float v9, p3

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 143
    int-to-float v8, p3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v6, v8, v9

    .line 146
    :cond_4
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v0, v8

    add-float/2addr v8, v7

    int-to-float v9, p4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 147
    int-to-float v8, p4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v7, v8, v9

    .line 152
    :cond_5
    iget-object v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v9, v6, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setX(F)V

    .line 153
    iget-object v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v9, v7, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 90
    .end local v4    # "moreHeight":F
    .end local v5    # "moreWidth":F
    .end local v6    # "newCenterX":F
    .end local v7    # "newCenterY":F
    :cond_6
    int-to-float v5, p3

    goto/16 :goto_1

    .line 91
    .restart local v5    # "moreWidth":F
    :cond_7
    int-to-float v4, p4

    goto/16 :goto_2

    .line 94
    .restart local v4    # "moreHeight":F
    :sswitch_0
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v2, v8, v9

    .line 95
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    sub-float v8, v4, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v3, v8, v9

    .line 96
    goto/16 :goto_3

    .line 98
    :sswitch_1
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    sub-float v8, v5, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v2, v8, v9

    .line 99
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v3, v8, v9

    .line 100
    goto/16 :goto_3

    .line 102
    :sswitch_2
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v2, v8, v9

    .line 103
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v3, v8, v9

    .line 104
    goto/16 :goto_3

    .line 106
    :sswitch_3
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    sub-float v8, v5, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v2, v8, v9

    .line 107
    iget v8, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    sub-float v8, v4, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v3, v8, v9

    goto/16 :goto_3

    .line 116
    .restart local v6    # "newCenterX":F
    .restart local v7    # "newCenterY":F
    :sswitch_4
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    add-float v6, v2, v8

    .line 117
    sub-float v8, v4, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v7, v8, v9

    .line 118
    goto/16 :goto_4

    .line 120
    :sswitch_5
    sub-float v8, v5, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v6, v8, v9

    .line 121
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v0, v8

    add-float v7, v3, v8

    .line 122
    goto/16 :goto_4

    .line 124
    :sswitch_6
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    add-float v6, v3, v8

    .line 125
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v0, v8

    add-float v7, v2, v8

    .line 126
    goto/16 :goto_4

    .line 128
    :sswitch_7
    sub-float v8, v4, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float v6, v8, v9

    .line 129
    sub-float v8, v5, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    sub-float v7, v8, v9

    goto/16 :goto_4

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 114
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method private updateChildCenter()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    .line 159
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    invoke-interface {v1, v2, v3}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;->onChildCenterUpdate(FF)V

    .line 165
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mIsFirstTime:Z

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    .line 167
    .local v0, "childY":F
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mDeviceHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mBottomBarHeight:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mBottomBarHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mBottomBarHeight:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 169
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 171
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mIsFirstTime:Z

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->getChildCount()I

    move-result v0

    .line 51
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    .line 54
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, -0x1

    .line 59
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 61
    sub-int v1, p4, p2

    .line 62
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 64
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChild:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 65
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    if-ne v2, v3, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->getWatermarkPagerRootRotation()V

    .line 67
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mLastOrientation:I

    if-eq v2, v3, :cond_0

    .line 68
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mLastOrientation:I

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->moveChildAccordingRotate(IIII)V

    .line 77
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->updateChildCenter()V

    .line 79
    :cond_1
    return-void

    .line 71
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    iput v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mLastOrientation:I

    .line 72
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->getWatermarkPagerRootRotation()V

    .line 73
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mLastOrientation:I

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    if-eq v2, v3, :cond_0

    .line 74
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mLastOrientation:I

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->moveChildAccordingRotate(IIII)V

    goto :goto_0
.end method

.method public setOnChildInfoUpdateListener(Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;

    .line 37
    return-void
.end method

.method public setPreviousChildInfo(IFF)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "childCenterX"    # F
    .param p3, "childCenterY"    # F

    .prologue
    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mOrientation:I

    .line 194
    iput p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mLastOrientation:I

    .line 195
    iput p2, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterX:F

    .line 196
    iput p3, p0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->mChildCenterY:F

    .line 199
    return-void
.end method
