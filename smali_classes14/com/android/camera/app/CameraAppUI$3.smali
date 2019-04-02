.class Lcom/android/camera/app/CameraAppUI$3;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyScreenShot()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 972
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    .line 973
    invoke-static {v3}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 972
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 974
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 975
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/16 v2, 0xff

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 976
    return-object v1
.end method

.method public getOriPreviewFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "downSampleFactor"    # I

    .prologue
    .line 962
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$400(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/CustomTextureView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 963
    :cond_0
    const/4 v0, 0x0

    .line 967
    :goto_0
    return-object v0

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/TextureViewHelper;->getOriPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 967
    .local v0, "preview":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getPreviewFrame(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "downSampleFactor"    # I

    .prologue
    const/4 v0, 0x0

    .line 914
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 915
    invoke-static {}, Lcom/android/camera/app/CameraAppUI;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "getPreviewFrame fail : mCameraRootView is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 924
    :goto_0
    return-object v0

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$400(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/CustomTextureView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 919
    invoke-static {}, Lcom/android/camera/app/CameraAppUI;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "getPreviewFrame fail : mTextureView is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/TextureViewHelper;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 924
    .local v0, "preview":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getPreviewOverlayAndControls()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 929
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    .line 930
    invoke-static {v3}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 929
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 931
    .local v1, "overlays":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 933
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$600(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;->draw(Landroid/graphics/Canvas;)V

    .line 934
    return-object v1
.end method

.method public getScreenShot(IZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "previewDownSampleFactor"    # I
    .param p2, "needBlur"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 939
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    .line 940
    invoke-static {v6}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 939
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 941
    .local v4, "screenshot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 942
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/16 v5, 0xff

    invoke-virtual {v0, v5, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 943
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/camera/TextureViewHelper;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 944
    .local v3, "previewsrc":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 945
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    const/16 v6, 0x19

    invoke-virtual {v5, v3, v6}, Lcom/android/camera/app/CameraAppUI;->getBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 946
    .local v2, "preview":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 947
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/TextureViewHelper;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v0, v2, v8, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 954
    .end local v2    # "preview":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/app/CameraAppUI$3;->getPreviewOverlayAndControls()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 955
    .local v1, "overlay":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 956
    invoke-virtual {v0, v1, v10, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 958
    :cond_1
    return-object v4

    .line 950
    .end local v1    # "overlay":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 951
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$3;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/TextureViewHelper;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v0, v3, v8, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
