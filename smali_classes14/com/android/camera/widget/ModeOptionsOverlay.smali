.class public Lcom/android/camera/widget/ModeOptionsOverlay;
.super Landroid/widget/FrameLayout;
.source "ModeOptionsOverlay.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# static fields
.field private static final BOTTOMBAR_OPTIONS_TIMEOUT_MS:I = 0x7d0

.field private static final BOTTOM_RIGHT:I = 0x55

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TOP_RIGHT:I = 0x35


# instance fields
.field private mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mModeOptions:Lcom/android/camera/widget/ModeOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ModeOptionsOverlay"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/widget/ModeOptionsOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 59
    return-void
.end method

.method private checkOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    .line 165
    if-ne v0, p1, :cond_0

    .line 167
    .local v0, "isPortrait":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptionsOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900cc

    .line 168
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 170
    .local v1, "modeOptionsDimension":I
    iget-object v3, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    .line 171
    invoke-virtual {v3}, Lcom/android/camera/widget/ModeOptions;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .local v2, "modeOptionsParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 174
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 175
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 176
    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModeOptionsOverlay;->requestLayout()V

    .line 184
    return-void

    .line 165
    .end local v0    # "isPortrait":Z
    .end local v1    # "modeOptionsDimension":I
    .end local v2    # "modeOptionsParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    .restart local v0    # "isPortrait":Z
    .restart local v1    # "modeOptionsDimension":I
    .restart local v2    # "modeOptionsParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 179
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 180
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method


# virtual methods
.method public closeModeOptions()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public getModeOptionsToggleWidth()F
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isModeOptionsHidden()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v0}, Lcom/android/camera/widget/ModeOptions;->isHiddenOrHiding()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f0f018f

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ModeOptionsOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ModeOptions;

    iput-object v0, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    .line 98
    return-void
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 147
    iget-object v1, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v1, :cond_0

    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 149
    sget-object v1, Lcom/android/camera/widget/ModeOptionsOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Capture layout helper needs to be set first."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v1}, Lcom/android/camera/CaptureLayoutHelper;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 153
    .local v0, "fullscreenRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 152
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 154
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 152
    invoke-super {p0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onPreviewTouched(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 118
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 0
    .param p1, "swiped"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 113
    return-void
.end method

.method public setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 81
    return-void
.end method

.method public setModeOptionsListener(Lcom/android/camera/widget/ModeOptions$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/widget/ModeOptions$Listener;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptionsOverlay;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ModeOptions;->setListener(Lcom/android/camera/widget/ModeOptions$Listener;)V

    .line 93
    return-void
.end method

.method public setToggleClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 84
    return-void
.end method
