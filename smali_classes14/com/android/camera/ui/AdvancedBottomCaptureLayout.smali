.class public Lcom/android/camera/ui/AdvancedBottomCaptureLayout;
.super Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;
.source "AdvancedBottomCaptureLayout.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBottomBar:Landroid/view/View;

.field private mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AdvBotCapLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0f019f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ModeOptionsOverlay;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    .line 56
    const v0, 0x7f0f020e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->mBottomBar:Landroid/view/View;

    .line 57
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v2, :cond_0

    .line 62
    sget-object v2, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Capture layout helper needs to be set first."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v2}, Lcom/android/camera/CaptureLayoutHelper;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 67
    .local v1, "fullPreviewRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->mModeOptionsOverlay:Lcom/android/camera/widget/ModeOptionsOverlay;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/widget/ModeOptionsOverlay;->layout(IIII)V

    .line 71
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v2}, Lcom/android/camera/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 72
    .local v0, "bottomBarRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedBottomCaptureLayout;->mBottomBar:Landroid/view/View;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method
