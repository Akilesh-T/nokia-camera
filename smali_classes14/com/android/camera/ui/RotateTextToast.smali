.class public Lcom/android/camera/ui/RotateTextToast;
.super Ljava/lang/Object;
.source "RotateTextToast.java"


# static fields
.field public static final ALWAYS_SHOW:I = -0x1

.field private static MARGIN_BOTTOM_IN_PX:I = 0x0

.field private static MARGIN_EXTRA:I = 0x0

.field private static MARGIN_HORIZONTAL_IN_PX:I = 0x0

.field private static final MSG_CANCEL:I = 0x0

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TOAST_DURATION:I = 0x1388


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mBottomMargin:I

.field mHandler:Landroid/os/Handler;

.field mLayoutRoot:Landroid/view/ViewGroup;

.field mMessage:Landroid/widget/TextView;

.field private mOrientation:I

.field private final mRunnable:Ljava/lang/Runnable;

.field mToast:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "RotateTextToast"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/RotateTextToast;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 37
    sput v2, Lcom/android/camera/ui/RotateTextToast;->MARGIN_BOTTOM_IN_PX:I

    .line 38
    sput v2, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    .line 39
    sput v2, Lcom/android/camera/ui/RotateTextToast;->MARGIN_EXTRA:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "textResource"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v4, p0, Lcom/android/camera/ui/RotateTextToast;->mBottomMargin:I

    .line 82
    new-instance v2, Lcom/android/camera/ui/RotateTextToast$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/RotateTextToast$2;-><init>(Lcom/android/camera/ui/RotateTextToast;)V

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/camera/ui/RotateTextToast;->MARGIN_BOTTOM_IN_PX:I

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iput-object p1, p0, Lcom/android/camera/ui/RotateTextToast;->mActivity:Landroid/app/Activity;

    .line 57
    const v2, 0x7f040080

    iget-object v3, p0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0f01f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    .line 59
    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const v3, 0x7f0f009a

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mMessage:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    const/4 p3, 0x0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, p3, v4}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 63
    new-instance v2, Lcom/android/camera/ui/RotateTextToast$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/RotateTextToast$1;-><init>(Lcom/android/camera/ui/RotateTextToast;)V

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    .line 78
    iput p3, p0, Lcom/android/camera/ui/RotateTextToast;->mOrientation:I

    .line 79
    iput v4, p0, Lcom/android/camera/ui/RotateTextToast;->mBottomMargin:I

    .line 80
    return-void
.end method

.method private removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 165
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 166
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 167
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 168
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 169
    return-void
.end method


# virtual methods
.method public removeExistToast()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 172
    iget v0, p0, Lcom/android/camera/ui/RotateTextToast;->mOrientation:I

    if-ne v0, p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateTextToast;->mOrientation:I

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextToast;->showInBottom()V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextToast;->showInBottom()V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method public showInBottom()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xe

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mMessage:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_EXTRA:I

    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    .local v0, "viewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    invoke-direct {p0, v0}, Lcom/android/camera/ui/RotateTextToast;->removeRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 125
    iget v1, p0, Lcom/android/camera/ui/RotateTextToast;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 161
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 127
    :sswitch_0
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_BOTTOM_IN_PX:I

    sget v2, Lcom/android/camera/ui/RotateTextToast;->MARGIN_EXTRA:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 128
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 131
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 135
    :sswitch_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_BOTTOM_IN_PX:I

    sget v2, Lcom/android/camera/ui/RotateTextToast;->MARGIN_EXTRA:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 138
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 139
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 143
    :sswitch_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_BOTTOM_IN_PX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 146
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 147
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 150
    :sswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_BOTTOM_IN_PX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 153
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 154
    sget v1, Lcom/android/camera/ui/RotateTextToast;->MARGIN_HORIZONTAL_IN_PX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public showInTime(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextToast;->showInBottom()V

    .line 104
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_0
    return-void
.end method

.method public showInTime(II)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 109
    iput p2, p0, Lcom/android/camera/ui/RotateTextToast;->mBottomMargin:I

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 111
    return-void
.end method
