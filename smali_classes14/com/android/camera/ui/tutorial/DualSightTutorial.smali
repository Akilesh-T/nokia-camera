.class public Lcom/android/camera/ui/tutorial/DualSightTutorial;
.super Lcom/android/camera/ui/AbstractTutorialOverlay;
.source "DualSightTutorial.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;
    }
.end annotation


# instance fields
.field private hintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppController:Lcom/android/camera/app/AppController;

.field private mCurrentIndex:I

.field private mHintContainer:Lcom/android/camera/ui/RotateLayout;

.field private mPageIndicatorView:Lcom/rd/PageIndicatorView;

.field private mTextViewHint:Landroid/widget/TextView;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(ILcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;)V
    .locals 1
    .param p1, "layoutResId"    # I
    .param p2, "closeListener"    # Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractTutorialOverlay;-><init>(ILcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mCurrentIndex:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "closeListener"    # Lcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;

    .prologue
    .line 39
    const v0, 0x7f040039

    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/tutorial/DualSightTutorial;-><init>(ILcom/android/camera/ui/AbstractTutorialOverlay$CloseListener;)V

    .line 40
    iput-object p1, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mAppController:Lcom/android/camera/app/AppController;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Lcom/rd/PageIndicatorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->hintList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mTextViewHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/tutorial/DualSightTutorial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/tutorial/DualSightTutorial;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/tutorial/DualSightTutorial;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewList:Ljava/util/List;

    return-object v0
.end method

.method private createImgView(I)Landroid/view/View;
    .locals 4
    .param p1, "resid"    # I

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040036

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p0}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 109
    invoke-super {p0}, Lcom/android/camera/ui/AbstractTutorialOverlay;->close()V

    .line 110
    return-void
.end method

.method protected onInflated(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    const v2, 0x7f0f0100

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mHintContainer:Lcom/android/camera/ui/RotateLayout;

    .line 57
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mHintContainer:Lcom/android/camera/ui/RotateLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 58
    const v2, 0x7f0f0101

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mTextViewHint:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0f0102

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 61
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const v2, 0x7f0f0103

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/android/camera/ui/tutorial/DualSightTutorial$1;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/ui/tutorial/DualSightTutorial$1;-><init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2, p0}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewList:Ljava/util/List;

    .line 73
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewList:Ljava/util/List;

    const v3, 0x7f02024a

    invoke-direct {p0, v3}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->createImgView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewList:Ljava/util/List;

    const v3, 0x7f0202b0

    invoke-direct {p0, v3}, Lcom/android/camera/ui/tutorial/DualSightTutorial;->createImgView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->hintList:Ljava/util/List;

    .line 77
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->hintList:Ljava/util/List;

    const v3, 0x7f080070

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->hintList:Ljava/util/List;

    const v3, 0x7f080071

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const v2, 0x7f0f00ff

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 81
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ui/tutorial/DualSightTutorial$TutorialPageAdapter;-><init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;Lcom/android/camera/ui/tutorial/DualSightTutorial$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 83
    const v2, 0x7f0f0104

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rd/PageIndicatorView;

    iput-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    iget-object v3, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/rd/PageIndicatorView;->setCount(I)V

    .line 85
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    iget v3, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    .line 86
    iget-object v3, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mTextViewHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->hintList:Ljava/util/List;

    iget v4, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mCurrentIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/tutorial/DualSightTutorial$2;-><init>(Lcom/android/camera/ui/tutorial/DualSightTutorial;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 104
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mHintContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mHintContainer:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const v4, 0x7f0f00ed

    .line 124
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 125
    .local v0, "imgView1":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mViewList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    .local v1, "imgView2":Landroid/widget/ImageView;
    sparse-switch p1, :sswitch_data_0

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 141
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 143
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mHintContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/camera/ui/tutorial/DualSightTutorial;->mHintContainer:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 146
    :cond_1
    return-void

    .line 129
    :sswitch_0
    if-eqz v0, :cond_2

    const v2, 0x7f02024a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    :cond_2
    if-eqz v1, :cond_0

    const v2, 0x7f0202b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 135
    :sswitch_1
    if-eqz v0, :cond_3

    const v2, 0x7f020249

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :cond_3
    if-eqz v1, :cond_0

    const v2, 0x7f0202af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method
