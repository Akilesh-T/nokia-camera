.class public Lcom/android/camera/ui/BarcodeRotateLayout;
.super Landroid/widget/FrameLayout;
.source "BarcodeRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;,
        Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;
    }
.end annotation


# static fields
.field private static BARCODE_MARGIN_VERTICAL_IN_DP:I

.field private static MARGIN_HORIZONTAL_IN_DP:I

.field private static MARGIN_VERTICAL_IN_DP:I

.field private static MARGIN_WATERMARK_IN_DP:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBarCodeContent:Landroid/widget/TextView;

.field private mBarCodeLayout:Landroid/view/View;

.field private mBarCodeLayoutHeight:I

.field private mBarCodeSecondAction:Landroid/widget/TextView;

.field private mBarCodeThirdAction:Landroid/widget/TextView;

.field private mBarCodeTitle:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;

.field private mHideRunnale:Ljava/lang/Runnable;

.field private mOnBarcodeUIChangeListener:Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

.field private mOrientation:I

.field private mSceneDetectionRoot:Landroid/view/View;

.field private mWatermarkShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BarcodeRotateLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/BarcodeRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 442
    new-instance v1, Lcom/android/camera/ui/BarcodeRotateLayout$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BarcodeRotateLayout$4;-><init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V

    iput-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mHideRunnale:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mContext:Landroid/content/Context;

    .line 86
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/BarcodeRotateLayout;->setBackgroundResource(I)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/BarcodeRotateLayout;->MARGIN_HORIZONTAL_IN_DP:I

    .line 89
    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/BarcodeRotateLayout;->MARGIN_VERTICAL_IN_DP:I

    .line 90
    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/BarcodeRotateLayout;->BARCODE_MARGIN_VERTICAL_IN_DP:I

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lcom/android/camera/ui/BarcodeRotateLayout;->MARGIN_WATERMARK_IN_DP:I

    .line 92
    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayoutHeight:I

    .line 93
    new-instance v1, Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;-><init>(Lcom/android/camera/ui/BarcodeRotateLayout;Lcom/android/camera/ui/BarcodeRotateLayout$1;)V

    iput-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mGestureListener:Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;

    .line 94
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mGestureListener:Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/BarcodeRotateLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mHideRunnale:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/BarcodeRotateLayout;)Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOnBarcodeUIChangeListener:Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeSecondAction:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeThirdAction:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/BarcodeRotateLayout;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/ui/BarcodeRotateLayout;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    return-object v0
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 454
    :goto_0
    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 110
    const v0, 0x7f0f01f2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 113
    const v0, 0x7f0f01f3

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    .line 114
    const v0, 0x7f0f01f5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeTitle:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0f01f7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeContent:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0f01f9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeThirdAction:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0f01f8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeSecondAction:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    new-instance v1, Lcom/android/camera/ui/BarcodeRotateLayout$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BarcodeRotateLayout$1;-><init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "change"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 463
    sub-int v1, p4, p2

    .line 464
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 465
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 476
    :goto_0
    return-void

    .line 468
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 472
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 465
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 480
    const/4 v1, 0x0

    .local v1, "w":I
    const/4 v0, 0x0

    .line 481
    .local v0, "h":I
    iget v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 495
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->setMeasuredDimension(II)V

    .line 497
    iget v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 515
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 517
    return-void

    .line 484
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/camera/ui/BarcodeRotateLayout;->measureChild(Landroid/view/View;II)V

    .line 485
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 486
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 487
    goto :goto_0

    .line 490
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/camera/ui/BarcodeRotateLayout;->measureChild(Landroid/view/View;II)V

    .line 491
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 492
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 499
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 500
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 503
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 504
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 507
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 508
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 511
    :sswitch_5
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 512
    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mSceneDetectionRoot:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 497
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/BarcodeRotateLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/BarcodeRotateLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mHideRunnale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setOnBarcodeUIChangeListener(Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOnBarcodeUIChangeListener:Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

    .line 81
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 520
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation-mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    rem-int/lit16 p1, p1, 0x168

    .line 522
    iget v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    .line 524
    iget-boolean v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mWatermarkShow:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->updateSceneMargin(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/android/camera/ui/BarcodeRotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method public startHideAnimation()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 405
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 407
    iget v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_1

    .line 408
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    aput v4, v3, v5

    iget v4, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayoutHeight:I

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 412
    .local v0, "anim":Landroid/animation/Animator;
    :goto_0
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 413
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 414
    new-instance v1, Lcom/android/camera/ui/BarcodeRotateLayout$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BarcodeRotateLayout$3;-><init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 440
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    aput v4, v3, v5

    iget v4, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayoutHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/Animator;
    goto :goto_0
.end method

.method public startShowAnimation()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 386
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOnBarcodeUIChangeListener:Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOnBarcodeUIChangeListener:Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

    invoke-interface {v1}, Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;->onBarcodeUIShow()V

    .line 392
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 393
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayoutHeight:I

    int-to-float v4, v4

    aput v4, v3, v5

    aput v6, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 397
    .local v0, "anim":Landroid/animation/Animator;
    :goto_0
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 398
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 399
    invoke-virtual {p0}, Lcom/android/camera/ui/BarcodeRotateLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mHideRunnale:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 402
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-void

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayoutHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    aput v6, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/Animator;
    goto :goto_0
.end method

.method public updateBarCodeText(Lcom/android/camera/barcode/BarCodeResult;)V
    .locals 4
    .param p1, "data"    # Lcom/android/camera/barcode/BarCodeResult;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/BarcodeRotateLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/BarcodeRotateLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/BarcodeRotateLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/BarcodeRotateLayout$2;-><init>(Lcom/android/camera/ui/BarcodeRotateLayout;Lcom/android/camera/barcode/BarCodeResult;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateSceneMargin(Z)V
    .locals 5
    .param p1, "watermarkShow"    # Z

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 529
    iput-boolean p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mWatermarkShow:Z

    .line 530
    iget v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 532
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 534
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/BarcodeRotateLayout;->BARCODE_MARGIN_VERTICAL_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 535
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 536
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 537
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 538
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 543
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 545
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 546
    sget v1, Lcom/android/camera/ui/BarcodeRotateLayout;->BARCODE_MARGIN_VERTICAL_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 547
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 548
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 549
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 554
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 556
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/BarcodeRotateLayout;->BARCODE_MARGIN_VERTICAL_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 557
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 558
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 559
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 560
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 564
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 566
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/android/camera/ui/BarcodeRotateLayout;->BARCODE_MARGIN_VERTICAL_IN_DP:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 567
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 568
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 569
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 570
    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 530
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
