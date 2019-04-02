.class Lcom/android/camera/DualSightPhotoModule$14$3$2;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$14$3;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightPhotoModule$14$3;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$14$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightPhotoModule$14$3;

    .prologue
    .line 2279
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewFlipped()V

    .line 2313
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V

    .line 2298
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 2318
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2323
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewStatusListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 2333
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$2;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewStatusListener;->shouldAutoAdjustTransformMatrixOnLayout()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 2307
    const/4 v0, 0x1

    return v0
.end method
