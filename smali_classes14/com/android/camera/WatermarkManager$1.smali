.class Lcom/android/camera/WatermarkManager$1;
.super Ljava/lang/Object;
.source "WatermarkManager.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WatermarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WatermarkManager;


# direct methods
.method constructor <init>(Lcom/android/camera/WatermarkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateBottomBarMargin(Landroid/graphics/RectF;)V
    .locals 11
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v8, 0x0

    .line 112
    iget-object v9, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v9}, Lcom/android/camera/WatermarkManager;->access$400(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CaptureLayoutHelper;

    move-result-object v9

    if-nez v9, :cond_0

    .line 113
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v9

    const-string v10, "Capture layout helper needs to be set first."

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v9, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v9}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v9

    invoke-virtual {v9, v8, v8, v8, v8}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setBottomBarMargin(IIII)V

    .line 139
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v9, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v9}, Lcom/android/camera/WatermarkManager;->access$400(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CaptureLayoutHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CaptureLayoutHelper;->shouldOverlayBottomBar()Z

    move-result v5

    .line 119
    .local v5, "overlay":Z
    iget v9, p1, Landroid/graphics/RectF;->top:F

    float-to-int v7, v9

    .line 120
    .local v7, "topMargin":I
    iget-object v9, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v9}, Lcom/android/camera/WatermarkManager;->access$400(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CaptureLayoutHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    .line 121
    invoke-static {v10}, Lcom/android/camera/WatermarkManager;->access$500(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CameraActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v10

    add-int v0, v9, v10

    .line 122
    .local v0, "bottomMargin":I
    iget-object v9, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v9}, Lcom/android/camera/WatermarkManager;->access$500(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getCurrentModuleIndex()I

    move-result v3

    .line 123
    .local v3, "moduleIndex":I
    iget-object v9, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v9}, Lcom/android/camera/WatermarkManager;->access$500(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 124
    .local v6, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 125
    .local v1, "moduleBottomMargin":I
    const/4 v4, 0x0

    .line 126
    .local v4, "moduleStartMargin":I
    const/4 v2, 0x0

    .line 127
    .local v2, "moduleEndMargin":I
    const v9, 0x7f0b0009

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-ne v3, v9, :cond_2

    .line 128
    const v9, 0x7f0900bc

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v1, v9

    .line 135
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v9}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v9

    if-eqz v5, :cond_4

    .end local v0    # "bottomMargin":I
    :goto_2
    add-int v8, v0, v1

    invoke-virtual {v9, v7, v8, v4, v2}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setBottomBarMargin(IIII)V

    goto :goto_0

    .line 129
    .restart local v0    # "bottomMargin":I
    :cond_2
    const v9, 0x7f0b000d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 130
    sget-boolean v9, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v9, :cond_3

    .line 131
    const v9, 0x7f0900a8

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 133
    :cond_3
    const v9, 0x7f0900a2

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_4
    move v0, v8

    .line 135
    goto :goto_2
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 90
    :cond_0
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "previewArea should be valid, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1, p1}, Lcom/android/camera/WatermarkManager;->access$102(Lcom/android/camera/WatermarkManager;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 94
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$300(Lcom/android/camera/WatermarkManager;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$300(Lcom/android/camera/WatermarkManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setPreviewArea(Landroid/graphics/RectF;)V

    .line 106
    iget-object v1, p0, Lcom/android/camera/WatermarkManager$1;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v1}, Lcom/android/camera/WatermarkManager;->access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/camera/WatermarkManager$1;->updateBottomBarMargin(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "mCameraRootView should not be null, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method
